{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_primenum(input, output);
var
    n: integer;

function prime(n: integer): boolean;
    function prime1(k: integer): integer;
    begin
        if k * k > n then
            prime1 := 0
        else
            prime1 := ord(n mod k = 0) + prime1(k + 1)
    end;
begin
    prime := prime1(2) = 0
end;

begin
    writeln('Зянчурин Игорь, 110, "Простое число"');
    writeln('Введите число: ');
    read(n);
    writeln(prime(n))
end.
