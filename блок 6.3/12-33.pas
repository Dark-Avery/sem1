{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_12_33(input, output);
var
    n: integer;
    
procedure move(n: integer; a, b, c: char);
begin
    if n = 1 then
        writeln('перенести диск с "', a, '" на "', c, '"')
    else begin
        move(n - 1, a, c, b);
        move(1, a, b, c);
        move(n - 1, b, a, c)
    end
end;

begin
    writeln('Зянчурин Игорь, 110, 12.33');
    write('Число колец - ');
    read(n);
    if n > 0 then
        move(n, 'a', 'b', 'c')
    else
        writeln('Ошибка ввода')
end.
