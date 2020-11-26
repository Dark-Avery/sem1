{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T4(input, output);
var
    n, i, j: integer;
    p: boolean;
begin
    writeln('Зянчурин Игорь, 110, 4');
    writeln('Введите число: ');
    read(n);
    i := 0;
    p := false;
    while (sqr(i) < n) and not p do begin
        i := i + 1;
        j := 0;
        while (j < i) and not p do begin
            j := j + 1;
            p := sqr(i) + sqr(j) = n;
        end;
    end;
    if p then 
        writeln(i, '^2 + ', j, '^2 = ', n, ' => a = ', i, ', b = ', j)
    else
        writeln('Нет')
end.
