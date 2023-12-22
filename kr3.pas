program DKR3;
uses crt;
function f(x:real):real; //интегрируемая функция
begin
f:=x**3+(2)*x**2+(5)*x+(1);                  
end;
var
  a,b,dx,x,y,h,ax,integral:real;
  n,i:integer;
  da:boolean;
begin
  repeat
  writeln('1.Ввести пределы вычисления интеграла ');
  writeln('2.Ввести кол-во отрезков ');
  writeln('3.Вычислить интеграл ');
  writeln('4.Exit');
  write('Выберите! = '); readln(i);
  da:=false;

  case i of
  1:
  begin 
    Write('Введите нижний предел интегрирования = '); readln(a);
    Write('Введите верхний предел интегрирования = '); readln(b);
  end;
  2:
  begin
    Write('Введите кол-во отрезков = ');readln(n);
    h:=(b-a)/n;
    ax:=a;
    integral := 0;
    for i:=0 to n-1 do begin
      x := ax +i * h;
      integral:= integral+ f(x) * h;
    end;
  end;
  3:
  begin
    y := 3*x**2+4*x+5;
    dx := (y/2)*(h**2)*n;
    Writeln(dx);
    Writeln(integral);
  end;
  4:
  da := true;
end;
readln();
clrscr;
until da;
end.
  