{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_11_55(input, output);
var
    i, n, pr: integer;
    
function prime(x: integer): boolean;
var
    i: integer;
    p: boolean;
begin
    i := 2;
    p := true;
    while (i * i <= x) and p do begin
        p := x mod i <> 0;
        i := i + 1
    end;
    prime := p
end;

begin
    writeln('Зянчурин Игорь, 110, 11.55');
    writeln('Введите число n: ');
    readln(n);
    writeln('Простые числа "близнецы" из [2,n]: ');
    pr := -10;
    for i := 2 to n - 2 do
        if prime(i) then begin
            if i = pr + 2 then
                writeln(pr, ' ', i);
            pr := i;
        end;
end.
