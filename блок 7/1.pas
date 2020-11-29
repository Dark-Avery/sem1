{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_1(input, output);
var
    words, resul: text;
    c: char;
    all, s, r, vowels: set of 'a'..'z';
begin
    writeln('Zyanchurin Igor, 110 group, 7 - 1');
    assign(words, 'words.txt');
    assign(resul, 'result.txt');
    reset(words);
    rewrite(resul);
    s := [];
    all := [];
    vowels := ['a', 'e', 'i', 'o', 'u', 'y'];
    if not eof(words) then
        while not eoln(words) do begin
            read(words, c);
            s := s + [c];
            all := all + [c];
        end;
    readln(words);
    while not eof(words) do begin
        r := [];
        while not eoln(words) do begin
            read(words, c);
            r := r + [c];
            all := all + [c];
        end;
        readln(words);
        s := s * r;
    end;
    write(resul, '1 - ');
    for c := 'a' to 'z' do
        if (c in all) and not (c in vowels) then
            write(resul, c, ' ');
    writeln(resul);
    write(resul, '2 - ');
    for c := 'a' to 'z' do
        if not (c in all) and not (c in vowels) then
            write(resul, c, ' ');
    writeln(resul);
    write(resul, '3 - ');
    for c := 'a' to 'z' do
        if (c in s) and (c in vowels) then
            write(resul, c, ' ');
    writeln(resul);
    write(resul, '4 - ');
    for c := 'a' to 'z' do
        if not (c in s) and (c in vowels) then
            write(resul, c, ' ');
    writeln(resul);
    close(words);
    close(resul);
    writeln('done...')
end.
