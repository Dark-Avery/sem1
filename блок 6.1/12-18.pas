{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_12_18(input, output);
var
    a, b: integer;

function minus(a, b: integer): integer;
begin
    if a = b then 
        minus := a
    else
        if a > b then
            minus := minus(a - b, b)
        else
            minus := minus(a, b - a)
end;

function euclid(a, b: integer): integer;
begin
    if (a = 0) or (b = 0) then
        euclid := a + b
    else
        if a > b then
            euclid := euclid(a mod b, b)
        else
            euclid := euclid(a, b mod a)
end;

begin
    writeln('Зянчурин Игорь, 110, 12.18');
    writeln('Введите 2 числа: ');
    read(a, b);
    writeln(minus(a, b));
    writeln(euclid(a, b))
end.
