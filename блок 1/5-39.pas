{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T5_39(input, output);
const
    eps = 1e-5;
var
    a, b, c: boolean;
    i: integer;
begin
    writeln('Зянчурин Игорь, 110, 5.39');
    for i := 1 to 24 do 
        write('-');
    writeln;
    writeln('A':3, 'B':6, 'C':6, 'F':6, ' ':3);
    for i := 1 to 24 do 
        write('-');
    writeln;
    for a := true downto false do
        for b := true downto false do
            for c := true downto false do
                writeln(a:6, b:6, c:6, ((a and b) or not (b or c)):6);
    for i := 1 to 24 do 
        write('-');
    writeln;
end.
