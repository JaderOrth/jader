unit uClassConexaoSingleton;

interface

uses
  System.sysUtils, uClassConexao;

type
  TConexaoSongleton = class
  private
    class var oConexao: TConexao;
  public
    class function GetConexao: TConexao;

  end;

implementation

{ TConexaoSongleton }

class function TConexaoSongleton.GetConexao: TConexao;
begin
   if (not(Assigned(oConexao))) then
    oConexao := TConexao.Create(nil);

   Result := oConexao;
end;

initialization

finalization
  if (Assigned(TConexaoSongleton.oConexao)) then
    FreeAndNil(TConexaoSongleton.oConexao);

end.unit Unit1;

interface

implementation

end.
