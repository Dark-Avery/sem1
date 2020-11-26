{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_12_35(input, output);
const
    n = 10;
var
    roads: array[1..n, 1..n] of boolean;
    visited: array[1..n] of boolean;
    way: array[1..n] of 1..n;
    first, last, length, i, j: integer;

function path(t1, t2: integer): boolean;
var
    t: 0..n;
    p: boolean;
begin
    if t1 = t2 then
        path := true
    else begin
        t := 0;
        p := false;
        repeat
            t := t + 1;
            if (roads[t1, t] = true) and (visited[t] = false) then begin
                visited[t] := true;
                length := length + 1;
                way[length] := t;
                if path(t, t2) = true then
                    p := true
                else
                    length := length - 1
            end;
        until p or (t = n);
        path := p
    end
end;

begin
    writeln('Зянчурин Игорь, 110, 12.35');
    writeln('Введите города, между которыми есть дорога. Конец - 0 0.');
    for i := 1 to n do begin
        for j := 1 to n do
            roads[i, j] := false;
        visited[i] := false
    end;
    read(i, j);
    while (i <> 0) and (j <> 0) do begin
        roads[i, j] := true;
        roads[j, i] := true;
        read(i, j)
    end;
    writeln('Введите номер начального и конечного города.');
    read(first, last);
    visited[first] := true;
    way[1] := first;
    length := 1;
    if path(first, last) then
        for i := 1 to length do
            if i <> length then
                write(way[i], ' -> ')
            else
                writeln(way[i])
    else
        writeln('Нет пути из ', first, ' в ', last)
end.
    
