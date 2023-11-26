program z_1_4;

const
  Sz = 5; 

var
  a: array[1..Sz] of Integer;
  b: array[1..Sz] of Integer;
  sum1, sum2: Integer;
  i: Integer;

begin
  for i := 1 to Sz do
  begin
    a[i] := Random(21) - 10; // заполнение случайными числами
    b[i] := Random(21) - 10;
  end;

  writeln('Массив 1:');
  for i := 1 to Sz do
    write(a[i]:4);
  writeln;

  writeln('Массив 2:');
  for i := 1 to Sz do
    write(a[i]:4);
  writeln;

  sum1 := 0;
  sum2 := 0;

  for i := 1 to Sz do
  begin
    if a[i] > 0 then
      sum1 := sum1 + a[i];

    if b[i] > 0 then
      sum2 := sum2 + b[i];
  end;

  // Умножение на 10 элементов массива с меньшей суммой положительных элементов
  if sum1 < sum2 then
  begin
    writeln('Сумма положительных элементов в массиве 1 меньше.');
    for i := 1 to Sz do
      a[i] := a[i] * 10;
  end
  else
  begin
    writeln('Сумма положительных элементов в массиве 2 меньше.');
    for i := 1 to Sz do
      b[i] := b[i] * 10;
  end;

  // Вывод обновленных массивов
  writeln('Обновленный массив 1:');
  for i := 1 to Sz do
    write(a[i]:4);
  writeln;

  writeln('Обновленный массив 2:');
  for i := 1 to Sz do
    write(b[i]:4);
  writeln;

  readln;
end.
