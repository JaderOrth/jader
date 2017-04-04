unit uClassConexaoSingleton;

interface

uses
  System.SysUtils,
  uConexao;

type
  TConexaoSingleton = class
  private
    class var oConexao = TConexao;
  public
    class function GetConexao: TConexao;
  end;

implementation

{ TConexaosingleton }

class function TConexaoSingleton.GetConexao: TConexao;
begin
  if (not(Assigned(oConexao))) then
    oConexao := TConexao.Create(nil);

  Result := oConexao;
end;

initialization

finalization
  if (Assigned(TConexaoSingleton.oConexao)) then
    FreeAndNil(TConexaoSingleton.oConexao);

end.
