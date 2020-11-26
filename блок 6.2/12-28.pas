{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_12_28(input, output);

procedure print;
var
    c: char;
begin
    read(c);
    if c <> '(' then
        write(c)
    else begin
        print;
        read(c);
        print;
        write(c);
        read(c)
    end
end;

begin
    writeln('Зянчурин Игорь, 110, 12.28');
    writeln('Введите формулу в инфиксной форме записи: ');
    print
end.
