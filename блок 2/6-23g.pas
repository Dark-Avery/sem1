{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T6_23g(input, output);
var
    c1, c2: char;
begin
    writeln('Зянчурин Игорь, 110, 6.23г');
    writeln('Введите текст: ');
    c2 := '*';
    read(c1);
    while (c1 <> '.') and (c2 <> '.') do begin
        read(c2);
        if (c1 = 'p') and (c2 = 'h') then begin
            write('f');
            read(c1);
        end else begin
            write(c1);
            c1 := c2;
        end;
    end;
    writeln
end.
