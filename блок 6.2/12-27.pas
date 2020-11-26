{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_12_27(input, output);

function logic: boolean;
var
    c: char;
    b: boolean;
begin
    read(c);
    case c of
        't': begin
            read(c, c, c);
            logic := true
        end;
        'f': begin
            read(c, c, c, c);
            logic := false
        end;
        'n': begin
            read(c, c, c);
            logic := not logic;
            read(c)
        end;
        'a': begin
            read(c, c, c);
            b := false;
            repeat
                b := b and logic;
                read(c)
            until c =')';
            logic := b
        end;
        'o': begin
            read(c, c);
            b := false;
            repeat
                b := b or logic;
                read(c)
            until c = ')';
            logic := b
        end
    end
end;

begin
    writeln('Зянчурин Игорь, 110, 12.27');
    writeln('Введите лог. выр. вида and/or(*,*)/not(*): ');
    writeln(logic)
end.
