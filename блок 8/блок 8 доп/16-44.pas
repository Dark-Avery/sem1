{$mode TP}
{$codepage UTF-8}
{$R+,B+,X-}
program T_16_44(input, output);
uses heaptrc;
type
    TE = char;
    list2 = ^node2;
    node2 = record
        elem: TE;
        next, prev: list2
    end;
var
    f, ans: text;

procedure del(L: list2);
begin
    if L^.next <> nil then
        L^.next^.prev := L^.prev;
    if L^.prev <> nil then
        L^.prev^.next := L^.next;
    dispose(L);
end;

procedure clear(var L: list2);
var 
    p: list2;
    ok: boolean;
begin
    if L^.next <> nil then begin
        ok := L^.next^.elem = '#';
        while ok do begin
            if (L^.next = L^.prev) and (L^.next^.elem = '#') then begin
                dispose(L^.next);
                L^.next := nil;
                L^.prev := nil
            end else if L^.next^.elem = '#' then begin
                p := L^.next^.next;
                p^.prev := nil;
                dispose(L^.next);
                L^.next := p
            end;
            if L^.next <> nil then
                ok := L^.next^.elem = '#'
            else
                ok := false;
        end;
        p := L^.next;
        while (p <> nil) and (L^.next <> nil) do
            if p^.elem = '#' then begin
                if p^.prev <> nil then
                    del(p^.prev);
                if p^.next <> nil then begin
                    p := p^.next;
                    del(p^.prev);
                end else if p^.prev = nil then begin
                    dispose(p);
                    L^.next := nil;
                    L^.prev := nil
                end else begin
                    p := p^.prev;
                    del(p^.next);
                end
            end else
                p := p^.next
    end
end;

procedure ins(var L: list2; E: TE);
var 
    p: list2;
begin
    new(p);
    p^.prev := L^.prev;
    P^.next := nil;
    if p^.prev <> nil then
        p^.prev^.next := p;
    L^.prev := p;
    if L^.next = nil then
        L^.next := p;
    p^.elem := E;
end;

procedure move(L: list2; var ans: text);
var
    p: list2;
begin
    if L^.next <> nil then begin
        while L^.next <> nil do begin
            write(ans, L^.next^.elem);
            if L^.next = L^.prev then begin
                dispose(L^.next);
                L^.next := nil;
                L^.prev := nil
            end else begin
                p := L^.next^.next;
                p^.prev := nil;
                dispose(L^.next);
                L^.next := p
            end;
        end;
        writeln(ans)
    end
end;

procedure main(var f, ans: text);
var
    c: TE;
    L: list2;
begin
    reset(f);
    rewrite(ans);
    new(L);
    L^.next := nil;
    L^.prev := nil;
    while not eof(f) do begin
        while not eoln(f) do begin
            read(f, c);
            ins(L, c);
        end;
        readln(f);
        clear(L);
        move(L, ans)
    end;
    dispose(L);
    close(f);
    close(ans);
end;


begin
    writeln('Zyanchurin Igor, 110 group, 16-44');
    assign(f, 't1.txt');
    assign(ans, 't2.txt');
    main(f, ans);
    writeln('done...')
end.
