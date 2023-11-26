Program z_2_4;

const
  m = 8;
  n = 8;

var
  a: array[1..m, 1..n] of Integer;
  b: array[1..m] of Integer;
  i, j: Integer;
  avg: Integer;

begin
  for i := 1 to m do
    for j := 1 to n do
      a[i, j] := Random(50) + 1; // заполнение случайными элементами

  writeln('Исходный массив:');
  for i := 1 to m do
  begin
    for j := 1 to n do
      write(a[i, j]:4);
    writeln;
  end;

  for i := 1 to m do
  begin
    b[i] := a[i, 1]; // минимальное значение 

    for j := 2 to n do // поиск минимального значения
    begin
      if a[i, j] < b[i] then
        b[i] := a[i, j];
    end;
  end;

  writeln('Одномерный массив:');
  for i := 1 to m do
    write(b[i]:4);

  avg := 0;
  for i := 1 to m do // вычисление avg
    avg := avg + b[i];

  avg := avg div m;
  writeln;
  writeln('Среднее арифметическое: ', avg);

  if avg in b then
    writeln('Одномерный массив содержит свое среднее арифметическое.')
  else
    writeln('Одномерный массив НЕ содержит свое среднее арифметическое.');

  readln;
end.
