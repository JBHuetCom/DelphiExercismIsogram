unit uIsogram;

interface

  function isIsogram(const AValue : string) : boolean;

implementation

  uses
    System.SysUtils, System.StrUtils;

  function isIsogram(const AValue : string) : boolean;
    var
      alphabet : string;
    begin
      alphabet := '';
      for var i : Char := 'a' to 'z' do
        alphabet := alphabet + i;
      for var i : integer := Low(AValue) to High(AValue) do
        begin
          if (LowerCase(AValue[i]) >= 'a') AND (LowerCase(AValue[i]) <= 'z') then
            if 0 <> Pos(LowerCase(AValue[i]), alphabet) then
              alphabet := ReplaceStr(alphabet, LowerCase(AValue[i]), '')
            else
              begin
                Result := False;
                exit;
              end;
        end;
      Result := True;

    end;

end.
