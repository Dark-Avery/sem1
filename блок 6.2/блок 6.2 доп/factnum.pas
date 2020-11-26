{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_factnum(input, output);
var
    n: integer;

function fact(n: integer): integer;
    function fact1(k: integer): integer;
    begin
        if n <= 0 then
            fact1 := -1
        else if k = n then
            fact1 := k
        else begin
            if n mod k = 0 then begin
                n := n div k;
                fact1 := fact1(k + 1)
            end else
                fact1 := -1;
        end
    end;
begin
    fact := fact1(1)
end;

begin
    writeln('Зянчурин Игорь, 110, "Факториал?"');
    writeln('Введите число: ');
    read(n);
    writeln(fact(n))
end.
