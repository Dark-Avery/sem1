{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T6_35(input, output);
var
    k, sign, sum: integer; 
    c: char;
begin
    writeln('Зянчурин Игорь, 110, 6.35');
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
        k := 0;
        while (c <= '9') and (c >= '0') do begin
            k := k * 10 + ord(c) - ord('0');
            read(c)
        end;
        sum := sum + sign * k
    end;
    writeln('Алгебраическая сумма: ', sum);
end.
