program uProduto;

uses
  Vcl.Forms,
  uInicial in 'uInicial.pas' {frmProduto},
  uEstado in 'uEstado.pas' {frmEstado},
  uConexao in 'uConexao.pas',
  uClassConexaoSingleton in 'uClassConexaoSingleton.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmProduto, frmProduto);
  Application.Run;
end.
