program uProduto;

uses
  Vcl.Forms,
  uInicial in 'uInicial.pas' {frmProduto},
  uEstado in 'uEstado.pas' {frmEstado},
  uConexao in 'uConexao.pas',
  uClassConexaoSingleton in 'uClassConexaoSingleton.pas',
  uClassEstadoControler in 'uClassEstadoControler.pas',
  uClassEstadoModel in 'uClassEstadoModel.pas',
  uEstadoDTO in 'uEstadoDTO.pas',
  uMunicipio in 'uMunicipio.pas' {frmMunicipio},
  uClassMunicipioDTO in 'uClassMunicipioDTO.pas',
  uClassMunicipioControler in 'uClassMunicipioControler.pas',
  uClassMunicipioModel in 'uClassMunicipioModel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmProduto, frmProduto);
  Application.Run;
end.
