unit uInicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Phys.MySQLDef, FireDAC.Phys.MySQL,
  FireDAC.Comp.UI, Data.DB, FireDAC.Comp.Client,
  uClassConexaoSingleton;

type
  TfrmProduto = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Estado1: TMenuItem;
    FDConnection1: TFDConnection;
    procedure Estado1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProduto: TfrmProduto;

implementation

uses
  uEstado;

{$R *.dfm}

procedure TfrmProduto.Estado1Click(Sender: TObject);
begin
  if (not(Assigned(frmEstado))) then
    frmEstado := TfrmEstado.Create(Self);
  frmEstado.Show;
end;

end;

end.
