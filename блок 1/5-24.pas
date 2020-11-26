{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T5_24(input, output);
const
    eps = 1e-5;
var
    r, l, x, e, p, f, fl: real;
begin
    writeln('Зянчурин Игорь, 110, 5.24');
    l := -10;
    r := 10;
    p := 4 * arctan(1);
    e := exp(1);
    writeln('Pi*x^3-e*x^2+(2e+1)x+Pi^2=0');
    while abs(r - l) >= eps do begin
        x := (l + r) / 2;
        f := p*x*x*x - e*x*x + (2*e + 1)*x + p*p;
        fl := p*l*l*l - e*l*l + (2*e + 1)*l + p*p;
        if f * fl > 0 then
            l := x
        else
            r := x
    end;
    writeln('x = ', x:7:4);
end.
