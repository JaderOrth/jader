unit uClassMunicipioControler;

interface

uses
  System.SysUtils,
  uClassMunicipioModel;

type
  TMunicipioControler = class
  private
    oMunicipioModel: TMunicipioModel;

  public


    constructor Create;
    destructor Destroy; override;

  end;

implementation

{ TMunicipioControler }

constructor TMunicipioControler.Create;
begin
  oMunicipioModel := TMunicipioModel.Create;
end;

destructor TMunicipioControler.Destroy;
begin
  if (Assigned(oMunicipioModel)) then
    FreeAndNil(oMunicipioModel);
  inherited;
end;

end.
