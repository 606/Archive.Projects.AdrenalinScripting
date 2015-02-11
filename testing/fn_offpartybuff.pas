var obj: TL2NPC;
    obj2: TL2Effect;
   Item,Item2,quest1,shots : TL2Item;
  
begin

 while 1<>2 do begin
   if not User.Buffs.ById(1363, Obj2) or (Obj2.EndTime<20000) then begin

  Engine.inviteparty('ник бафера');
  delay(10000);             // увеличиват ьутт время
Engine.leaveparty;

delay(1000);
end

  if not User.Buffs.ById(1002, Obj2) or (Obj2.EndTime<60000) then begin

  Engine.inviteparty('ник бафера');
  delay(10000);             // увеличиват ьутт время
Engine.leaveparty;

delay(1000);
end;delay(1000);
end;
end.
