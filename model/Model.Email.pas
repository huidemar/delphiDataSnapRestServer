unit Model.Email;

interface

type
  TEmail=class
  private
    FNome: string;
    FTipo: string;
    procedure SetNome(const Value: string);
    procedure SetTipo(const Value: string);
  published
    property Nome:string read FNome write SetNome;
    property Tipo:string read FTipo write SetTipo;
  end;

implementation

{ TEmail }

procedure TEmail.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TEmail.SetTipo(const Value: string);
begin
  FTipo := Value;
end;

end.
