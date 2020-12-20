{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_5(input, output);
type    
    task = record
        disks: integer;
        from, buf, where: char;
    end;
    list = ^node;
    node = record
        elem: task;
        next: list
    end;
    stack = list;
var
    n: integer;

procedure ClearStack(var S: stack);
begin
    S := nil;
end;

function EmptyStack(S: stack): boolean;
begin
    EmptyStack := S = nil;
end;

procedure Push(var S: stack; X: task);
var
    p: list;
begin
    new(p);
    p^.elem := X;
    p^.next := S;
    S := p;
end;

procedure Pop(var S: stack; var X: task);
var
    p: list;
begin
    X := S^.elem;
    p := S;
    S := S^.next;
    dispose(p);
end;
    
procedure Hanoi(n: integer; a, b, c: char);
var 
    t, t1: task;
    S: stack;
begin
    t.disks := n;
    t.from := a;
    t.buf := b;
    t.where := c;
    ClearStack(S);
    Push(S, t);
    while not EmptyStack(S) do begin
        Pop(S, t1);
        if t1.disks = 1 then
            writeln('перенести диск с "', t1.from, '" на "', t1.where, '"')
        else begin
            t.disks := t1.disks - 1;
            t.from := t1.buf;
            t.buf := t1.from;
            t.where := t1.where;
            Push(S, t);
            t.disks := 1;
            t.from := t1.from;
            t.buf := t1.buf;
            t.where := t1.where;
            Push(S, t);
            t.disks := t1.disks - 1;
            t.from := t1.from;
            t.buf := t1.where;
            t.where := t1.buf;
            Push(S, t);
        end
    end;
end;

begin
    writeln('Зянчурин Игорь, 110, 9-5');
    write('Число колец - ');
    read(n);
    if n > 0 then
        Hanoi(n, 'a', 'b', 'c')
    else
        writeln('Ошибка ввода')
end.
