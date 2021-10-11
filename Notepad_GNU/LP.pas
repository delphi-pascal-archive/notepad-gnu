unit LP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShellApi, StdCtrls, jpeg, ExtCtrls;

type
  TAboutFrm = class(TForm)
    logo: TImage;
    tx1: TLabel;
    tx2: TLabel;
    Cancel: TButton;
    tx3: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure tx3MouseLeave(Sender: TObject);
    procedure tx3MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
    procedure tx3MouseUp(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure tx3Click(Sender: TObject);

  private

  public

  end;

var
  AboutFrm: TAboutFrm;

implementation

{$R *.dfm}

procedure TAboutFrm.FormKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
if Key = vk_Escape then
Close;
end;

procedure TAboutFrm.FormDestroy(Sender: TObject);
begin
AboutFrm.OnActivate := nil;
Cancel.Free;
logo.Free;
tx1.Free;
tx2.Free;
tx3.Free;
end;

procedure TAboutFrm.tx3MouseLeave(Sender: TObject);
begin
tx3.Font.Color := clBlack;
tx3.Font.Style := [];
end;

procedure TAboutFrm.tx3MouseMove(Sender: TObject; Shift: TShiftState; X,
Y: Integer);
begin
tx3.Font.Color := clRed;
tx3.Font.Style := [fsUnderline];
end;

procedure TAboutFrm.tx3MouseUp(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
tx3.Font.Color := clBlack;
tx3.Font.Style := [];
end;

procedure TAboutFrm.tx3Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'http://www.viacoding.mylivepage.ru/', nil,nil, Sw_ShowNormal);
end;

end.
