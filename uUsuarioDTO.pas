unit uUsuarioDTO;

interface


type
  TUsuarioDTO = class
  private
    FLogradouro: String;
    FIdMunicipio: Integer;
    FEmail: String;
    FDataNascimento: TDateTime;
    FBairro: String;
    FIdUsuario: Integer;
    FNumeroLogradouro: Integer;
    FSenha: string;
    FComplemento: String;
    FLogin: String;
    FNome: String;
    FTelefone: Currency;
    FCelular: Currency;
    procedure SetBairro(const Value: String);
    procedure SetCelular(const Value: Currency);
    procedure SetComplemento(const Value: String);
    procedure SetDataNascimento(const Value: TDateTime);
    procedure SetEmail(const Value: String);
    procedure SetIdMunicipio(const Value: Integer);
    procedure SetIdUsuario(const Value: Integer);
    procedure SetLogin(const Value: String);
    procedure SetLogradouro(const Value: String);
    procedure SetNome(const Value: String);
    procedure SetNumeroLogradouro(const Value: Integer);
    procedure SetSenha(const Value: string);
    procedure SetTelefone(const Value: Currency);
  public
    property IdUsuario: Integer read FIdUsuario write SetIdUsuario;
    property Nome: String read FNome write SetNome;
    property Logradouro: String read FLogradouro write SetLogradouro;
    property NumeroLogradouro: Integer read FNumeroLogradouro write SetNumeroLogradouro;
    property IdMunicipio: Integer read FIdMunicipio write SetIdMunicipio;
    property Bairro: String read FBairro write SetBairro;
    property Complemento: String read FComplemento write SetComplemento;
    property Telefone: Currency read FTelefone write SetTelefone;
    property Celular: Currency read FCelular write SetCelular;
    property DataNascimento: TDateTime read FDataNascimento write SetDataNascimento;
    property Email: String read FEmail write SetEmail;
    property Login: String read FLogin write SetLogin;
    property Senha: string read FSenha write SetSenha;
  end;
implementation

{ TUsuario }

procedure TUsuarioDTO.SetBairro(const Value: String);
begin
  FBairro := Value;
end;

procedure TUsuarioDTO.SetCelular(const Value: Currency);
begin
  FCelular := Value;
end;

procedure TUsuarioDTO.SetComplemento(const Value: String);
begin
  FComplemento := Value;
end;

procedure TUsuarioDTO.SetDataNascimento(const Value: TDateTime);
begin
  FDataNascimento := Value;
end;

procedure TUsuarioDTO.SetEmail(const Value: String);
begin
  FEmail := Value;
end;

procedure TUsuarioDTO.SetIdMunicipio(const Value: Integer);
begin
  FIdMunicipio := Value;
end;

procedure TUsuarioDTO.SetIdUsuario(const Value: Integer);
begin
  FIdUsuario := Value;
end;

procedure TUsuarioDTO.SetLogin(const Value: String);
begin
  FLogin := Value;
end;

procedure TUsuarioDTO.SetLogradouro(const Value: String);
begin
  FLogradouro := Value;
end;

procedure TUsuarioDTO.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TUsuarioDTO.SetNumeroLogradouro(const Value: Integer);
begin
  FNumeroLogradouro := Value;
end;

procedure TUsuarioDTO.SetSenha(const Value: string);
begin
  FSenha := Value;
end;

procedure TUsuarioDTO.SetTelefone(const Value: Currency);
begin
  FTelefone := Value;
end;

end.
