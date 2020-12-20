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
    Queue = record  
        head: list;
        tail: list 
    end;
var
    n, t2, t3, t5, min1, min2: integer;
    Q2, Q3, Q5: Queue;
procedure ClearQueue(var Q: Queue);
begin
    Q.head := nil;
    Q.tail := nil;
end;

function EmptyQueue(Q: Queue): boolean;
begin
    EmptyQueue := Q.head = nil;
end;

procedure AddToQueue(var Q: Queue; X: TE);
var
    p: list;
begin
    new(p);
    p^.elem := X;
    p^.next := nil;
    if Q.head = nil then
        Q.head := p
    else
        Q.tail^.next := p;
    Q.tail := p;
end;

procedure RemoveFromQueue(var Q: Queue; var X: TE);
var
    p: list;
begin
    P := Q.head;
    X := p^.elem;
    Q.head := p^.next;
    dispose(p);
    if Q.head = nil then
        Q.tail := nil;
end;

procedure Destroy(var Q: Queue);
var
    t: TE;
begin
    while not EmptyQueue(Q) do
        RemoveFromQueue(Q, t);
end;

begin
    writeln('Zyanchurin Igor, 110 group, 17-5v');
    write('n = ');
    readln(n);
    if n < 1 then
        writeln
    else if n = 1 then
        writeln(2)
    else if n = 2 then
        writeln(2, ' ', 3)
    else begin
        t2 := 2;
        t3 := 3;
        t5 := 5;
        min1 := 1;
        ClearQueue(Q2);
        ClearQueue(Q3);
        ClearQueue(Q5);
        while n > 0 do begin
            if (t2 <= t3) and (t2 <= t5) then begin
                min2 := t2;
                AddToQueue(Q2, min2 * 2);
                AddToQueue(Q3, min2 * 3);
                AddToQueue(Q5, min2 * 5);
                RemoveFromQueue(Q2, t2);
            end
            else
            if (t3 <= t2) and (t3 <= t5) then begin
                min2 := t3;
                AddToQueue(Q2, min2 * 2);
                AddToQueue(Q3, min2 * 3);
                AddToQueue(Q5, min2 * 5);
                RemoveFromQueue(Q3, t3);
            end
            else begin
                min2 := t5;
                AddToQueue(Q2, min2 * 2);
                AddToQueue(Q3, min2 * 3);
                AddToQueue(Q5, min2 * 5);
                RemoveFromQueue(Q5, t5);
            end;
            if min2 <> min1 then begin
                write(min2, ' ');
                min1 := min2;
                n := n - 1;
            end;
        end;
        destroy(Q2);
        destroy(Q3);
        destroy(Q5);
        writeln
    end;
end.