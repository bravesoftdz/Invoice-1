object Form1: TForm1
  Left = 173
  Top = 127
  Width = 883
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 389
    Width = 867
    Height = 53
    Align = alBottom
    TabOrder = 1
    object TntLabel1: TTntLabel
      Left = 250
      Top = 17
      Width = 61
      Height = 26
      Alignment = taCenter
      AutoSize = False
      Caption = '0'
      Color = 16777088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object labIsRight: TTntLabel
      Left = 643
      Top = 15
      Width = 38
      Height = 26
      Alignment = taCenter
      AutoSize = False
      Caption = '0'
      Color = 8454143
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Button1: TButton
      Left = 564
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Check'
      TabOrder = 0
      OnClick = Button1Click
    end
    object DBNavigator1: TDBNavigator
      Left = 24
      Top = 15
      Width = 218
      Height = 25
      DataSource = DataSource1
      VisibleButtons = [nbInsert, nbPost]
      TabOrder = 1
    end
    object DBNavigator2: TDBNavigator
      Left = 324
      Top = 15
      Width = 146
      Height = 25
      DataSource = DataSource2
      VisibleButtons = [nbInsert, nbPost]
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 478
      Top = 15
      Width = 58
      Height = 25
      Caption = 'Delete All'
      TabOrder = 3
      OnClick = BitBtn1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 867
    Height = 389
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 605
      Height = 387
      Align = alLeft
      DataSource = DataSource1
      ImeName = '中文(?体) - 搜狗拼音?入法'
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Desc'
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Da1'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Da2'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Da3'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Da4'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Da5'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Da6'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Da7'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Da8'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Da9'
          Width = 52
          Visible = True
        end>
    end
    object DBGridPlusA1: TDBGridPlusA
      Left = 606
      Top = 1
      Width = 260
      Height = 387
      Align = alClient
      DataSource = DataSource2
      ImeName = '中文(?体) - 搜狗拼音?入法'
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      DefaultRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'Number'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IsOk'
          ReadOnly = True
          Visible = True
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 285
    Top = 52
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 286
    Top = 98
  end
  object ADOTable1: TADOTable
    Connection = ADOC
    CursorType = ctStatic
    TableName = 'Num'
    Left = 336
    Top = 58
    object ADOTable1Desc: TWideStringField
      FieldName = 'Desc'
      Size = 50
    end
    object ADOTable1Da1: TWideStringField
      FieldName = 'Da1'
      Size = 50
    end
    object ADOTable1Da2: TWideStringField
      FieldName = 'Da2'
      Size = 8
    end
    object ADOTable1Da3: TWideStringField
      FieldName = 'Da3'
      Size = 8
    end
    object ADOTable1Da4: TWideStringField
      FieldName = 'Da4'
      Size = 8
    end
    object ADOTable1Da5: TWideStringField
      FieldName = 'Da5'
      Size = 8
    end
    object ADOTable1Da6: TWideStringField
      FieldName = 'Da6'
      Size = 8
    end
    object ADOTable1Da7: TWideStringField
      FieldName = 'Da7'
      Size = 8
    end
    object ADOTable1Da8: TWideStringField
      FieldName = 'Da8'
      Size = 8
    end
    object ADOTable1Da9: TWideStringField
      FieldName = 'Da9'
      Size = 50
    end
  end
  object ADOC: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=.\Dat' +
      'aBase.mdb;Mode=Share Deny None;Jet OLEDB:System database="";Jet ' +
      'OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:' +
      'Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global' +
      ' Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLE' +
      'DB:New Database Password="";Jet OLEDB:Create System Database=Fal' +
      'se;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale ' +
      'on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;' +
      'Jet OLEDB:SFP=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 401
    Top = 61
  end
  object ADOTable2: TADOTable
    Connection = ADOC
    CursorType = ctStatic
    AfterPost = ADOTable2AfterPost
    TableName = 'Val'
    Left = 335
    Top = 95
    object ADOTable2Number: TWideStringField
      DisplayWidth = 14
      FieldName = 'Number'
      OnChange = ADOTable2NumberChange
      Size = 8
    end
    object ADOTable2IsOk: TBooleanField
      DisplayWidth = 14
      FieldName = 'IsOk'
    end
  end
  object usd1: TUserDlg_UniCode
    Buttons.WideStrings = (
      '&OK'
      '&Cancel')
    Message.WideStrings = (
      '確定全部刪除嗎？')
    Message.WideStrings_UTF7 = (
      '+eLpbmlFokOhSKpZkVc7/Hw')
    WAV = wavNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Icon = icNone
    BackColor = clBtnFace
    Default = 0
    Cancel = 1
    ButtonsMinWidth = 75
    ButtonsSameWidth = True
    ButtonsShowGlyph = False
    ButtonsCursor = crDefault
    Left = 405
    Top = 100
  end
  object DosMove1: TDosMove
    Active = True
    SelectPageOptions = []
    Left = 348
    Top = 132
  end
end
