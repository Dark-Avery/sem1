{$mode TP}
{$codepage UTF-8}
{$R+,B+,X-}
program T_1(input, output);
uses heaptrc;
type
    TE = packed array [1..6] of char;
    list = ^node;
    node = record
        elem: TE;
        met: integer;
        next: list
    end;
var
    all: array [1..6] of list;

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

procedure print;
var 
    i, k: integer;
    p: list;
begin
    k := 0;
    for i := 1 to 6 do begin
        p := all[i];
        if p = nil then
            writeln('0 met ', i, ' letter words')
        else begin
            writeln(i, ' letter words:');
            while p <> nil do begin
                writeln(p^.elem, ' met ', p^.met);
                k := k + p^.met;
                p := p^.next
            end; 
            destroy(all[i])
        end;
        writeln
    end;
    writeln('word count ', k)
end;

procedure inall(var all: list; E: TE);
var 
    p: list;
begin
    if all = nil then begin
        new(all);
        all^.elem := E;
        all^.met := 1;
        all^.next := nil
    end else if E = all^.elem then
        all^.met := all^.met + 1
    else if E > all^.elem then
        inall(all^.next, E)
    else begin
        new(p);
        p^.elem := E;
        p^.met := 1;
        p^.next := all;
        all := p
    end
end;

procedure inputl;
var
    c: char;
    i, j: integer;
    st: TE;
begin
    read(c);
    while c <> '.' do begin
        i := 0;
        while (c <> '.') and (c <> ',') do begin
            i := i + 1;
            st[i] := c;
            read(c)
        end;
        if c = ',' then
            read(c);
        for j := i + 1 to 6 do
            st[j] := ' ';
        inall(all[i], st)
    end;
end;

begin
    writeln('Zyanchurin Igor, 110 group, 8-1');
    inputl;
    print;
    writeln('done...')
end.