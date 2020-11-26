{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T5_12(input, output);
var
    x: real;
    i: integer;
begin
    writeln('Зянчурин Игорь, 110, 5.12');
    x := 0;
    writeln('x':4, 'sin(x)':10, 'cos(x)':8);
    for i := 1 to 22 do write('_');
    writeln;
    for i := 0 to 10 do begin
        write(x:6:4, '  ', sin(x):6:4, '  ', cos(x):6:4, ' ');
        writeln;
        x := x + 0.1;
    end;
end.
