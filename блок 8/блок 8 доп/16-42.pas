{$mode TP}
{$codepage UTF-8}
{$R+,B+,X-}
program T_16_42(input, output);
uses heaptrc;
type
    TE = packed array[1..15] of char;
    list = ^node;
    node = record
        elem: TE;
        next: list
    end;
var
    L: list;
    f: text;
    n, k: integer;

procedure create(var L: list; var f: text; var n: integer);
var
    c: char;
    st: TE;
    i, j: integer;

    procedure ins(var L: list; E: TE);
    var 
        p, q: list;
    begin
        if L = nil then begin
            new(L);
            L^.elem := E;
            L^.next := L
        end else begin
            p := L;
            while p^.next <> L do
                p := p^.next;
            new(q);
            q^.elem := E;
            q^.next := L;
            p^.next := q
        end
    end;

begin
    reset(f);
    n := 0;
    L := nil;
    while not eof(f) do begin
        i := 1;
        while not eoln(f) do begin
            read(f, c);
            st[i] := c;
            i := i + 1;
        end;
        readln(f);
        n := n + 1;
        for j := i to 15 do
            st[j] := ' ';
        ins(L, st)
    end;
    close(f);
end;

procedure print(L: list);
var 
    p: list;
begin
    p := L;
    writeln(p^.elem);
    while p^.next <> L do begin
        p := p^.next;
        writeln(p^.elem);
    end;
    writeln('count = ', n)
end;

procedure delete(var L: list; k: integer);
var 
    i, d: integer;
    p: list;
begin
    while n > 1 do begin
        d := k;
        d := d mod n + n;
        for i := 2 to d - 1 do
            L := L^.next;
        writeln(L^.next^.elem);
        p := L^.next^.next;
        dispose(L^.next);
        L^.next := p;
        L := L^.next;
        n := n - 1
    end;
    writeln(L^.elem);
    dispose(L);
    L := nil
end;

begin
    writeln('Zyanchurin Igor, 110 group, 16-42');
    assign(f, 'friends.txt');
    create(L, f, n);
    print(L);
    write('k = ');
    readln(k);
    delete(L, k);
    writeln('done...')
end.
