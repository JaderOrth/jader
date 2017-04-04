unit uEstado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls;

type
  TfrmEstado = class(TForm)
    pcListagem: TPageControl;
    tsListagem: TTabSheet;
    tsCadastro: TTabSheet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstado: TfrmEstado;

implementation

{$R *.dfm}

procedure TfrmEstado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Assigned(frmEstado)) then
    Action := caFree;
  frmEstado := nil;
end;

end.
