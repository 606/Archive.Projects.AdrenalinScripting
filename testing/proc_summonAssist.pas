var
Enemy:TL2LiveObject;
Player:TL2LiveObject;

procedure AssistAndProtect;
begin
Engine.SetTarget(Player.Target);
while not Player.Target.Dead do begin 
Engine.ActionUse(16); 
Delay(1000);
end;
while Engine.FindEnemy(Enemy) do begin 
Engine.SetTarget(Enemy);
Engine.ActionUse(16); 
end;
end;

begin
Player:=PartyList.Items[0]; 
while Engine.Online do begin
AssistAndProtect;
Engine.SetTarget(Player);
Engine.ActionUse(15); 
if User.DistTo(Player) > 100 then engine.MoveToTarget(-50); 
Delay(1000);
end;
end.
