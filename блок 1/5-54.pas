{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T5_54(input, output);
var
    i, n, j: integer;
    p: boolean;
begin
    writeln('Зянчурин Игорь, 110, 5.54');
    writeln('Введите число n: ');
    read(n);
    write('Простые числа из диапазона [2,n]: ');
    for j := 2 to n do begin
        p := true;
        i := 2;
        while p and (sqr(i) <= j) do begin
            p := j mod i <> 0;
            i := i + 1;
        end;
        if p then 
            write(j,' ');
    end;
    writeln
end.
