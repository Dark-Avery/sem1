{$mode TP}
{$codepage UTF-8}
{$R+,B+,X-}
program T_16_44(input, output);
uses heaptrc;
type
    TE = integer;
    list = ^node;
    node = record
        elem: TE;
        next: list
    end;
    stack = list;

procedure ClearStack(var S: stack);
begin
    S := nil;
end;

function EmptyStack(S: stack): boolean;
begin
    EmptyStack := S = nil;
end;

procedure Push(var S: stack; X: TE);
var
    p: list;
begin
    new(p);
    p^.elem := X;
    p^.next := S;
    S := p;
end;

procedure Pop(var S: stack; var X: TE);
var
    p: list;
begin
    X := S^.elem;
    p := S;
    S := S^.next;
    dispose(p);
end;

procedure Destroy(var L : list);
begin
    if L^.next <> nil then
        Destroy(L^.next);
    dispose(L);
end;

procedure main;
var 
    S: stack;
    i, j: integer;
    c: char;
begin
    read(c);
    ClearStack(S);
    i := 1;
    while c <> '.' do begin
        if c = '(' then
            Push(S, i);
        if (c = ')') and not EmptyStack(S) then begin
            Pop(s, j);
            write(j, '~', i, '  ')
        end;
        i := i + 1;
        read(c)
    end;
    writeln
end;

begin
    writeln('Zyanchurin Igor, 110 group, 17-5b');
    main
end.

// A+(45-F(X)*(B-C)).
// 8~10  12~16  3~17 

// (x-(((x+2)+3)-23-3*(34+2)+2)-a).
// 6~10  5~13  20~25  4~28  1~31 

// ()()()()().
// 1~2  3~4  5~6  7~8  9~10 