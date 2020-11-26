{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_12_26(input, output);

function maxmin: integer;
var
    c, op: char;
    l, r: integer;
begin
    read(op);
    if (op <= '9') and (op >= '0') then
        maxmin := ord(op) - ord('0')
    else begin
        read(c);
        l := maxmin;
        read(c);
        r := maxmin;
        read(c);
        case op of
            'M': if l > r then
                maxmin := l
            else
                maxmin := r;
            'm': if l > r then
                maxmin := r
            else
                maxmin := l
        end
    end
end;

begin
    writeln('Зянчурин Игорь, 110, 12.26');
    writeln('Введите формулу вида M/m(*,*): ');
    writeln(maxmin)
end.
