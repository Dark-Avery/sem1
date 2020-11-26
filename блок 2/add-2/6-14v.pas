{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T6_14v(input, output);
var
    c, cn: char;
begin
    writeln('Зянчурин Игорь, 110, 6.14в');
    for c := '0' to '9' do begin
        for cn := c to '9' do 
            write(cn);
        for cn := '0' to chr(ord(c) - 1) do
            write(cn);
        writeln
    end;
end.
