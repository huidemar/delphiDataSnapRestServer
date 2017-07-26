unit Model.Telefone;

interface

type
  TTelefone=class
  private
    FDDD: string;
    FNumero: String;
    procedure SetDDD(const Value: string);
    procedure SetNumero(const Value: String);
  published
    property DDD:string read FDDD write SetDDD;
    property Numero:String read FNumero write SetNumero;
  end;

implementation

{ TTelefone }

procedure TTelefone.SetDDD(const Value: string);
begin
  FDDD := Value;
end;

procedure TTelefone.SetNumero(const Value: String);
begin
  FNumero := Value;
end;

end.
