unit Incoice_A;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, Db, ADODB, DBCtrls, StdCtrls, TntDBGrids,
  DBGridPlusA, Buttons, TntStdCtrls, UserDlg_UniCode, DosMove;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ADOTable1: TADOTable;
    ADOC: TADOConnection;
    ADOTable2: TADOTable;
    ADOTable1Da1: TWideStringField;
    ADOTable1Da2: TWideStringField;
    ADOTable1Da3: TWideStringField;
    ADOTable1Da4: TWideStringField;
    Button1: TButton;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    ADOTable2Number: TWideStringField;
    ADOTable2IsOk: TBooleanField;
    DBGridPlusA1: TDBGridPlusA;
    BitBtn1: TBitBtn;
    ADOTable1Desc: TWideStringField;
    ADOTable1Da5: TWideStringField;
    TntLabel1: TTntLabel;
    ADOTable1Da6: TWideStringField;
    usd1: TUserDlg_UniCode;
    labIsRight: TTntLabel;
    DosMove1: TDosMove;
    ADOTable1Da7: TWideStringField;
    ADOTable1Da8: TWideStringField;
    ADOTable1Da9: TWideStringField;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ADOTable2AfterPost(DataSet: TDataSet);
    procedure ADOTable2NumberChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  vihsu:integer;
  vfgPost:Boolean;
implementation

{$R *.DFM}

function _Left(Str:String ; n:integer): String;
var r:String;
begin
  r:='';
  if (n>Length(Str)) then
     begin
       result:=Str;
       exit;
     end;
  r:=Copy(Str,1,n);
  result:=r;
end;

procedure TForm1.Button1Click(Sender: TObject);
var zDat:array[1..9] of string;
    zValue:string;
    ziCnt:Integer;
begin
 ADOTable2.Refresh;
 ADOTable2.First;
 zDat[1]:=_Left(ADOTable1Da1.Value,3);
 zDat[2]:=_Left(ADOTable1Da2.Value,3);
 zDat[3]:=_Left(ADOTable1Da3.Value,3);
 zDat[4]:=_Left(ADOTable1Da4.Value,3);
 zDat[5]:=_Left(ADOTable1Da5.Value,3);
 zDat[6]:=_Left(ADOTable1Da6.Value,3);
 zDat[7]:=_Left(ADOTable1Da7.Value,3);
 zDat[8]:=_Left(ADOTable1Da8.Value,3);
 zDat[9]:=_Left(ADOTable1Da9.Value,3);
 ziCnt:=0;
 while not(ADOTable2.eof) do
 begin
  zValue:=_Left(ADOTable2Number.Value,3);
  ADOTable2.edit;
  if (zValue=zDat[1]) or (zValue=zDat[2]) or (zValue=zDat[3]) or
     (zValue=zDat[4]) or (zValue=zDat[5]) or (zValue=zDat[6]) or
     (zValue=zDat[7]) or (zValue=zDat[8]) or (zValue=zDat[9]) then
  begin
   ADOTable2IsOk.Value:=true;
   ziCnt:=ziCnt+1;
  end
  else
   ADOTable2IsOk.Value:=false;
  ADOTable2.post;
  ADOTable2.Next;
 end;
 labIsRight.Caption:=IntToStr(ziCnt);
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
 if usd1.Show=0 then
 begin
  ADOTable2.First;
  ADOTable2.First;
  while not(ADOTable2.eof) do
   ADOTable2.Delete;
 end;   
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
 ADOTable1.Open;
 ADOTable2.Open;
 ADOTable1.Last;
end;

procedure TForm1.ADOTable2AfterPost(DataSet: TDataSet);
begin
 TntLabel1.Caption:=inttostr(ADOTable2.RecordCount);
end;

procedure TForm1.ADOTable2NumberChange(Sender: TField);
var zDat:array[1..9] of string;
    zValue:string;
    ziCnt:Integer;
begin
 if not(vfgPost) then
 begin
  vfgPost:=True;
  zDat[1]:=_Left(ADOTable1Da1.Value,3);
  zDat[2]:=_Left(ADOTable1Da2.Value,3);
  zDat[3]:=_Left(ADOTable1Da3.Value,3);
  zDat[4]:=_Left(ADOTable1Da4.Value,3);
  zDat[5]:=_Left(ADOTable1Da5.Value,3);
  zDat[6]:=_Left(ADOTable1Da6.Value,3);
  zDat[7]:=_Left(ADOTable1Da7.Value,3);
  zDat[8]:=_Left(ADOTable1Da8.Value,3);
  zDat[9]:=_Left(ADOTable1Da9.Value,3);
  ziCnt:=0;

   zValue:=_Left(ADOTable2Number.Value,3);
   ADOTable2.edit;
   if (zValue=zDat[1]) or (zValue=zDat[2]) or (zValue=zDat[3]) or
     (zValue=zDat[4]) or (zValue=zDat[5]) or (zValue=zDat[6]) or
     (zValue=zDat[7]) or (zValue=zDat[8]) or (zValue=zDat[9]) then
   begin
    ADOTable2IsOk.Value:=true;
    ziCnt:=ziCnt+1;
   end
   else
    ADOTable2IsOk.Value:=false;
   ADOTable2.post;
 end;
 vfgPost:=False;
 labIsRight.Caption:=IntToStr(ziCnt);

 //ADOTable2.append;
end;

end.
