unit uInicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmProduto = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Estado1: TMenuItem;
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

end.
