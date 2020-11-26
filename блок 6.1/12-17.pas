{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_12_17(input, output);

procedure print;
var
    x: integer;
begin
    read(x);
    if x <> 0 then begin
        if x < 0 then begin
            write(x, ' ');
            print
        end else if x > 0 then begin
            print;
            write(x, ' ')
        end
    end
end;

begin
    writeln('Зянчурин Игорь, 110, 12.17');
    writeln('Введите числа: ');
    print;
    writeln
end.
