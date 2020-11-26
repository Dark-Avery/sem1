{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T8_51(input, output);
const 
    n = 10;
var
    a: array [1..n] of integer;
    i, sum, mini, min, max, maxi: integer;
begin
    writeln('Зянчурин Игорь, 110, 8.51');
    writeln('Введите массив: ');
    for i := 1 to n do
        read(a[i]);
    max := a[1];
    min := a[1];
    sum := 0;
    mini := 1;
    maxi := 1;
    for i := 2 to n do
        if a[i] >= max then begin
            max := a[i];
            maxi := i
        end else if a[i] <= min then begin
            min := a[i];
            mini := i
        end;
    if maxi > mini then
        for i := mini to maxi do
            sum := sum + a[i]
    else
        for i := maxi to mini do
            sum := sum + a[i];
    writeln('Сумма чисел между макс. и мин. - ', sum)
end.
