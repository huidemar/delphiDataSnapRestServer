unit Controller.ContatoController;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, 
  Datasnap.DSAuth, Datasnap.DSProviderDataModuleAdapter, uDMServer,
  Datasnap.DSCommonServer, Rest.JSON, System.JSON, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TContatoController = class(TDSServerModule)
    ContatoTable: TFDQuery;
    Contato_emailTable: TFDQuery;
    Contato_telefoneTable: TFDQuery;
  private
    function Validar: string;
    { Private declarations }
  public
    { Public declarations }
    function Contatos: TJSONValue;
    function Contato(ID: Integer): TJSONValue;
    function updateContatos(Contatos:TJSONValue):TJSONValue;
    function acceptContatos(Contatos:TJSONValue):TJSONValue;
    function cancelContatos(Contatos:TJSONValue):TJSONValue;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TContatoController }

function TContatoController.acceptContatos(Contatos: TJSONValue): TJSONValue;
begin

end;

function TContatoController.cancelContatos(Contatos: TJSONValue): TJSONValue;
begin

end;

function TContatoController.Contato(ID: Integer): TJSONValue;
begin
//
end;

function TContatoController.Contatos: TJSONValue;
var
  Arr: TJSONArray;
  Obj: TJSONObject;
  I: Integer;
begin
  Arr := TJSONArray.Create;
  ContatoTable.Open();
  ContatoTable.First;
  while not ContatoTable.Eof do
    begin
      Obj := TJSONObject.Create;
      for I := 0 to ContatoTable.FieldCount-1 do
        begin
          Obj.AddPair(ContatoTable.Fields[I].FieldName, ContatoTable.Fields[I].AsString);
        end;
      Arr.Add(Obj);
      ContatoTable.Next;
    end;
  Result := Arr;
end;

function TContatoController.updateContatos(Contatos: TJSONValue): TJSONValue;
begin

end;

function TContatoController.Validar: string;
begin
  Result := 'funcionando!';
end;

end.

