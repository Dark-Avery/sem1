{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T5_45(input, output);
var
    x, max1, max2, max3: integer;
begin
    writeln('Зянчурин Игорь, 110, 5.45');
    writeln('Введите послед-ность чисел, заканчивающуюся нулем: ');
    read(x);
    max1 := 0;
    max2 := 0;
    max3 := 0;
    while x <> 0 do begin
        if x >= max1 then begin
            max3 := max2;
            max2 := max1;
            max1 := x;
        end else if x >= max2 then begin
            max3 := max2;
            max2 := x
        end else if x > max3 then 
            max3 := x;
        read(x)
    end;
    writeln('3 макс. ч. в послед-ности: ', max1, ', ', max2, ', ', max3)
end. 
