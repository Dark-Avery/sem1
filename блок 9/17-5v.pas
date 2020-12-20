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
    TE1 = char;
    list1 = ^node1;
    node1 = record
        elem: TE1;
        next: list1
    end;
    stack1 = list1;

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

procedure ClearStack1(var S: stack1);
begin
    S := nil;
end;

function EmptyStack1(S: stack1): boolean;
begin
    EmptyStack1 := S = nil;
end;

procedure Push1(var S: stack1; X: TE1);
var
    p: list1;
begin
    new(p);
    p^.elem := X;
    p^.next := S;
    S := p;
end;

procedure Pop1(var S: stack1; var X: TE1);
var
    p: list1;
begin
    X := S^.elem;
    p := S;
    S := S^.next;
    dispose(p);
end;

procedure main;
var 
    i, j, n: integer;
    c: char;
    s1: stack1;
    s2, s3, s4: stack;
begin
    ClearStack1(s1);
    ClearStack(s2);
    ClearStack(s3);
    ClearStack(s4);
    read(c);
    n := 0;
    while c <> '.' do begin
        n := n + 1;
        Push1(s1, c);
        read(c)
    end;
    while not EmptyStack1(s1) do begin
        Pop1(s1, c);
        if c = ')' then
            Push(s2, n);
        if c = '(' then begin
            Push(s3, n);
            Pop(s2, i);
            Push(s4, i);
        end;
        n := n - 1;
    end;
    while not EmptyStack(s3) do begin
        Pop(s3, i);
        Pop(s4, j);
        write(i, '~', j, ' ')
    end;
    writeln
end;

begin
    writeln('Zyanchurin Igor, 110 group, 17-5v');
    main
end.

// A+(45-F(X)*(B-C)).
// 3~17 8~10 12~16 

// (x-(((x+2)+3)-23-3*(34+2)+2)-a).
// 1~31 4~28 5~13 6~10 20~25 

// ()()()()().
// 1~2 3~4 5~6 7~8 9~10