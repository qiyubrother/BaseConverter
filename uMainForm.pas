unit uMainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    editDecimal: TEdit;
    Label1: TLabel;
    editHex: TEdit;
    Label2: TLabel;
    editBinary: TEdit;
    Label4: TLabel;
    btnClear: TButton;
    btnExit: TButton;
    procedure editDecimalChange(Sender: TObject);
    procedure editHexChange(Sender: TObject);
    procedure editOctalChange(Sender: TObject);
    procedure editBinaryChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnClearClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function binToDec(Value :string) : integer;
function DecToBin(value : Integer; MinBit : Integer) : string;
 
var
  Form1: TForm1;
  num: Integer;
implementation

{$R *.dfm}

procedure TForm1.editDecimalChange(Sender: TObject);
begin
try
  if editDecimal.Focused then
  begin
    num := StrToInt(editDecimal.Text);
    editHex.Text := Format('%.2x', [num]);
    editBinary.Text := DecToBin(num, 8);
  end;
except on e:Exception do
  begin
      editHex.Clear;
      editBinary.Clear;
  end;
end;

end;

procedure TForm1.editHexChange(Sender: TObject);
begin
try
  if editHex.Focused then
  begin
    num := StrToInt('$' + editHex.Text);
    editDecimal.Text := IntToStr(num);
    editBinary.Text := DecToBin(num, 8);
  end;
except on e:Exception do
  begin
      editDecimal.Clear;
      editBinary.Clear;
  end;
end;

end;

procedure TForm1.editOctalChange(Sender: TObject);
begin
;
end;

procedure TForm1.editBinaryChange(Sender: TObject);
begin
try
  if editBinary.Focused then
  begin
    num := binToDec(editBinary.Text);
    editDecimal.Text := IntToStr(num);
    editHex.Text := Format('%.2x', [num]);
  end;
except on e:Exception do
  begin
      editDecimal.Clear;
      editBinary.Clear;
  end;
end;
end;

{ 二进制转十进制 }
Function binToDec(Value :string) : integer;
var
str : String;
Int : Integer;
i : integer;
begin
    Str := UpperCase(Value);
    Int := 0;
    FOR i := 1 TO Length(str) DO
    Int := Int * 2+ ORD(str[i]) - 48;
    Result := Int;
end;

{ 十进制转二进制}
function DecToBin(value : Integer; MinBit : Integer) : string;
begin
  result := '';
  while (value > 0) do
  begin
    if (Trunc(value / 2) * 2 = value) then
      result := '0' + result
    else
      Result := '1' + Result;
    value := Trunc(value / 2);
  end;

  //填满MaxBit位
  while (Length(Result) < MinBit) Do Result := '0' + Result;
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
  self.KeyPreview := true;
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    Application.Terminate;
end;

procedure TForm1.btnClearClick(Sender: TObject);
begin
  editDecimal.Clear;
  editHex.Clear;
  editBinary.Clear;
  editDecimal.SetFocus;
end;

procedure TForm1.btnExitClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.

