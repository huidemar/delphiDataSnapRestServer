object ContatoController: TContatoController
  OldCreateOrder = False
  Height = 211
  Width = 216
  object ContatoTable: TFDQuery
    Connection = DmServer.ResttesteConnection
    SQL.Strings = (
      'SELECT * FROM CONTATO')
    Left = 42
    Top = 14
  end
  object Contato_emailTable: TFDQuery
    Connection = DmServer.ResttesteConnection
    SQL.Strings = (
      'SELECT * FROM CONTATO_EMAIL')
    Left = 43
    Top = 68
  end
  object Contato_telefoneTable: TFDQuery
    Connection = DmServer.ResttesteConnection
    SQL.Strings = (
      'SELECT * FROM CONTATO_TELEFONE')
    Left = 42
    Top = 119
  end
end
