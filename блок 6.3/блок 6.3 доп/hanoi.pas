{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_12_33(input, output);
uses crt;
var
    n, i, j, k: integer;
    xy: array[1..3, 1..2] of integer;
    p: char;
    t: boolean;

procedure move(n, a, c: integer);
var
    i, j, x: integer;
begin
    gotoxy(33, 3);
    textbackground(0);
    textcolor(10);
    write('Press Enter...');
    p := readkey;
    gotoxy(33, 3);
    write('                ');
    j := xy[a, 2];
    while j > 4 do begin
        textbackground(0);
        for i := xy[a, 1] - 1 - n to xy[a, 1] + 2 + n do begin
            gotoxy(i, j);
            write(' ')
        end;
        j := j - 1;
        for i := xy[a, 1] - 2 - n to xy[a, 1] + 3 + n do begin
            gotoxy(i, j);
            write(' ')
        end;
        textbackground(7);
        textcolor(11);
        for i := xy[a, 1] - 1 - n to xy[a, 1] + 2 + n do begin
            gotoxy(i, j);
            write('_')
        end;
        for i := xy[a, 1] - 2 - n to xy[a, 1] + 3 + n do begin
            gotoxy(i, j - 1);
            write('=')
        end
    end;
    i := xy[a, 1];
    while i < xy[c, 1] do begin
        textbackground(0);
        for x := i - 1 - n to i + 2 + n do begin
            gotoxy(x, j);
            write(' ')
        end;
        for x := i - 2 - n to i + 3 + n do begin
            gotoxy(x, j - 1);
            write(' ')
        end;
        if i + 1 = xy[c, 1] then
            i := i + 1
        else 
            i := i + 2;
        
        textbackground(7);
        textcolor(11);
        for x := i - 1 - n to i + 2 + n do begin
            gotoxy(x, j);
            write('_')
        end;
        for x := i - 2 - n to i + 3 + n do begin
            gotoxy(x, j - 1);
            write('=')
        end
    end;
    while i > xy[c, 1] do begin
        textbackground(0);
        for x := i - 1 - n to i + 2 + n do begin
            gotoxy(x, j);
            write(' ')
        end;
        for x := i - 2 - n to i + 3 + n do begin
            gotoxy(x, j - 1);
            write(' ')
        end;
        if i - 1 = xy[c, 1] then
            i := i - 1
        else 
            i := i - 2;
        textbackground(7);
        textcolor(11);
        for x := i - 1 - n to i + 2 + n do begin
            gotoxy(x, j);
            write('_')
        end;
        for x := i - 2 - n to i + 3 + n do begin
            gotoxy(x, j - 1);
            write('=')
        end
    end;
    j := 4;
    while j < xy[c, 2] - 2 do begin
        textbackground(0);
        for i := xy[c, 1] - 1 - n to xy[c, 1] + 2 + n do begin
            gotoxy(i, j);
            write(' ')
        end;
        for i := xy[c, 1] - 2 - n to xy[c, 1] + 3 + n do begin
            gotoxy(i, j - 1);
            write(' ')
        end;
        j := j + 1;
        textbackground(7);
        textcolor(11);
        for i := xy[c, 1] - 1 - n to xy[c, 1] + 2 + n do begin
            gotoxy(i, j);
            write('_')
        end;
        for i := xy[c, 1] - 2 - n to xy[c, 1] + 3 + n do begin
            gotoxy(i, j - 1);
            write('=')
        end
    end;
    xy[a, 2] := xy[a, 2] + 2;
    xy[c, 2] := xy[c, 2] - 2
end;    
    
procedure hanoi(n, a, b, c: integer);
begin     
    if n = 1 then
        move(n, a, c)
    else begin
        hanoi(n - 1, a, c, b);
        move(n, a, c);
        hanoi(n - 1, b, a, c)
    end
end;

begin
    Window(1,1,80,25);
    clrscr;
    textcolor(10);
    gotoxy(24, 7);
    write('Visualization of "Tower Of Hanoi"');
    delay(100);
    gotoxy(31,8);
    write('("Tea-Set Of Hanoi")');
    delay(1000);
    gotoxy(37, 10);
    write('Made by');
    delay(100);
    gotoxy(33, 11);
    write('Zyanchurin Igor');
    delay(100);
    gotoxy(33, 12);
    write('from 110 group');
    delay(100);
    gotoxy(37, 13);
    write('in 2020');
    delay(100);
    gotoxy(28, 14);
    write('(two thousand and twenty)');
    delay(100);
    gotoxy(38, 15);
    write('year');
    delay(1000);
    gotoxy(33, 19);
    write('Press Enter...');
    p := readkey;
    gotoxy(23, 24);
    write('How many people is the tea-set for?');
    gotoxy(38, 25);
    write('(1-9)');
    delay(50);
    gotoxy(1, 1);
    for i := 1 to 19 do begin
        delline;
        delay(50)
    end;
    gotoxy(59, 5);
    read(n);
    t := false;
    if (n > 0) and (n < 10) then
        t := true;
    while not t do begin
        gotoxy(32, 8);
        write('Wrong. Try again.');
        gotoxy(59, 5);
        write('                 ');
        gotoxy(59, 5);
        read(n);
        t := (n > 0) and (n < 10)
    end;
    gotoxy(1, 1);
    for i := 1 to 8 do begin
        delline;
        delay(50)
    end;
    TextBackGround(1);
    for i := 1 to 80 do begin
        j := 24;
        gotoxy(i, j);
        if (i <> 27) and (i <> 54) then
            write(' ');
        delay(10)
    end;
    j := 23;
    for i := 1 to 80 do
        if i in [1, 2, 25, 26, 28, 29, 52, 53, 55, 56, 79, 80] then 
        begin
            gotoxy(i, j);
            write(' ');
            delay(10)
        end;
    xy[1, 1] := 13;
    xy[1, 2] := 25 - 2 * n;
    xy[2, 1] := 40;
    xy[2, 2] := 25;
    xy[3, 1] := 67;
    xy[3, 2] := 25; 
    k := n;
    j := 23;
    textbackground(7);
    textcolor(11);
    while j >= 24 - 2 * n do begin
        for i := 13 - 1 - k to 14 + 1 + k do begin
            gotoxy(i, j);
            write('_')
        end;
        j := j - 1;
        for i := 13 - 2 - k to 14 + 2 + k do begin
            gotoxy(i, j);
            write('=')
        end;
        k := k - 1;
        j := j - 1;
        delay(10)
    end;
    hanoi(n, 1, 2, 3);
    textbackground(0);
    textcolor(10);
    gotoxy(33, 19);
    write('Press Enter...');
    p := readkey;
    gotoxy(1, 1);
    for i := 1 to 25 do begin
        delline;
        delay(50)
    end;
    for i := 20 to 60 do 
        if i in [20, 40, 60] then begin
            j := 24;
            while j > 7 do begin
                textbackground(7);
                gotoxy(i, j);
                write(' ');
                textbackground(4);
                gotoxy(i, j + 1);
                write(' ');
                delay(30);
                gotoxy(i, j);
                textbackground(0);
                write(' ');
                gotoxy(i, j + 1);
                write(' ');
                j := j - 1
            end;
            for k := 1 to 5 do begin
                textbackground(random(7));
                gotoxy(i, j - k);
                write(' ');
                textbackground(random(7));
                gotoxy(i, j + k);
                write(' ');
                textbackground(random(7));
                gotoxy(i - k, j);
                write(' ');
                textbackground(random(7));
                gotoxy(i + k, j);
                write(' ');
                textbackground(random(7));
                gotoxy(i - k, j - k);
                write(' ');
                textbackground(random(7));
                gotoxy(i + k, j - k);
                write(' ');
                textbackground(random(7));
                gotoxy(i - k, j + k);
                write(' ');
                textbackground(random(7));
                gotoxy(i + k, j + k);
                write(' ')
            end
        end;
    textbackground(0);
    gotoxy(32, 17);
    write('Congratulations!');
    gotoxy(32, 19);
    write('Have a nice tea!');
    delay(700);
    gotoxy(30, 21);
    write('Press ESC to exit...');
    p := readkey;
    gotoxy(1, 1);
    for i := 1 to 21 do begin
        delline;
        delay(50)
    end
end.
