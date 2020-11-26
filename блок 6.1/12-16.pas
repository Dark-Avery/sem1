{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_12_16(input, output);

procedure print;
var
    c: char;
begin
    read(c);
    if c <> '.' then begin
        print;
        write(c)
    end
end;

begin
    writeln('Зянчурин Игорь, 110, 12.16');
    writeln('Введите текст, в конце точка: ');
    print;
    writeln
end.
