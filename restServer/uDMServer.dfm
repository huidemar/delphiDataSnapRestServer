object DmServer: TDmServer
  OldCreateOrder = False
  Height = 296
  Width = 579
  object DSRestServer: TDSServer
    Left = 64
  end
  object DSHTTPRestService: TDSHTTPService
    Server = DSRestServer
    Filters = <>
    Left = 64
    Top = 56
  end
  object DSServerClassContatoController: TDSServerClass
    OnGetClass = DSServerClassContatoControllerGetClass
    Server = DSRestServer
    Left = 288
    Top = 8
  end
  object ResttesteConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=RestTeste')
    Connected = True
    LoginPrompt = False
    Left = 211
    Top = 106
  end
end
