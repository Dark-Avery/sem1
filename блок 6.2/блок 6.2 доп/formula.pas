{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_formula(input, output);
var
    c: char;
    
function form: boolean;
var
    p: boolean;
begin
    form := false;
    read(c);
    if (c >= '0') and (c <= '9') then
        form := true
    else if c = '(' then
        if form then begin
            read(c);
            if (c = '-') or (c = '+') or (c = '*') then
                if form then begin
                    read(c);
                    if c = ')' then
                        form := true
                end
        end
end;

begin
    writeln('Зянчурин Игорь, 110, "Формула?"');
    writeln('Введите формулу, за ней точку: ');
    if form = false then
        writeln(false)
    else begin
        read(c);
        if c = '.' then
            writeln(true)
        else
            writeln(false)
    end
end.
