begin
while User.Inventory.ByID(20332).count<3000000 do begin
//while engine.online do begin
if User.MP>0 then
 Engine.Useskill('Призыв Зарядов Души');
 Engine.Useskill('Знак Пустоты',true);
 //print(User.Inventory.ByID(20332).count);
end;
end.
