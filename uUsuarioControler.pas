unit uUsuarioControler;

interface

uses
  System.SysUtils,
  uUsuarioModel, uUsuarioDTO;


type
  TUsuarioControler = class
  private
    oUsuarioModel: TUsuarioModel;
  public



    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TUsuarioControler }

constructor TUsuarioControler.Create;
begin
  oUsuarioModel := TUsuarioModel.Create;
end;

destructor TUsuarioControler.Destroy;
begin
  if (Assigned(oUsuarioModel)) then
    FreeAndNil(oUsuarioModel);
  inherited;
end;

end.
