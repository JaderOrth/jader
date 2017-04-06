unit uClassConexaoSingleton;

interface

uses
  System.SysUtils,
  uConexao;

type
  TConexaosingleton = class
  private
    class var oConexao = TConexao;
  public
    class function GetConexao: TConexao;
  end;

implementation

{ TConexaosingleton }

class function TConexaosingleton.GetConexao: TConexao;
begin
  if (not(Assigned(oConexao))) then
    oConexao := TConexao.Create(nil);

  Result := oConexao;
end;

initialization

finalization
  if (Assigned(TConexaosingleton.oConexao)) then
    FreeAndNil(TConexaosingleton.oConexao);

end.
