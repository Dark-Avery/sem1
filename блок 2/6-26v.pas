{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T6_26v(input, output);
var
    c, cn, ck: char;
    k: integer;
begin
    writeln('Зянчурин Игорь, 110, 6.26в');
    writeln('Введите слова, разделенные запятой или пробелом: ');
    k := 0;
    c := '*';
    while c <> '.' do begin
        read(c);
        cn := c;
        while (c <> ',') and (c <> '.') and (c <> ' ') do begin
            ck := c;
            read(c)
        end;
        if cn = ck then
            k := k + 1;
    end;
    writeln('Кол-во слов с один. буквой в начале и конце: ', k)
end.
