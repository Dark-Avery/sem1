{$mode TP}
{$codepage UTF-8}
{$R+,B+,X-}
program T_1(input, output);
uses heaptrc;
type
    TE = char;
    list = ^node;
    node = record
        elem: TE;
        next: list
    end;
var
    L: list;
    f1, f2: text;
    ok: boolean;

procedure create(var L: list; var ok: boolean);
var
    c: TE;
    p: list;
    i: integer;
begin
    L := nil;
    i := 0;
    while not eoln(f1) do begin
        read(f1, c);
        new(p);
        p^.elem := c;
        p^.next := L;
        L := p;
        i := i + 1
    end;
    ok := (i >= 2) and ((ord(c) - ord('0')) mod 2 = 1) and (c in ['0'..'9'])
end;

procedure move(L: list);
begin
    if L <> nil then begin
        move(L^.next);
        write(f2, L^.elem)
    end
end;

procedure destroy(var L: list);
var
    p: list;
begin
    if L <> nil then begin
        p := L;
        L := L^.next;
        dispose(p);
        destroy(L)
    end
end;

begin
    writeln('Zyanchurin Igor, 110 group, 8-1');
    assign(f1, 'file1.txt');
    assign(f2, 'file2.txt');
    reset(f1);
    rewrite(f2);
    while not eof(f1) do begin
        if not eoln(f1) then begin
            create(L, ok);
            if ok then begin
                move(L);
                writeln(f2)
            end;
            destroy(L)
        end;
        readln(f1)
    end;
    close(f1);
    close(f2);
    writeln('done...')
end.