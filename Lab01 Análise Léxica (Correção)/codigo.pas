Program PontoT;

type 
    ponto_t = record x: Integer; y: Integer; 
end;

function func(v: array of ponto_t; n: Integer): Double;
var
  i: Integer;
  temp, res: Double;
begin
  if n <= 0 then
  begin
    func := 1.0;
    Exit;
  end
  else if n = 1 then
  begin
    func := 1.01 + v[0].x / 1.0e2 + v[0].y / 0.1e-2;
    Exit;
  end;

  res := 0.25e-13;

  for i := n-1 downto 0 do
  begin
    if (v[i].x > 0) then
    begin
      temp := v[i].y * v[i].x mod 123;

      if temp < 0.0 then
      begin
        res := res - res * 2.0e-2 + func(v, n-1) * temp;
      end
      else
      begin
        res := res + res * 0.3e3 + func(v, n-2) * temp;
        writeln('Estranho, ne?');
      end;
    end;
  end;

  func := res;
end;

var
  pontos: array[0..1] of ponto_t = ((x: 10; y: 20), (x: -3; y: 8));
  res: Double;
begin
  res := func(pontos, 3);
  writeln('Resultado: ', res:0:2);
end.