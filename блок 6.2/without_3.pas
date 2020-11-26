{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_without_3(input, output);
var
    n: integer;

function delete3(n: integer): integer;
begin
    if n = 3 then
        delete3 := 0
    else 
        if n < 10 then
            delete3 := n
        else 
            if n mod 10 <> 3 then
                delete3 := delete3(n div 10) * 10 + delete3(n mod 10)
            else
                delete3 := delete3(n div 10)
end;

begin
    writeln('Зянчурин Игорь, 110, "Без Троек"');
    writeln('Введите число: ');
    read(n);
    writeln(delete3(n))
end.
