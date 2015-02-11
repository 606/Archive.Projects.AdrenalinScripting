var
Timer : cardinal;
Paused : boolean;
begin
While engine.status = lsonline do begin
    if (CharList.Count > Party.chars.count) and not Paused then begin
        Print('Enemy detected, Legit stance: ON');
        Engine.FaceControl(1,false);
        Timer := GetTickCount + 30000;// 30 секунд - таймер проверки на игрока рядом
        //тут можно вставить перемещения или сесть на попу -  engine.moveto или engine.sit
        Paused := true;
    end else begin
        if (Timer < GetTickCount) and Paused and (CharList.Count <= Party.chars.count) then begin
        Print('Enemy left, Legit stance: OFF');
        Engine.FaceControl(1,true);
        Paused := false;
    end;
end;
Delay(1500);
end;
end.
