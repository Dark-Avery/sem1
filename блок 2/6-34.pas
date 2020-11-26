{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T6_34(input, output);
var
    k, sign, sum: integer;
    c: char;
begin
    writeln('Зянчурин Игорь, 110, 6.34');
    writeln('Введите: ');
    sum := 0;
    read(c);
    while c <> '.' do begin
        if c = '-' then
            sign := -1
        else
            sign := 1;
        if (c = '+') or (c = '-') then
            read(c);
        k := ord(c) - ord('0');
        read(c);
        sum := sum + sign * k
    end;
    writeln('Алгебраическая сумма: ', sum);
end.
