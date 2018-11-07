unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, NLDJoystick, Vcl.StdCtrls,
  Vcl.ExtCtrls;

const
   myColor=clYellow;

type
  TfMain = class(TForm)
    NLDJoystick1: TNLDJoystick;
    pa0: TPanel;
    cb0: TComboBox;
    pa1: TPanel;
    cb1: TComboBox;
    pa2: TPanel;
    cb2: TComboBox;
    pa3: TPanel;
    cb3: TComboBox;
    pa4: TPanel;
    cb4: TComboBox;
    pa5: TPanel;
    cb5: TComboBox;
    pa6: TPanel;
    cb6: TComboBox;
    pa7: TPanel;
    cb7: TComboBox;
    pa8: TPanel;
    cb8: TComboBox;
    pa9: TPanel;
    cb9: TComboBox;
    pa10: TPanel;
    cb10: TComboBox;
    pa11: TPanel;
    cb11: TComboBox;
    pa12: TPanel;
    cb12: TComboBox;
    pa13: TPanel;
    cb13: TComboBox;
    pa14: TPanel;
    cb14: TComboBox;
    pa15: TPanel;
    cb15: TComboBox;
    edLine: TEdit;
    procedure NLDJoystick1ButtonDown(Sender: TNLDJoystick;
      const Buttons: TJoyButtons);
    procedure FormShow(Sender: TObject);
    procedure ResetColors;
    procedure NLDJoystick1Move(Sender: TNLDJoystick; const JoyPos: TJoyRelPos; const Buttons: TJoyButtons);
    procedure ComposeLine;
    procedure ComboChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMain: TfMain;

implementation

{$R *.dfm}

function lefts(S: string; n: integer): string;
begin
    result := Copy(S, 1, n);
end;

function rights(S: string; n: integer): string;
var
    len: integer;
begin
    len := length(S);
    if n < 0 then
        n := 0;
    if n > len then
        n := len;
    result := Copy(S, len - n + 1, n);
end;

function ldel(S: string; n: integer): string;
begin
    result := S;
    Delete(result, 1, n);
end;

function rdel(S: string; n: integer): string;
var
    len: integer;
begin
    len := length(S);
    if n < 0 then
        n := 0;
    if n > len then
        n := len;
    result := lefts(S, len - n);
end;

procedure TfMain.FormShow(Sender: TObject);
var
   i:Integer;
begin
   NLDJoystick1.Active:=True;

   for i := 0 to self.ControlCount-1 do
   begin
      if (self.Controls[i] is TComboBox) then
      begin
         if (self.Controls[i] as TComboBox).Name<>'cb0' then
            (self.Controls[i] as TComboBox).Items:=cb0.Items;
      end;
   end;

   cb0.ItemIndex:=1;
   cb1.ItemIndex:=2;
   cb2.ItemIndex:=3;
   cb3.ItemIndex:=4;
end;

procedure TfMain.NLDJoystick1ButtonDown(Sender: TNLDJoystick; const Buttons: TJoyButtons);
procedure SetColor(Button: TJoyButton; Panel:TPanel);
begin
   if Button in Buttons then
      Panel.Color:=myColor
   else
      Panel.Color:=clBtnFace;
end;
begin
   ResetColors;

   SetColor(JoyBtn1, pa4);
   SetColor(JoyBtn2, pa5);
   SetColor(JoyBtn3, pa6);
   SetColor(JoyBtn4, pa7);
   SetColor(JoyBtn5, pa8);
   SetColor(JoyBtn6, pa9);
   SetColor(JoyBtn7, pa10);
   SetColor(JoyBtn8, pa11);
   SetColor(JoyBtn9, pa12);
   SetColor(JoyBtn10, pa13);
   SetColor(JoyBtn11, pa14);
   SetColor(JoyBtn12, pa15);
end;

procedure TfMain.NLDJoystick1Move(Sender: TNLDJoystick; const JoyPos: TJoyRelPos; const Buttons: TJoyButtons);
begin
   ResetColors;

   if JoyPos.X=1 then
      pa0.Color:=myColor
   else
      pa0.Color:=clBtnFace;

   if JoyPos.X=-1 then
      pa1.Color:=myColor
   else
      pa1.Color:=clBtnFace;

   if JoyPos.Y=1 then
      pa2.Color:=myColor
   else
      pa2.Color:=clBtnFace;

   if JoyPos.Y=-1 then
      pa3.Color:=myColor
   else
      pa3.Color:=clBtnFace;
end;

procedure TfMain.ResetColors;
var
   i:Integer;
begin
   for i := 0 to self.ControlCount-1 do
   begin
      if (self.Controls[i] is TPanel) then
         (self.Controls[i] as TPanel).color:=clBtnFace;
   end;
end;

procedure TfMain.ComboChange(Sender: TObject);
begin
   ComposeLine;
end;

procedure TfMain.ComposeLine;
function GetHex(ComboBox: TComboBox):Integer;
const Values: array [1..21] of integer = ($1, $2, $4, $8, $10, $20, $40, $80, $100, $200, $400, $800, $1000, $2000, $4000, $8000, $80+$10, $80+$20, $80+$400, $80+$800, $80+$40);
begin
   if (ComboBox.ItemIndex=0) or (ComboBox.ItemIndex=-1) then
      Result:=0
   else
      Result:=Values[ComboBox.ItemIndex];


end;
var
   s:string;
begin
   s:=Format('joystick_remap=%s,%s,%x,%x,%x,%x,%x,%x,%x,%x,%x,%x,%x,%x,%x,%x,%x,%x',
      [IntToHex(NLDJoystick1.Mid, 4), IntToHex(NLDJoystick1.Pid, 4),
      GetHex(cb0), GetHex(cb1), GetHex(cb2), GetHex(cb3),
      GetHex(cb4), GetHex(cb5), GetHex(cb6), GetHex(cb7),
      GetHex(cb8), GetHex(cb9), GetHex(cb10), GetHex(cb11),
      GetHex(cb12), GetHex(cb13), GetHex(cb14), GetHex(cb15)]);

   while rights(s,2)=',0' do
      s:=rdel(s,2);

   edLine.Text:=s;
end;

end.
