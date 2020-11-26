{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_11_18(input, output);
var
    a, b: integer;
    
function minus(a, b: integer): integer;
begin
    a := abs(a);
    while a <> b do
        if a > b then
            a := a - b 
        else
            b := b - a;
    minus := b
end;
    
function euclid(a, b: integer): integer;
begin
    b := abs(b);
    while (a <> 0) and (b <> 0) do
        if a > b then
            a := a mod b
        else 
            b := b mod a;
    euclid := a + b
end;
    
begin
    writeln('Зянчурин Игорь, 110, 11.18');
    writeln('Введите 2 числа: ');
    readln(a, b);
    writeln('Их НОД равен ', minus(a, b), ' = ', euclid(a, b));
end.
