unit uClassMunicipioDTO;

interface

uses
  System.SysUtils,
  uEstadoDTO;

type
  TMunicipioDTO = class
  private
    FIdMunicipio: Integer;
    FCodigoIBGE: Integer;
    FNome: String;
    FCEP: Currency;
    FDDD: Integer;
    FEstado: TEstadoTDO;
  public
    property IdMunicipio: Integer read FIdMunicipio write FIdMunicipio;
    property CodigoIBGE: Integer read FCodigoIBGE write FCodigoIBGE;
    property Nome: String read FNome write FNome;
    property CEP: Currency read FCEP write FCEP;
    property DDD: Integer read FDDD write FDDD;
    property Estado: TEstadoTDO read FEstado write FEstado;

    constructor Create;
    destructor Destroy; override;

  end;

implementation

{ tMunicipioDTO }

constructor tMunicipioDTO.Create;
begin
  FEstado := TEstadoTDO.Create;
end;

destructor tMunicipioDTO.Destroy;
begin
  if (Assigned(FEstado)) then
    FreeAndNil(FEstado);
  inherited;
end;

end.
