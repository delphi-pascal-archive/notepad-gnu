unit GP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin;

type
  TGoFrm = class(TForm)
    OK: TButton;
    Cancel: TButton;
    tx1: TLabel;
    NumberEd: TSpinEdit;
    
    procedure OKClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private

  public

  end;

var
  GoFrm: TGoFrm;

implementation

uses NP;

{$R *.dfm}

procedure TGoFrm.OKClick(Sender: TObject);
begin
with MainFrm.Notepad do
begin
selstart := perform(EM_LINEINDEX, NumberEd.Value, 0);
perform(EM_SCROLLCARET, 0, 0);
end;
end;

procedure TGoFrm.FormDestroy(Sender: TObject);
begin
GoFrm.OnActivate := nil;
NumberEd.Free;
Cancel.Free;
tx1.Free;
OK.Free;
end;

procedure TGoFrm.FormKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
if Key = vk_Escape then
Close;
end;

procedure TGoFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
NumberEd.SetFocus;
end;

end.
