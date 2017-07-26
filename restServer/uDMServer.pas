unit uDMServer;

interface

uses
  System.SysUtils, System.Classes, IPPeerServer, Datasnap.DSCommonServer,
  Datasnap.DSHTTP, Datasnap.DSServer, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client;

type
  TDmServer = class(TDataModule)
    DSRestServer: TDSServer;
    DSHTTPRestService: TDSHTTPService;
    DSServerClassContatoController: TDSServerClass;
    ResttesteConnection: TFDConnection;
    procedure DSServerClassContatoControllerGetClass(
      DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmServer: TDmServer;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Controller.ContatoController;

{$R *.dfm}

procedure TDmServer.DSServerClassContatoControllerGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := Controller.ContatoController.TContatoController;
end;

end.
