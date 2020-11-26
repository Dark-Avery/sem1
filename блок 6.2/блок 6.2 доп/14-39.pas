{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_14_39(input, output);
var
    c, last: char;
    p, t: boolean;
    
function form: boolean;

    procedure terma;
    begin
        if c in ['a', 'b', 'c', 'd'] + ['0'..'9'] then begin
            read(c);
            terma
        end
    end;
    
    procedure term1;
    begin
        if c in ['0'..'9'] then begin
            read(c);
            term1
        end
    end;
    
begin
    p := false;
    read(c);
    if c = '(' then begin
        p := form;
        if not (last in ['+', '-', '*']) then
            p := false;
        if p then begin
            p := form;
            if last <> ')' then
                p := false;
            if p then
                read(last)
        end
    end else begin
        t := false;
        if c in ['a', 'b', 'c', 'd'] then begin
            t := true;
            terma
        end else if c in ['0'..'9'] then begin
            t := true;
            term1
        end else
            p := false;
        if (c in ['+', '-', '*', '.', ')']) and t then
            p := true;
        last := c
    end;
    form := p
end;

begin
    writeln('Зянчурин Игорь, 110, 14.39');
    writeln('Введите формулу, за ней точку: ');
    writeln(form and (last = '.'))
end.
