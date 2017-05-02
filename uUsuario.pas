unit uUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroBase, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  uUsuarioDTO, uUsuarioControler, uEstadoDTO;

type
  TfrmUsuario = class(TfrmBase)
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    LabeledEdit9: TLabeledEdit;
    LabeledEdit10: TLabeledEdit;
    LabeledEdit11: TLabeledEdit;
    LabeledEdit12: TLabeledEdit;
    dtpDataNascimento: TDateTimePicker;
    cmbEstado: TComboBox;
    cmbMunicipio: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cmbCadMunicipio: TComboBox;
    edtCadComplementos: TLabeledEdit;
    edtCadSenha: TLabeledEdit;
    edtCadLogin: TLabeledEdit;
    dtpCadDatanascimento: TDateTimePicker;
    edtCadNumeroLogradouro: TLabeledEdit;
    edtCadBairro: TLabeledEdit;
    edtCadCelular: TLabeledEdit;
    edtCadNome: TLabeledEdit;
    edtCadLogradouro: TLabeledEdit;
    edtCadTelefone: TLabeledEdit;
    edtCadEmail: TLabeledEdit;
    cmbCadEstado: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure cmbCadMunicipioEnter(Sender: TObject);
  private
    oUsuarioDTO: TUsuarioDTO;
    oUsuarioControler: TUsuarioControler;
    oEstadoDTO: TEstadoDTO;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsuario: TfrmUsuario;

implementation

{$R *.dfm}

procedure TfrmUsuario.btnSalvarClick(Sender: TObject);
begin
  inherited;
  // FormatDateTime('ddmmyyyy',dtpDataNascimento.Time);
  oUsuarioDTO.DataNascimento := dtpCadDatanascimento.Time;
  oUsuarioDTO.Nome := edtCadNome.Text;
  oUsuarioDTO.Logradouro := edtCadLogradouro.Text;
  oUsuarioDTO.NumeroLogradouro := StrToIntDef(edtCadNumeroLogradouro.Text, 0);
  oUsuarioDTO.IdMunicipio :=
    Integer(cmbCadEstado.Items.Objects[cmbCadEstado.ItemIndex]);
  oUsuarioDTO.Bairro := edtCadBairro.Text;
  oUsuarioDTO.Complemento := edtCadComplementos.Text;
  oUsuarioDTO.Telefone := StrToCurrDef(edtCadTelefone.Text, 0);
  oUsuarioDTO.Celular := StrToCurrDef(edtCadCelular.Text, 0);
  oUsuarioDTO.Email := edtCadEmail.Text;
  oUsuarioDTO.Login := edtCadLogin.Text;
  oUsuarioDTO.Senha := edtCadSenha.Text;

end;

procedure TfrmUsuario.cmbCadMunicipioEnter(Sender: TObject);
var
  iId: integer;
begin
  inherited;
  iId := integer(cmbCadEstado.Items.Objects[cmbCadEstado.ItemIndex]);
  if (iId <> 0) then
  begin
    oUsuarioControler.SelectMunicipio(cmbCadMunicipio, iId);
  end
  else
    raise Exception.Create('Selecione o Estado Primeiro!');
end;

procedure TfrmUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Assigned(oUsuarioDTO)) then
    FreeAndNil(oUsuarioDTO);

  if (Assigned(oEstadoDTO)) then
    FreeAndNil(oEstadoDTO);

  if (Assigned(oUsuarioControler)) then
    FreeAndNil(oUsuarioControler);

  inherited;
  frmUsuario := nil;
end;

procedure TfrmUsuario.FormCreate(Sender: TObject);
begin
  inherited;
  oUsuarioDTO := TUsuarioDTO.Create;
  oEstadoDTO := TEstadoDTO.Create;
  oUsuarioControler := TUsuarioControler.Create;

  // implementa o TCamboBox
  oUsuarioControler.SelectEstado(cmbEstado);
  oUsuarioControler.SelectEstado(cmbCadEstado);
end;
end.
