object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 526
  ClientWidth = 843
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Grid: TDBGrid
    Left = 24
    Top = 56
    Width = 441
    Height = 149
    DataSource = DataSource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 216
    Top = 32
    Width = 240
    Height = 25
    DataSource = DataSource
    TabOrder = 1
  end
  object FeWebTest: TFDConnection
    Params.Strings = (
      'Database=FeWebTest'
      'Server=GHIRELLI\SQLEXPRESS'
      'OSAuthent=Yes'
      'ApplicationName=Enterprise/Architect/Ultimate'
      'Workstation=GHIRELLI'
      'MARS=yes'
      'DriverID=MSSQL')
    Connected = True
    Left = 84
    Top = 20
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FeWebTest
    SQL.Strings = (
      'SELECT IdIva, '
      '       DsIva, '
      '       DsIvaEstesa, '
      '       Aliquota, '
      '       IdNatura, '
      '       FlOmaggio, '
      '       FlBollo, '
      '       DataObsoleto, '
      '       VersionID'
      'FROM   COM_AliquoteIVA')
    Left = 124
    Top = 20
  end
  object DataSource: TDataSource
    DataSet = FDQuery1
    Left = 164
    Top = 20
  end
end
