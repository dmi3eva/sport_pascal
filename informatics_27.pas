function gcd(n, m: longint): longint;
begin
     if (n = 0) or (m = 0) then
        gcd := n + m
     else
        if (n > m) then
           gcd := gcd(n mod m, m)
        else
           gcd := gcd(n, m mod n);
end;

var a, b, gcd_ab, sign: longint;
BEGIN
     readln(a, b);
     sign := 1;
     if (a < 0) then
     begin
        sign := sign * -1;
        a := a * -1;
     end;
     if (b < 0) then
     begin
        sign := sign * -1;
        b := b * -1;
     end;
     gcd_ab := gcd(a, b);
     write(sign * a div gcd_ab, ' ', b div gcd_ab);
END.