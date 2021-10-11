unit NP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, StdCtrls, ShellApi, XpMan, StdActns, ActnList,
  Registry, IniFiles, Printers, CommDlg, ExtCtrls, AppEvnts, ComObj, ClipBrd,
  ActiveX,
  
  SynEdit, SynMemo, SynEditHighlighter, SynHighlighterPas,
  SynHighlighterEiffel, SynHighlighterCpp, SynHighlighterRC,
  SynHighlighterDOT, SynHighlighterURI, SynHighlighterLDraw,
  SynHighlighterHaskell, SynHighlighterTeX, SynHighlighterCPM,
  SynHighlighterUnreal, SynHighlighterIDL, SynHighlighterMsg,
  SynHighlighterProgress, SynHighlighterGalaxy, SynHighlighterBaan,
  SynHighlighterInno, SynHighlighterIni, SynHighlighterDfm,
  SynHighlighterSml, SynHighlighterModelica, SynHighlighterDml,
  SynHighlighterST, SynHighlighterHP48, SynHighlighterHC11,
  SynHighlighterAsm, SynHighlighterADSP21xx, SynHighlighterSDD,
  SynHighlighterSQL, SynHighlighterFoxpro, SynHighlighterCache,
  SynHighlighterCAC, SynHighlighterUNIXShellScript, SynHighlighterRuby,
  SynHighlighterGWS, SynHighlighterTclTk, SynHighlighterPython,
  SynHighlighterPerl, SynHighlighterKix, SynHighlighterBat,
  SynHighlighterAWK, SynHighlighterVrml97, SynHighlighterXML,
  SynHighlighterVBScript, SynHighlighterPHP, SynHighlighterJScript,
  SynHighlighterHtml, SynHighlighterCSS, SynHighlighterCS,
  SynHighlighterCobol, SynHighlighterVB, SynHighlighterM3,
  SynHighlighterJava, SynHighlighterGeneral, SynHighlighterFortran,
  Buttons, SynEditExport, SynExportRTF, SynExportHTML;

  function OpenSaveFileDialog(ParentHandle: THandle; const DefExt, Filter, InitialDir,
  Title: string; var FileName: string; IsOpenDialog: Boolean): Boolean;

  const
   AlignCenter = Wm_User + 1024;

type
  TMainFrm = class(TForm)
    MainMenu: TMainMenu;
    FileItem: TMenuItem;
    CreateItem: TMenuItem;
    OpenItem: TMenuItem;
    SaveItem: TMenuItem;
    SaveAsItem: TMenuItem;
    sp1: TMenuItem;
    PageSetupItem: TMenuItem;
    PrintItem: TMenuItem;
    sp2: TMenuItem;
    CloseItem: TMenuItem;
    EditItem: TMenuItem;
    CopyItem: TMenuItem;
    CutItem: TMenuItem;
    DeleteItem: TMenuItem;
    PasteItem: TMenuItem;
    SelectAllItem: TMenuItem;
    UndoItem: TMenuItem;
    sp3: TMenuItem;
    sp4: TMenuItem;
    sp5: TMenuItem;
    FindItem: TMenuItem;
    ReplaceItem: TMenuItem;
    GoToItem: TMenuItem;
    FormatItem: TMenuItem;
    ViewItem: TMenuItem;
    WordWrapItem: TMenuItem;
    FontItem: TMenuItem;
    StatusBarItem: TMenuItem;
    HelpItem: TMenuItem;
    AboutItem: TMenuItem;
    SourceCodeItem: TMenuItem;
    sp7: TMenuItem;
    Send1tem: TMenuItem;
    sp6: TMenuItem;
    SysInfoItem: TMenuItem;
    ActionList: TActionList;
    EditCut: TEditCut;
    EditCopy: TEditCopy;
    EditPaste: TEditPaste;
    EditSelectAll: TEditSelectAll;
    EditUndo: TEditUndo;
    EditDelete: TEditDelete;
    DateTimeItem: TMenuItem;
    FontDlg: TFontDialog;
    FindDlg: TFindDialog;
    ReplaceDlg: TReplaceDialog;
    PasteFromItem: TMenuItem;
    ApplicationEvents: TApplicationEvents;
    PrinterSetupDlg: TPrinterSetupDialog;
    HomePageItem: TMenuItem;
    CodeItem: TMenuItem;
    ReadOnlyItem: TMenuItem;
    NewWinItem: TMenuItem;
    WINDOS1: TMenuItem;
    DOSWIN1: TMenuItem;
    dos1: TMenuItem;
    doswin2: TMenuItem;
    ANSIKOI81: TMenuItem;
    Koi8BANSI1: TMenuItem;
    EditInMSWordItem: TMenuItem;
    SendMailItem: TMenuItem;
    Send2tem: TMenuItem;
    StayOnTopItem: TMenuItem;
    FullScreenItem: TMenuItem;
    sp9: TMenuItem;
    sp10: TMenuItem;
    sp11: TMenuItem;
    sp12: TMenuItem;
    ToolsItem: TMenuItem;
    RunItem: TMenuItem;
    SearchItem: TMenuItem;
    FindNextItem: TMenuItem;
    sp8: TMenuItem;
    ZoomInItem: TMenuItem;
    ZoomOutItem: TMenuItem;
    FillColorItem: TMenuItem;
    IntegrationItem: TMenuItem;
    ColorDlg: TColorDialog;
    DragDropItem: TMenuItem;
    InternetGNUProjectItem: TMenuItem;
    NotepadContextMenu: TPopupMenu;
    Copy2Item: TMenuItem;
    Cut2Item: TMenuItem;
    Delete2Item: TMenuItem;
    Paste2Item: TMenuItem;
    SelectAll2Item: TMenuItem;
    Undo2Item: TMenuItem;
    sp18: TMenuItem;
    sp19: TMenuItem;
    Notepad: TSynMemo;
    StatusBar: TStatusBar;
    sp13: TMenuItem;
    sp14: TMenuItem;
    sp15: TMenuItem;
    sp16: TMenuItem;
    sp17: TMenuItem;
    NewFromBufferItem: TMenuItem;
    SynCppSyn: TSynCppSyn;
    SynEiffelSyn: TSynEiffelSyn;
    SynFortranSyn: TSynFortranSyn;
    SynGeneralSyn: TSynGeneralSyn;
    SynJavaSyn: TSynJavaSyn;
    SynM3Syn: TSynM3Syn;
    SynPasSyn: TSynPasSyn;
    SynVBSyn: TSynVBSyn;
    SynCobolSyn: TSynCobolSyn;
    SynCSSyn: TSynCSSyn;
    SynCssSyn: TSynCssSyn;
    SynHTMLSyn: TSynHTMLSyn;
    SynJScriptSyn: TSynJScriptSyn;
    SynPHPSyn: TSynPHPSyn;
    SynVBScriptSyn: TSynVBScriptSyn;
    SynXMLSyn: TSynXMLSyn;
    SynVrml97Syn: TSynVrml97Syn;
    SynAWKSyn: TSynAWKSyn;
    SynBatSyn: TSynBatSyn;
    SynKixSyn: TSynKixSyn;
    SynPerlSyn: TSynPerlSyn;
    SynPythonSyn: TSynPythonSyn;
    SynTclTkSyn: TSynTclTkSyn;
    SynGWScriptSyn: TSynGWScriptSyn;
    SynRubySyn: TSynRubySyn;
    SynUNIXShellScriptSyn: TSynUNIXShellScriptSyn;
    SynCACSyn: TSynCACSyn;
    SynCacheSyn: TSynCacheSyn;
    SynFoxproSyn: TSynFoxproSyn;
    SynSQLSyn: TSynSQLSyn;
    SynSDDSyn: TSynSDDSyn;
    SynADSP21xxSyn: TSynADSP21xxSyn;
    SynAsmSyn: TSynAsmSyn;
    SynHC11Syn: TSynHC11Syn;
    SynHP48Syn: TSynHP48Syn;
    SynSTSyn: TSynSTSyn;
    SynDmlSyn: TSynDmlSyn;
    SynModelicaSyn: TSynModelicaSyn;
    SynSMLSyn: TSynSMLSyn;
    SynDfmSyn: TSynDfmSyn;
    SynIniSyn: TSynIniSyn;
    SynInnoSyn: TSynInnoSyn;
    SynBaanSyn: TSynBaanSyn;
    SynGalaxySyn: TSynGalaxySyn;
    SynProgressSyn: TSynProgressSyn;
    SynMsgSyn: TSynMsgSyn;
    SynIdlSyn: TSynIdlSyn;
    SynUnrealSyn: TSynUnrealSyn;
    SynCPMSyn: TSynCPMSyn;
    SynTeXSyn: TSynTeXSyn;
    SynHaskellSyn: TSynHaskellSyn;
    SynLDRSyn: TSynLDRSyn;
    SynURISyn: TSynURISyn;
    SynDOTSyn: TSynDOTSyn;
    SynRCSyn: TSynRCSyn;
    HighLightItem: TMenuItem;
    CItem: TMenuItem;
    EiffeItem: TMenuItem;
    FortranItem: TMenuItem;
    GeneralItem: TMenuItem;
    JavaItem: TMenuItem;
    M3Item: TMenuItem;
    PasItem: TMenuItem;
    VBItem: TMenuItem;
    CobolItem: TMenuItem;
    CPlusItem: TMenuItem;
    CssItem: TMenuItem;
    HTMItem: TMenuItem;
    JScriptItem: TMenuItem;
    PHPItem: TMenuItem;
    VBScriptItem: TMenuItem;
    XMLItem: TMenuItem;
    Vrml97Item: TMenuItem;
    AWKItem: TMenuItem;
    MSBatItem: TMenuItem;
    KixItem: TMenuItem;
    PerlItem: TMenuItem;
    PythonItem: TMenuItem;
    clTkItem: TMenuItem;
    GWScriptItem: TMenuItem;
    RubyItem: TMenuItem;
    UNIXShellScripItem: TMenuItem;
    CACItem: TMenuItem;
    CacheItem: TMenuItem;
    FoxproItem: TMenuItem;
    SQLItem: TMenuItem;
    SDDItem: TMenuItem;
    ADSP21xxItem: TMenuItem;
    AsmItem: TMenuItem;
    HC11Item: TMenuItem;
    HP48Item: TMenuItem;
    STItem: TMenuItem;
    DmlItem: TMenuItem;
    ModelicaItem: TMenuItem;
    SMLItem: TMenuItem;
    DfmItem: TMenuItem;
    IniItem: TMenuItem;
    InnoItem: TMenuItem;
    BaanItem: TMenuItem;
    GalaxyItem: TMenuItem;
    ProgressItem: TMenuItem;
    MsgItem: TMenuItem;
    IdlItem: TMenuItem;
    UnrealItem: TMenuItem;
    CPMItem: TMenuItem;
    eXItem: TMenuItem;
    HaskellItem: TMenuItem;
    LDRItem: TMenuItem;
    URIItem: TMenuItem;
    DOTItem: TMenuItem;
    RCSynItem: TMenuItem;
    PropertiesItem: TMenuItem;
    Export1: TMenuItem;
    CopyHighLightToClipBoardITem: TMenuItem;
    N2: TMenuItem;
    ExportToFileItem: TMenuItem;
    N3: TMenuItem;
    ExportAsRTFItem: TMenuItem;
    ExportAsHTMLItem: TMenuItem;
    SaveDlg: TSaveDialog;
    SynExporterHTML: TSynExporterHTML;
    SynExporterRTF: TSynExporterRTF;
    sp20: TMenuItem;
    AllFormatItem: TMenuItem;

    procedure NotepadChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure OpenItemClick(Sender: TObject);
    procedure SaveItemClick(Sender: TObject);
    procedure SaveAsItemClick(Sender: TObject);
    procedure CreateItemClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure StatusBarItemClick(Sender: TObject);
    procedure SourceCodeItemClick(Sender: TObject);
    procedure AboutItemClick(Sender: TObject);
    procedure WordWrapItemClick(Sender: TObject);
    procedure Send1temClick(Sender: TObject);
    procedure SysInfoItemClick(Sender: TObject);
    procedure CloseItemClick(Sender: TObject);
    procedure FontItemClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DateTimeItemClick(Sender: TObject);
    procedure GoToItemClick(Sender: TObject);
    procedure PrintItemClick(Sender: TObject);
    procedure PageSetupItemClick(Sender: TObject);
    procedure PasteFromItemClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ApplicationEventsIdle(Sender: TObject; var Done: Boolean);
    procedure FindDlgFind(Sender: TObject);
    procedure FindItemClick(Sender: TObject);
    procedure ReplaceDlgFind(Sender: TObject);
    procedure ReplaceDlgReplace(Sender: TObject);
    procedure ReplaceItemClick(Sender: TObject);
    procedure HomePageItemClick(Sender: TObject);
    procedure NewWinItemClick(Sender: TObject);
    procedure ReadOnlyItemClick(Sender: TObject);
    procedure WINDOS1Click(Sender: TObject);
    procedure DOSWIN1Click(Sender: TObject);
    procedure dos1Click(Sender: TObject);
    procedure doswin2Click(Sender: TObject);
    procedure ANSIKOI81Click(Sender: TObject);
    procedure Koi8BANSI1Click(Sender: TObject);
    procedure EditInMSWordItemClick(Sender: TObject);
    procedure Send2temClick(Sender: TObject);
    procedure StayOnTopItemClick(Sender: TObject);
    procedure FullScreenItemClick(Sender: TObject);
    procedure NotepadKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    procedure FillColorItemClick(Sender: TObject);
    procedure ZoomInItemClick(Sender: TObject);
    procedure ZoomOutItemClick(Sender: TObject);
    procedure IntegrationItemClick(Sender: TObject);
    procedure DragDropItemClick(Sender: TObject);
    procedure RunItemClick(Sender: TObject);
    procedure InternetGNUProjectItemClick(Sender: TObject);
    procedure NewFromBufferItemClick(Sender: TObject);
    procedure CItemClick(Sender: TObject);
    procedure EiffeItemClick(Sender: TObject);
    procedure FortranItemClick(Sender: TObject);
    procedure GeneralItemClick(Sender: TObject);
    procedure JavaItemClick(Sender: TObject);
    procedure M3ItemClick(Sender: TObject);
    procedure PasItemClick(Sender: TObject);
    procedure VBItemClick(Sender: TObject);
    procedure CobolItemClick(Sender: TObject);
    procedure CPlusItemClick(Sender: TObject);
    procedure CssItemClick(Sender: TObject);
    procedure HTMItemClick(Sender: TObject);
    procedure JScriptItemClick(Sender: TObject);
    procedure PHPItemClick(Sender: TObject);
    procedure VBScriptItemClick(Sender: TObject);
    procedure XMLItemClick(Sender: TObject);
    procedure Vrml97ItemClick(Sender: TObject);
    procedure AWKItemClick(Sender: TObject);
    procedure MSBatItemClick(Sender: TObject);
    procedure KixItemClick(Sender: TObject);
    procedure PerlItemClick(Sender: TObject);
    procedure PythonItemClick(Sender: TObject);
    procedure clTkItemClick(Sender: TObject);
    procedure GWScriptItemClick(Sender: TObject);
    procedure RubyItemClick(Sender: TObject);
    procedure UNIXShellScripItemClick(Sender: TObject);
    procedure CACItemClick(Sender: TObject);
    procedure CacheItemClick(Sender: TObject);
    procedure FoxproItemClick(Sender: TObject);
    procedure SQLItemClick(Sender: TObject);
    procedure SDDItemClick(Sender: TObject);
    procedure ADSP21xxItemClick(Sender: TObject);
    procedure AsmItemClick(Sender: TObject);
    procedure HC11ItemClick(Sender: TObject);
    procedure HP48ItemClick(Sender: TObject);
    procedure STItemClick(Sender: TObject);
    procedure DmlItemClick(Sender: TObject);
    procedure ModelicaItemClick(Sender: TObject);
    procedure SMLItemClick(Sender: TObject);
    procedure DfmItemClick(Sender: TObject);
    procedure IniItemClick(Sender: TObject);
    procedure InnoItemClick(Sender: TObject);
    procedure BaanItemClick(Sender: TObject);
    procedure GalaxyItemClick(Sender: TObject);
    procedure ProgressItemClick(Sender: TObject);
    procedure MsgItemClick(Sender: TObject);
    procedure IdlItemClick(Sender: TObject);
    procedure UnrealItemClick(Sender: TObject);
    procedure CPMItemClick(Sender: TObject);
    procedure eXItemClick(Sender: TObject);
    procedure HaskellItemClick(Sender: TObject);
    procedure LDRItemClick(Sender: TObject);
    procedure URIItemClick(Sender: TObject);
    procedure DOTItemClick(Sender: TObject);
    procedure RCSynItemClick(Sender: TObject);
    procedure FindNextItemClick(Sender: TObject);
    procedure PropertiesItemClick(Sender: TObject);
    procedure ExportAsHTMLItemClick(Sender: TObject);
    procedure ExportToFileItemClick(Sender: TObject);
    procedure CopyHighLightToClipBoardITemClick(Sender: TObject);
    procedure Export1Click(Sender: TObject);
    procedure NotepadKeyPress(Sender: TObject; var Key: Char);

  private

  public

    ExportAs: integer;

    r : TRegistry;

    Ini: TIniFile;

    FFileName: string;

    TextString: String;

    procedure ShowHint(Sender: TObject);

    procedure SetFileName(const FileName: String);
    
    procedure PerformFileOpen(const AFileName: string);

    procedure WMDropFiles(var Msg: TMessage);
    message wm_DropFiles;

    procedure ChangeMessageBoxPosition(var Msg: TMessage);
    message AlignCenter;

    procedure WMGetMinMaxInfo(var msg: TWMGetMinMaxInfo);
    message WM_GETMINMAXINFO;

  end;

var
  MainFrm: TMainFrm;

  msgCaption: PChar;

  i:integer;

  m:tstrings;

implementation

uses LP, GP;

 type
   POpenFilenameA = ^TOpenFilenameA;
   POpenFilename = POpenFilenameA;
   tagOFNA = packed record
   lStructSize: DWORD;
   hWndOwner: HWND;
   hInstance: HINST;
   lpstrFilter: PAnsiChar;
   lpstrCustomFilter: PAnsiChar;
   nMaxCustFilter: DWORD;
   nFilterIndex: DWORD;
   lpstrFile: PAnsiChar;
   nMaxFile: DWORD;
   lpstrFileTitle: PAnsiChar;
   nMaxFileTitle: DWORD;
   lpstrInitialDir: PAnsiChar;
   lpstrTitle: PAnsiChar;
   Flags: DWORD;
   nFileOffset: Word;
   nFileExtension: Word;
   lpstrDefExt: PAnsiChar;
   lCustData: LPARAM;
   lpfnHook: function(Wnd: HWND; Msg: UINT; wParam: WPARAM; lParam: LPARAM): UINT stdcall;
   lpTemplateName: PAnsiChar;
   end;
   TOpenFilenameA = tagOFNA;
   TOpenFilename = TOpenFilenameA;

   function GetOpenFileName(var OpenFile: TOpenFilename): Bool; stdcall; external 'comdlg32.dll'
   name 'GetOpenFileNameA';
   function GetSaveFileName(var OpenFile: TOpenFilename): Bool; stdcall; external 'comdlg32.dll'
   name 'GetSaveFileNameA';

  const
   OFN_DONTADDTORECENT = $02000000;
   OFN_FILEMUSTEXIST = $00001000;
   OFN_HIDEREADONLY = $00000004;
   OFN_PATHMUSTEXIST = $00000800;

 function CharReplace(const Source: string; oldChar, newChar: Char): string;
 var
 i: Integer;
 begin
 Result := Source;
 for i := 1 to Length(Result) do
 if Result[i] = oldChar then
 Result[i] := newChar;
 end;


{$R *.dfm}

  const

  Koi: array[0..66] of Char = ('T', 'Ё', 'ё', 'А', 'Б', 'В', 'Г', 'Д', 'Е', 'Ж',
    'З', 'И', 'Й', 'К', 'Л', 'М', 'Н', 'О', 'П', 'Р',
    'С', 'Т', 'У', 'Ф', 'Х', 'Ц', 'Ч', 'Ш', 'Щ', 'Ъ',
    'Ы', 'Ь', 'Э', 'Ю', 'Я', 'а', 'б', 'в', 'г', 'д',
    'е', 'ж', 'з', 'и', 'й', 'к', 'л', 'м', 'н', 'о',
    'п', 'р', 'с', 'т', 'у', 'ф', 'х', 'ц', 'ч', 'ш',
    'щ', 'ъ', 'ы', 'ь', 'э', 'ю', 'я');

  Win: array[0..66] of Char = ('ё', 'Ё', 'T', 'ю', 'а', 'б', 'ц', 'д', 'е', 'ф',
    'г', 'х', 'и', 'й', 'к', 'л', 'м', 'н', 'о', 'п',
    'я', 'р', 'с', 'т', 'у', 'ж', 'в', 'ь', 'ы', 'з',
    'ш', 'э', 'щ', 'ч', 'ъ', 'Ю', 'А', 'Б', 'Ц', 'Д',
    'Е', 'Ф', 'Г', 'Х', 'И', 'Й', 'К', 'Л', 'М', 'Н',
    'О', 'П', 'Я', 'Р', 'С', 'Т', 'У', 'Ж', 'В', 'Ь',
    'Ы', 'З', 'Ш', 'Э', 'Щ', 'Ч', 'Ъ');

resourcestring
sUntitled = 'Безымянный';

type
str255 = array[0..260] of Char;

var
FldRect:TRect;
hDevMode_:THandle = 0;
hDevNames_:THandle= 0;
Head:boolean=false;

procedure PageSetup;
var
Dlg:TPAGESETUPDLG;
begin
FillChar(Dlg,SizeOf(TPAGESETUPDLG),0);
with Dlg do
begin
lStructSize:= SizeOf(TPAGESETUPDLG);
hwndOwner:= MainFrm.Handle;
hDevMode:=hDevMode_;
hDevNames:=hDevNames_;
Flags:=PSD_MARGINS;
rtMargin:=FldRect;
end;
if PageSetupDlg(Dlg) then
begin
hDevMode_:= dlg.hDevMode;
hDevNames_:= dlg.hDevNames;
FldRect:=dlg.rtMargin;
end;
end;

procedure ShowPropertiesDialog(FName: string);
var
SExInfo: TSHELLEXECUTEINFO;
begin
ZeroMemory(Addr(SExInfo),SizeOf(SExInfo));
SExInfo.cbSize := SizeOf(SExInfo);
SExInfo.lpFile := PChar(FName);
SExInfo.lpVerb := 'properties';
SExInfo.fMask  := SEE_MASK_INVOKEIDLIST;
ShellExecuteEx(Addr(SExInfo));
end;

procedure SaveFont(FName: string; Section: string; smFont: TFont);
var
FStream: TIniFile;
begin
FStream := TIniFile.Create(FName);
try
FStream.WriteString(Section, 'Name', smFont.Name);
FStream.WriteInteger(Section, 'CharSet', smFont.CharSet);
FStream.WriteInteger(Section, 'Color', smFont.Color);
FStream.WriteInteger(Section, 'Size', smFont.Size);
FStream.WriteInteger(Section, 'Style', Byte(smFont.Style));
finally
FStream.Free;
end;
end;

procedure LoadFont(FName: string; Section: string; smFont: TFont);
var
FStream: TIniFile;
begin
FStream := TIniFile.Create(Fname);
try
smFont.Name    := FStream.ReadString(Section, 'Name', smFont.Name);
smFont.CharSet := TFontCharSet(FStream.ReadInteger(Section, 'CharSet', smFont.CharSet));
smFont.Color   := TColor(FStream.ReadInteger(Section, 'Color', smFont.Color));
smFont.Size    := FStream.ReadInteger(Section, 'Size', smFont.Size);
smFont.Style   := TFontStyles(Byte(FStream.ReadInteger(Section, 'Style', Byte(smFont.Style))));
finally
FStream.Free;
end;
end;

function GetFileSizeByName(FileName: String): Integer;
var
FindData: TWin32FindData;
hFind: THandle;
begin
Result := -1;
hFind := FindFirstFile(PChar(FileName), FindData);
if hFind <> INVALID_HANDLE_VALUE then
begin
Windows.FindClose(hFind);
if (FindData.dwFileAttributes and FILE_ATTRIBUTE_DIRECTORY) = 0 then
Result := FindData.nFileSizeLow;
end;
end;

procedure TMainFrm.ChangeMessageBoxPosition(var Msg: TMessage);
var
MbHwnd: longword;
MbRect: TRect;
x, y, w, h: integer;
begin
MbHwnd := FindWindow(MAKEINTRESOURCE(WC_DIALOG), msgCaption);
if (MbHwnd <> 0) then
begin
GetWindowRect(MBHWnd, MBRect);
with MbRect do
begin
w := Right - Left;
h := Bottom - Top;
end;
x := MainFrm.Left + ((MainFrm.Width - w) div 2);
if x < 0 then
x := 0
else if x + w > Screen.Width then x := Screen.Width - w;
y := MainFrm.Top + ((MainFrm.Height - h) div 2);
if y < 0 then y := 0
else if y + h > Screen.Height then y := Screen.Height - h;
SetWindowPos(MBHWnd, 0, x, y, 0, 0, SWP_NOACTIVATE or SWP_NOSIZE or SWP_NOZORDER);
end;
end;

function OpenSaveFileDialog(ParentHandle: THandle; const DefExt, Filter, InitialDir, Title: string; var FileName: string; IsOpenDialog: Boolean): Boolean;
var
ofn: TOpenFileName;
szFile: array[0..MAX_PATH] of Char;
begin
Result := False;
FillChar(ofn, SizeOf(TOpenFileName), 0);
with ofn do
begin
lStructSize := SizeOf(TOpenFileName);
hwndOwner := ParentHandle;
lpstrFile := szFile;
nMaxFile := SizeOf(szFile);
if (Title <> '') then
lpstrTitle := PChar(Title);
if (InitialDir <> '') then
lpstrInitialDir := PChar(InitialDir);
StrPCopy(lpstrFile, FileName);
lpstrFilter := PChar(CharReplace(Filter, '|', #0)+#0#0);
if DefExt <> '' then
lpstrDefExt := PChar(DefExt);
end;
if IsOpenDialog then
begin
if GetOpenFileName(ofn) then
begin
Result := True;
FileName := StrPas(szFile);
end;
end else
begin
if GetSaveFileName(ofn) then
begin
Result := True;
FileName := StrPas(szFile);
end;
end
end;

procedure TMainFrm.PerformFileOpen(const AFileName: string);
begin
Notepad.Lines.LoadFromFile(AFileName);
SetFileName(AFileName);
end;

procedure TMainFrm.SetFileName(const FileName: String);
begin
FFileName := FileName;
Caption := Format('%s - %s', [FileName, 'Блокнот GNU']);
Application.Title := Format('%s - %s', [FileName, 'Блокнот GNU']);
end;

procedure TMainFrm.WMDropFiles(var Msg: TMessage);
var
Filename: array[0 .. 256] of Char;
Count, i: integer;
Res: Integer;
begin
try
if DragDropItem.Checked then
begin
Count := DragQueryFile(Msg.WParam, $FFFFFFFF, Filename, SizeOf(Filename));
for i:=0 to Count - 1 do
begin
DragQueryFile(Msg.WParam,i,Filename,SizeOf(Filename));
if Notepad.Tag = 0 then
begin
Notepad.Clear;
MainFrm.Notepad.Lines.LoadFromFile(Filename);
MainFrm.Notepad.Tag := 0;
MainFrm.SetFileName(FileName);
Notepad.ReadOnly := False;
ReadOnlyItem.Checked  := False;
end
else begin
PostMessage(MainFrm.Handle, WM_USER + 1024, 0, 0);
Res := Application.MessageBox(PChar('Сохранить изменения в "' + ExtractFileName(FFileName) + '"?'),
'Блокнот GNU',
mb_YesNoCancel + mb_IconQuestion);
if Res = idYes then
begin
MainFrm.BringToFront;
MainFrm.SaveItemClick(Self);
if Notepad.Tag = 1 then
Exit;
end;
if Notepad.Tag = 0 then
begin
Notepad.Clear;
MainFrm.Notepad.Lines.LoadFromFile(Filename);
MainFrm.Notepad.Tag := 0;
MainFrm.SetFileName(FileName);
Notepad.ReadOnly := False;
ReadOnlyItem.Checked  := False;
end;
if Res = idNo then
begin
Notepad.Clear;
MainFrm.Notepad.Lines.LoadFromFile(Filename);
MainFrm.Notepad.Tag := 0;
MainFrm.SetFileName(FileName);
Notepad.ReadOnly := False;
ReadOnlyItem.Checked  := False;
end;
if Res = idCancel then Exit;
end;
end;
DragFinish(Msg.WParam);
end;
except
end;
end;

procedure TMainFrm.NotepadChange(Sender: TObject);
begin
Notepad.Tag := 1;
end;

procedure TMainFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
Res: Integer;
begin
try
if Notepad.Tag = 0 then begin
CanClose := True;
end else begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
Res := Application.MessageBox(PChar('Сохранить изменения в "' + ExtractFileName(FFileName) + '"?'),
'Блокнот GNU',
mb_YesNoCancel + mb_IconQuestion);
if Res = idYes then
begin
MainFrm.BringToFront;
MainFrm.SaveItemClick(Sender);
if Notepad.Tag = 1 then CanClose := False;
end;
if Res = idNo then CanClose := True;
if Res = idCancel then CanClose := False;
end;
except
end;
end;

procedure TMainFrm.OpenItemClick(Sender: TObject);
var
res: Integer;
begin
try
if Notepad.Tag = 0 then
begin
if OpenSaveFileDialog(MainFrm.Handle, '*.txt',
'Текстовые документы (*.txt)|*.txt|Все файлы (*.*)|*.*', ParamStr(1),
'Блокнот GNU', TextString, True) then
begin
PerformFileOpen(TextString);
Notepad.Tag := 0;
end;
end else
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
Res := Application.MessageBox(PChar('Сохранить изменения в "' + ExtractFileName(FFileName) + '"?'),
'Блокнот GNU',
mb_YesNoCancel + mb_IconQuestion);
if Res = idYes then
begin
MainFrm.BringToFront;
MainFrm.SaveItemClick(Sender);
if Notepad.Tag = 0 then
if OpenSaveFileDialog(MainFrm.Handle, '*.txt', 'Текстовые документы (*.txt)|*.txt|Все файлы (*.*)|*.*', ParamStr(1),
'Блокнот GNU', TextString, True) then
begin
PerformFileOpen(TextString);
Notepad.Tag := 0;
end;
Exit;
end;
if Notepad.Tag = 0 then
begin
Notepad.Clear;
PerformFileOpen(TextString);
Notepad.Tag := 0;
end;
if Res = idNo then
begin
if OpenSaveFileDialog(MainFrm.Handle, '*.txt', 'Текстовые документы (*.txt)|*.txt|Все файлы (*.*)|*.*', ParamStr(1),
'Блокнот GNU', TextString, True) then
begin
PerformFileOpen(TextString);
Notepad.Tag := 0;
end;
end else
begin
Exit;
end;
if Res = idCancel then Exit;
end;
except
end;
end;

procedure TMainFrm.SaveItemClick(Sender: TObject);
begin
try
if FFileName = sUntitled then
SaveAsItemClick(Sender) else
begin
Notepad.Lines.SaveToFile(FFileName);
Notepad.Tag := 0;
end;
except
end;
end;

procedure TMainFrm.SaveAsItemClick(Sender: TObject);
begin
try
if OpenSaveFileDialog(MainFrm.Handle, '*.txt', 'Текстовые документы (*.txt)|*.txt|',
ParamStr(1), 'Сохранить как', FFileName, False) then begin
if FileExists(FFileName) then
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
if Application.MessageBox(PChar('Файл "' + FFileName +
'" уже существует.' +
#13 + 'Заменить?'),
'Блокнот GNU', MB_ICONQUESTION + mb_YesNo)
<> idYes then
begin
Exit;
end else
begin
Notepad.Lines.SaveToFile(FFileName);
SetFileName(FFileName);
Notepad.Tag := 0;
end;
end;
if not FileExists(FFileName) then
begin
Notepad.Lines.SaveToFile(FFileName);
SetFileName(FFileName);
Notepad.Tag := 0;
end;
end;
except
end;
end;

procedure TMainFrm.CreateItemClick(Sender: TObject);
var
res: Integer;
begin
if Notepad.Tag = 0 then
begin
Notepad.Clear;
SetFileName(sUntitled);
Notepad.Tag := 0;
Notepad.ReadOnly := False;
ReadOnlyItem.Checked  := False;
end
else begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
Res := Application.MessageBox(PChar('Сохранить изменения в "' + ExtractFileName(FFileName) + '"?'),
'Блокнот GNU',
mb_YesNoCancel + mb_IconQuestion);
if Res = idYes then
begin
MainFrm.BringToFront;
MainFrm.SaveItemClick(Sender);
if Notepad.Tag = 1 then
Exit;
end;
if Notepad.Tag = 0 then
begin
Notepad.Clear;
SetFileName(sUntitled);
Notepad.Tag := 0;
Notepad.ReadOnly := False;
ReadOnlyItem.Checked  := False;
end;
if Res = idNo then
begin
Notepad.Clear;
SetFileName(sUntitled);
Notepad.Tag := 0;
Notepad.ReadOnly := False;
ReadOnlyItem.Checked  := False;
end;
if Res = idCancel then Exit;
end;
end;

procedure TMainFrm.FormShow(Sender: TObject);
var
Str: String;
begin
LoadFont('Parameters.ini', 'Notepad GNU', Notepad.Font);
DragAcceptFiles(MainFrm.Handle, True);
if ParamCount > 0 then
begin
MainFrm.SetFileName(ParamStr(1));
Notepad.Lines.LoadFromFile(paramstr(1)+ str);
Notepad.Tag := 0;
end else
begin
Notepad.Lines.Clear;
SetFileName(sUntitled);
end;
if WordWrapItem.Checked then
Notepad.ScrollBars := ssVertical else
Notepad.ScrollBars := ssBoth;
if StatusBarItem.Checked then
StatusBar.Visible := True else
StatusBar.Visible := False;
if DragDropItem.Checked then
DragAcceptFiles(MainFrm.Handle, True) else
DragAcceptFiles(MainFrm.Handle, False);
if IntegrationItem.Checked then
begin
R := TRegistry.Create;
R.RootKey := HKEY_CLASSES_ROOT;
R.OpenKey('.txt',true);
R.WriteString('', 'txtfile');
R.CloseKey;
R.OpenKey('txtfile\DefaultIcon',true);
R.WriteString('', ParamStr(0) + ', 0');
R.CloseKey;
R.OpenKey('txtfile\shell\open\command', true);
R.WriteString('', ParamStr(0) + ' "%1"');
R.CloseKey;
R.Free;
end else
begin
r := TRegistry.Create;
r.RootKey := HKEY_CLASSES_ROOT;
r.OpenKey('.txt',true);
r.WriteString('', '!txt');
r.CloseKey;
r.OpenKey('!txt\DefaultIcon',true);
r.WriteString('', 'NOTEPAD.exe' + ', 0');
r.CloseKey;
r.OpenKey('!txt\shell\open\command', true);
r.WriteString('', 'NOTEPAD.exe' + ' "%1"');
r.CloseKey;
r.Free;
end;
Notepad.Color := ColorDlg.Color;
end;

procedure TMainFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
if MainFrm.WindowState = wsMaximized then
MainFrm.WindowState := wsNormal;
end;

procedure TMainFrm.StatusBarItemClick(Sender: TObject);
begin
StatusBar.Visible := not StatusBar.Visible;
end;

procedure TMainFrm.SourceCodeItemClick(Sender: TObject);
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
if Application.MessageBox(
'Copyright @2009 Домани Олег (aka ?КТО_Я?)' + #13 +
'======================================' + #13 + #13 + '' +
'Если Вы хотите получить исходный код проекта (архив ' + #13
+ 'с компонентами по желанию пользователя), а также'
+ #13 + 'все последующие новые версии программы, то' + #13 +
'отправьте электронное письмо автору.' + #13 +
'' +  #13 + '======================================' +  #13 +
'' +  #13 +
'Отправить письмо сейчас?',
'Блокнот GNU',
mb_IconAsterisk + mb_YesNo) = idYes then
begin
ShellExecute(Handle, 'open',
'mailto:viacoding@mail.ru?Subject=Блокнот GNU Project' +
'&Body=Hello, please send me the source code program. Thanks!',
'', '', SW_SHOW);
end;
end;

procedure TMainFrm.AboutItemClick(Sender: TObject);
begin
AboutFrm.Position := poMainFormCenter;
AboutFrm.ShowModal;
end;

procedure TMainFrm.WordWrapItemClick(Sender: TObject);
begin
if WordWrapItem.Checked then
Notepad.ScrollBars := ssVertical
else
Notepad.ScrollBars := ssBoth;
end;

procedure TMainFrm.Send1temClick(Sender: TObject);
begin
ShellExecute(Handle, 'open',
'mailto:GoodWinNix@mail.ru?Subject=Блокнот GNU Project' +
'', '', '', SW_SHOW);
end;

procedure TMainFrm.SysInfoItemClick(Sender: TObject);
begin
ShellExecute(Handle, nil, 'msInfo32', nil,nil, Sw_ShowNormal);
end;

procedure TMainFrm.CloseItemClick(Sender: TObject);
begin
Close;
end;

procedure TMainFrm.FontItemClick(Sender: TObject);
begin
FontDlg.Font := Notepad.Font;
PostMessage(Handle, WM_USER + 1024, 0, 0);
if FontDlg.Execute then
Notepad.Font := FontDlg.Font;
end;

procedure TMainFrm.FormDestroy(Sender: TObject);
begin
SaveFont('Parameters.ini', 'Notepad GNU', Notepad.Font);
ApplicationEvents.Free;
PrinterSetupDlg.Free;
SynExporterHTML.Free;
SynExporterRTF.Free;
ActionList.Free;
ReplaceDlg.Free;
StatusBar.Free;
MainMenu.Free;
FindDlg.Free;
FontDlg.Free;
SaveDlg.Free;
Notepad.Free;
end;

procedure TMainFrm.DateTimeItemClick(Sender: TObject);
type
str32=array[0..32]of char;
var
DT: TSystemTime;
s:str32;
begin
GetLocalTime(DT);
GetDateFormat(LOCALE_USER_DEFAULT,0,@DT,nil,s,sizeOf(s));
lstrcat(s,' ');
SendMessage(Notepad.Handle, EM_REPLACESEL, 0, Longint(@s));
GetTimeFormat(LOCALE_USER_DEFAULT,0,@DT,nil,s,sizeOf(s));
SendMessage(Notepad.Handle, EM_REPLACESEL, 0, Longint(@s));
Notepad.Tag := 1;
end;

procedure TMainFrm.GoToItemClick(Sender: TObject);
begin
if Notepad.Text = '' then
Exit else
begin
GoFrm.Position := poMainFormCenter;
GoFrm.ShowModal;
end;
end;

procedure TMainFrm.PrintItemClick(Sender: TObject);
var
sMemo : String;
filename : TextFile;
x : Integer;
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
sMemo := Notepad.Text;
If Length(Trim(sMemo)) = 0 Then
exit;
If Length(Trim(sMemo)) <> 0 Then
if PrinterSetupDlg.Execute then begin
AssignPrn(filename);
Rewrite(filename);
for x := 0 to Notepad.Lines.Count - 1 do
Writeln(filename, Notepad.Lines[x]);
CloseFile(filename);
end;
end;

procedure TMainFrm.PageSetupItemClick(Sender: TObject);
begin
PageSetup;
end;

procedure TMainFrm.PasteFromItemClick(Sender: TObject);
var
s: String;
TheMStream: TMemoryStream;
Zero: char;
begin
if OpenSaveFileDialog(MainFrm.Handle, '*.*',
'Текстовые документы (*.txt)|*.txt|Все файлы (*.*)|*.*', ParamStr(1),
'Вставить', s, True) then
begin
TheMStream := TMemoryStream.Create;
TheMStream.LoadFromFile(s);
TheMStream.Seek(0, soFromEnd);
Zero := #0;
TheMStream.write(Zero, 1);
TheMStream.Seek(0, soFromBeginning);
Notepad.SetTextBuf(TheMStream.Memory);
TheMStream.Free;
Notepad.Tag := 1;
end;
end;

procedure TMainFrm.FormCreate(Sender: TObject);
const
ObjWord = 'Word.Application';
begin
with TRegistry.Create do
try
RootKey := HKEY_CLASSES_ROOT;
EditInMSWordItem.Enabled := KeyExists(ObjWord);
finally
Free;
end;
Application.OnHint := ShowHint;
try
Ini := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
Top := Ini.ReadInteger('Position', 'Top', 100);
Left := Ini.ReadInteger('Position', 'Left', 100);
ClientHeight := Ini.ReadInteger('Position', 'ClientHeight', 520);
ClientWidth := Ini.ReadInteger('Position', 'ClientWidth', 700);
WordWrapItem.Checked := Ini.ReadBool('Parameters', 'Word wrap', WordWrapItem.Checked);
StatusBarItem.Checked := Ini.ReadBool('Parameters', 'Status bar', StatusBarItem.Checked);
ColorDlg.Color := Ini.ReadInteger('Parameters', 'Background Color', ColorDlg.Color);
DragDropItem.Checked := Ini.ReadBool('Parameters', 'Drag Drop', DragDropItem.Checked);
IntegrationItem.Checked := Ini.ReadBool('Parameters', 'Integration', IntegrationItem.Checked);
except
end;
end;

procedure TMainFrm.ShowHint(Sender: TObject);
begin
if Length(Application.Hint) > 0 then
begin
StatusBar.SimplePanel := True;
StatusBar.SimpleText := Application.Hint;
end else
StatusBar.SimplePanel := False;
end;

procedure TMainFrm.ApplicationEventsIdle(Sender: TObject;
var Done: Boolean);
var
X, Y: LongInt;
Layout: array [0.. KL_NAMELENGTH] of char;
begin
if FFileName = sUntitled then
begin
PropertiesItem.Enabled := False;
RunItem.Enabled := False;
end else
begin
PropertiesItem.Enabled := True;
RunItem.Enabled := True;
end;
try
Y := Notepad.Perform(EM_LINEFROMCHAR, Notepad.SelStart, 0);
X := Notepad.Perform(EM_LINEINDEX, Y, 0);
inc(Y);
X := Notepad.SelStart - X + 1;
StatusBar.Panels[0].Text := '' + IntToStr(X) + ':' + IntToStr(Y);
GetKeyboardLayoutName(Layout);
if Layout = '00000409' then
begin
StatusBar.Panels[1].Text := 'ENG';
end else
begin
StatusBar.Panels[1].Text := 'RUS';
end;
if GetKeyState(VK_Numlock) and 1 = 0 then
StatusBar.Panels[2].Text := '' else
StatusBar.Panels[2].Text := 'NUM';
if GetKeyState(VK_Capital) and 1 = 0 then
StatusBar.Panels[3].Text := '' else
StatusBar.Panels[3].Text := 'CAP';
if GetKeyState(VK_Scroll) and 1 = 0 then
StatusBar.Panels[4].Text := '' else
StatusBar.Panels[4].Text := 'SCRL';
Y := Notepad.Perform(EM_LINEFROMCHAR,
Notepad.SelStart, 0);
X := Notepad.SelStart - y + 1;
StatusBar.Panels[5].Text := 'nb char: ' + inttostr(x);
StatusBar.Panels[6].Text := ExtractFileName(FFileName) +
' / ' + IntToStr(GetFileSizeByName(FFileName)) + ' bites';
Ini.WriteInteger('Position', 'Top', Top);
Ini.WriteInteger('Position', 'Left', Left);
Ini.WriteInteger('Position', 'ClientHeight', ClientHeight);
Ini.WriteInteger('Position', 'ClientWidth', ClientWidth);
Ini.WriteBool('Parameters', 'Word wrap', WordWrapItem.Checked);
Ini.WriteBool('Parameters', 'Status bar', StatusBarItem.Checked);
Ini.WriteInteger('Parameters', 'Background Color', ColorDlg.Color);
Ini.WriteBool('Parameters', 'Drag Drop', DragDropItem.Checked);
Ini.WriteBool('Parameters', 'Integration', IntegrationItem.Checked);
except
end;
end;

procedure TMainFrm.FindDlgFind(Sender: TObject);
var
SelPos,X,i:integer;
s,textE:string;
label 1;
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
if frDown in FindDlg.Options then
Notepad.SelStart:=Notepad.SelStart+Notepad.SelLength;
textE:=Notepad.Text;
X:=Notepad.SelStart+1;
if frDown in FindDlg.Options then
textE:=Copy(textE,X,Length(textE)-X+1) else
textE:=Copy(textE,0,X-1);
s:=FindDlg.FindText;
if frDown in FindDlg.Options then
begin
SelPos := Pos(s,textE);
if SelPos > 0 then begin
Notepad.SelStart := SelPos + X - 2;
Notepad.SelLength:=length(s);
end else
Application.MessageBox(pchar('Текст "' + FindDlg.FindText + '" не найден.'),
'Блокнот GNU',
mb_IconAsterisk + mb_OK);
end else
begin
for i:=length(textE)-length(s) downto 1 do
if copy(textE,i,length(s))=s then begin
Notepad.SelStart := i-1;
Notepad.SelLength:=Length(s);
goto 1;
end;
Application.MessageBox(pchar('Текст "' + FindDlg.FindText + '" не найден.'),
'Блокнот GNU',
mb_IconAsterisk + mb_OK);
1:
end;
end;

procedure TMainFrm.FindItemClick(Sender: TObject);
begin
if Notepad.Text = '' then
Exit else
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
FindDlg.Execute;
end;
end;

procedure TMainFrm.ReplaceDlgFind(Sender: TObject);
begin
FindDlg.Options:=ReplaceDlg.Options;
FindDlg.FindText:=ReplaceDlg.FindText;
FindDlgFind(Sender);
end;

procedure TMainFrm.ReplaceDlgReplace(Sender: TObject);
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
FindDlg.Options:=ReplaceDlg.Options;
FindDlg.FindText:=ReplaceDlg.FindText;
with Sender as TReplaceDialog do
while True do
begin
if Notepad.SelText <> FindText then FindDlgFind(Sender);
if Notepad.SelLength = 0 then Break;
Notepad.SelText := ReplaceText;
if not (frReplaceAll in Options) then Break;
end;
end;

procedure TMainFrm.ReplaceItemClick(Sender: TObject);
begin
if Notepad.Text = '' then
Exit else
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
ReplaceDlg.Execute;
end;
end;

procedure TMainFrm.HomePageItemClick(Sender: TObject);
begin
ShellExecute(Handle, nil, 'http://www.viacoding.mylivepage.ru/', nil,nil, Sw_ShowNormal);
end;

procedure TMainFrm.NewWinItemClick(Sender: TObject);
var
PC: array[0..255] of char;
S: String;
begin
{$ifdef Windows}
WinExec(StrPCopy(PC, ParamStr(0)+' '+S), Sw_Show);
{$else}
WinExec(StrPCopy(PC, ParamStr(0)+' "'+S+'"'), Sw_Show);
{$endif}
end;

procedure TMainFrm.ReadOnlyItemClick(Sender: TObject);
begin
if ReadOnlyItem.Checked then
Notepad.ReadOnly := True else
Notepad.ReadOnly := False;
end;

function ANSI2KOI8R(S: string): string;
var
Ansi_CODE, KOI8_CODE: string;
i: integer;
begin
KOI8_CODE := 'бвчздецъйклмнопртуфхжигюыэящшьасБВЧЗДЕЦЪЙКЛМНОПРТУФХЖИГЮЫЭЯЩШЬАС—Ј';
ANSI_CODE := 'АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдежзийклмнопрстуфхцчшщъыьэюя№ё';
Result := S;
for i := 1 to Length(Result) do
if Pos(Result[i], ANSI_CODE) > 0 then
Result[i] := KOI8_CODE[Pos(Result[i], ANSI_CODE)];
end;

function KOI8ANSI(S: string): string;
var
Ansi_CODE, KOI8_CODE: string;
i: integer;
begin
KOI8_CODE := 'АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдежзийклмнопрстуфхцчшщъыьэюя№ё';
ANSI_CODE := 'бвчздецъйклмнопртуфхжигюыэящшьасБВЧЗДЕЦЪЙКЛМНОПРТУФХЖИГЮЫЭЯЩШЬАС—Ј';
Result := S;
for i := 1 to Length(Result) do
if Pos(Result[i], ANSI_CODE) > 0 then
Result[i] := KOI8_CODE[Pos(Result[i], ANSI_CODE)];
end;

function WinToKoi(Str: string): string;
var
i, j, Index: Integer;
begin
Result := '';
for i := 1 to Length(Str) do
begin
Index := -1;
for j := Low(Win) to High(Win) do
if Win[j] = Str[i] then
begin
Index := j;
Break;
end;
if Index = -1 then
Result := Result + Str[i]
else
Result := Result + Koi[Index];
end;
end;

function KoiToWin(Str: string): string;
var
i, j, Index: Integer;
begin
Result := '';
for i := 1 to Length(Str) do
begin
Index := -1;
for j := Low(Win) to High(Win) do
if Koi[j] = Str[i] then
begin
Index := j;
Break;
end;
if Index = -1 then
Result := Result + Str[i]
else
Result := Result + Win[Index];
end;
end;

procedure TMainFrm.WINDOS1Click(Sender: TObject);
begin
notepad.Text := WinToKoi(notepad.Text);
end;

procedure TMainFrm.DOSWIN1Click(Sender: TObject);
begin
notepad.Text := KoiToWin(notepad.Text);
end;

procedure TMainFrm.dos1Click(Sender: TObject);
var
s:array [0..255] of char;
begin
CharToOem(PChar(notepad.Text), s);
notepad.Text:=s;
end;

procedure TMainFrm.doswin2Click(Sender: TObject);
var
s:array [0..255] of char;
begin
OemToChar(PChar(notepad.Text) , s);
notepad.Text:=s;
end;

procedure TMainFrm.ANSIKOI81Click(Sender: TObject);
begin
notepad.Text := ANSI2KOI8R(notepad.Text);
end;

procedure TMainFrm.Koi8BANSI1Click(Sender: TObject);
begin
Notepad.Text := KOI8ANSI(notepad.Text);
end;

procedure TMainFrm.EditInMSWordItemClick(Sender: TObject);
var
Unknown: IUnknown;
Result: HResult;
AppProgID: String;
App: Variant;
Rng: Variant;
begin
try
AppProgID := 'Word.Application';
Result :=
GetActiveObject(ProgIDToClassID(AppProgID),nil,Unknown);
if (Result = MK_E_UNAVAILABLE) then
App := CreateOleObject(AppProgID) else
begin
App := GetActiveOleObject(AppProgID);
end;
App.Visible := True;
App.Documents.Add();
App.Documents.Item(1).Activate;
App.ActiveDocument.Paragraphs.Add;
Rng :=  App.ActiveDocument.Paragraphs.Item(1).Range;
Rng.InsertAfter(Notepad.Text);
App:=Unassigned;
except
end;
end;

procedure TMainFrm.Send2temClick(Sender: TObject);
begin
ShellExecute(Handle, 'open',
'mailto:viacoding@mail.ru?Subject=Блокнот GNU Project' +
'', '', '', SW_SHOW);
end;

procedure TMainFrm.StayOnTopItemClick(Sender: TObject);
begin
if StayOnTopItem.Checked = False then
begin
SetWindowPos(Handle, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_NOMOVE+SWP_NOSIZE);
end else
begin
SetWindowPos(Handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE+SWP_NOSIZE);
StayOnTopItem.Checked := true;
end;
end;

procedure TMainFrm.FullScreenItemClick(Sender: TObject);
const
Rect: TRect = (Left: 0; Top: 0; Right: 0; Bottom: 0);
FullScreen: Boolean = False;
begin
FullScreen := not FullScreen;
if FullScreen then
begin
Rect := BoundsRect;
FullScreenItem.Checked := True;
SetBounds( Left - ClientOrigin.X,
Top - ClientOrigin.Y, GetDeviceCaps( Canvas.handle,
HORZRES)
+ (Width - ClientWidth), GetDeviceCaps( Canvas.handle,
VERTRES )
+ (Height - ClientHeight ));
end else
begin
BoundsRect := Rect;
FullScreenItem.Checked := False;
end;
end;

procedure TMainFrm.WMGetMinMaxInfo(var msg: TWMGetMinMaxInfo);
begin
inherited;
with msg.MinMaxInfo^.ptMaxTrackSize do begin
X := GetDeviceCaps( Canvas.handle, HORZRES ) +
(Width - ClientWidth);
Y := GetDeviceCaps( Canvas.handle, VERTRES ) +
(Height - ClientHeight );
end;
end;

procedure TMainFrm.NotepadKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
if not FullScreenItem.Checked then
begin
if Key = vk_Escape then
Close;
end;
if FullScreenItem.Checked then
begin
if Key = vk_Escape then
FullScreenItem.Click;
end;
if (Key = VK_INSERT) and (Shift = []) then
Notepad.PasteFromClipboard;
end;

procedure TMainFrm.FillColorItemClick(Sender: TObject);
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
ColorDlg.Color := Notepad.Color;
if ColorDlg.Execute then
Notepad.Color := ColorDlg.Color;
end;

procedure TMainFrm.ZoomInItemClick(Sender: TObject);
begin
Notepad.Font.Size := Notepad.Font.Size + 1;
end;

procedure TMainFrm.ZoomOutItemClick(Sender: TObject);
begin
Notepad.Font.Size := Notepad.Font.Size - 1;
end;

procedure TMainFrm.IntegrationItemClick(Sender: TObject);
begin
if IntegrationItem.Checked then
begin
R := TRegistry.Create;
R.RootKey := HKEY_CLASSES_ROOT;
R.OpenKey('.txt',true);
R.WriteString('', 'txtfile');
R.CloseKey;
R.OpenKey('txtfile\DefaultIcon',true);
R.WriteString('', ParamStr(0) + ', 0');
R.CloseKey;
R.OpenKey('txtfile\shell\open\command', true);
R.WriteString('', ParamStr(0) + ' "%1"');
R.CloseKey;
R.Free;
end else
begin
r := TRegistry.Create;
r.RootKey := HKEY_CLASSES_ROOT;
r.OpenKey('.txt',true);
r.WriteString('', '!txt');
r.CloseKey;
r.OpenKey('!txt\DefaultIcon',true);
r.WriteString('', 'NOTEPAD.exe' + ', 0');
r.CloseKey;
r.OpenKey('!txt\shell\open\command', true);
r.WriteString('', 'NOTEPAD.exe' + ' "%1"');
r.CloseKey;
r.Free;
end
end;

procedure TMainFrm.DragDropItemClick(Sender: TObject);
begin
if DragDropItem.Checked then
DragAcceptFiles(MainFrm.Handle, True) else
DragAcceptFiles(MainFrm.Handle, False);
end;

procedure TMainFrm.RunItemClick(Sender: TObject);
begin
ShellExecute (Handle, 'open',
PChar (FFileName), '', '', sw_ShowNormal);
end;

procedure TMainFrm.InternetGNUProjectItemClick(Sender: TObject);
begin
ShellExecute(Handle, nil, 'http://www.gnu.org/philosophy/', nil, nil, Sw_ShowNormal);
end;

procedure TMainFrm.NewFromBufferItemClick(Sender: TObject);
var
res: Integer;
begin
if Notepad.Tag = 0 then
begin
Notepad.Clear;
SetFileName(sUntitled);
Notepad.ReadOnly := False;
ReadOnlyItem.Checked  := False;
Notepad.PasteFromClipboard;
Notepad.Tag := 0;
end
else begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
Res := Application.MessageBox(PChar('Сохранить изменения в "' + ExtractFileName(FFileName) + '"?'),
'Блокнот GNU',
mb_YesNoCancel + mb_IconQuestion);
if Res = idYes then
begin
MainFrm.BringToFront;
MainFrm.SaveItemClick(Sender);
if Notepad.Tag = 1 then
Exit;
end;
if Notepad.Tag = 0 then
begin
Notepad.Clear;
SetFileName(sUntitled);
Notepad.ReadOnly := False;
ReadOnlyItem.Checked  := False;
Notepad.PasteFromClipboard;
Notepad.Tag := 0;
end;
if Res = idNo then
begin
Notepad.Clear;
SetFileName(sUntitled);
Notepad.ReadOnly := False;
ReadOnlyItem.Checked  := False;
Notepad.PasteFromClipboard;
Notepad.Tag := 0;
end;
if Res = idCancel then Exit;
end;
end;

procedure TMainFrm.CItemClick(Sender: TObject);
begin
if CItem.Checked then
Notepad.Highlighter := SynCppSyn;
end;

procedure TMainFrm.EiffeItemClick(Sender: TObject);
begin
if EiffeItem.Checked then
Notepad.Highlighter := SynEiffelSyn;
end;

procedure TMainFrm.FortranItemClick(Sender: TObject);
begin
if FortranItem.Checked then
Notepad.Highlighter := SynFortranSyn;
end;

procedure TMainFrm.GeneralItemClick(Sender: TObject);
begin
if GeneralItem.Checked then
Notepad.Highlighter := SynGeneralSyn;
end;

procedure TMainFrm.JavaItemClick(Sender: TObject);
begin
if JavaItem.Checked then
Notepad.Highlighter := SynJavaSyn;
end;

procedure TMainFrm.M3ItemClick(Sender: TObject);
begin
if M3Item.Checked then
Notepad.Highlighter := SynM3Syn;
end;

procedure TMainFrm.PasItemClick(Sender: TObject);
begin
if PasItem.Checked then
Notepad.Highlighter := SynPasSyn;
end;

procedure TMainFrm.VBItemClick(Sender: TObject);
begin
if VBItem.Checked then
Notepad.Highlighter := SynVBSyn;
end;

procedure TMainFrm.CobolItemClick(Sender: TObject);
begin
if CobolItem.Checked then
Notepad.Highlighter := SynCobolSyn;
end;

procedure TMainFrm.CPlusItemClick(Sender: TObject);
begin
if CPlusItem.Checked then
Notepad.Highlighter := SynCSSyn;
end;

procedure TMainFrm.CssItemClick(Sender: TObject);
begin
if CssItem.Checked then
Notepad.Highlighter := SynCssSyn;
end;

procedure TMainFrm.HTMItemClick(Sender: TObject);
begin
if HTMItem.Checked then
Notepad.Highlighter := SynHTMLSyn;
end;

procedure TMainFrm.JScriptItemClick(Sender: TObject);
begin
if JScriptItem.Checked then
Notepad.Highlighter := SynJScriptSyn;
end;

procedure TMainFrm.PHPItemClick(Sender: TObject);
begin
if PHPItem.Checked then
Notepad.Highlighter := SynPHPSyn;
end;

procedure TMainFrm.VBScriptItemClick(Sender: TObject);
begin
if VBScriptItem.Checked then
Notepad.Highlighter := SynVBScriptSyn;
end;

procedure TMainFrm.XMLItemClick(Sender: TObject);
begin
if XMLItem.Checked then
Notepad.Highlighter := SynXMLSyn;
end;

procedure TMainFrm.Vrml97ItemClick(Sender: TObject);
begin
if Vrml97Item.Checked then
Notepad.Highlighter := SynVrml97Syn;
end;

procedure TMainFrm.AWKItemClick(Sender: TObject);
begin
if AWKItem.Checked then
Notepad.Highlighter := SynAWKSyn;
end;

procedure TMainFrm.MSBatItemClick(Sender: TObject);
begin
if MSBatItem.Checked then
Notepad.Highlighter := SynBatSyn;
end;

procedure TMainFrm.KixItemClick(Sender: TObject);
begin
if KixItem.Checked then
Notepad.Highlighter := SynKixSyn;
end;

procedure TMainFrm.PerlItemClick(Sender: TObject);
begin
if PerlItem.Checked then
Notepad.Highlighter := SynPerlSyn;
end;

procedure TMainFrm.PythonItemClick(Sender: TObject);
begin
if PythonItem.Checked then
Notepad.Highlighter := SynPythonSyn;
end;

procedure TMainFrm.clTkItemClick(Sender: TObject);
begin
if clTkItem.Checked then
Notepad.Highlighter := SynTclTkSyn;
end;

procedure TMainFrm.GWScriptItemClick(Sender: TObject);
begin
if GWScriptItem.Checked then
Notepad.Highlighter := SynGWScriptSyn;
end;

procedure TMainFrm.RubyItemClick(Sender: TObject);
begin
if RubyItem.Checked then
Notepad.Highlighter := SynRubySyn;
end;

procedure TMainFrm.UNIXShellScripItemClick(Sender: TObject);
begin
if UNIXShellScripItem.Checked then
Notepad.Highlighter := SynUNIXShellScriptSyn;
end;

procedure TMainFrm.CACItemClick(Sender: TObject);
begin
if CACItem.Checked then
Notepad.Highlighter := SynCACSyn;
end;

procedure TMainFrm.CacheItemClick(Sender: TObject);
begin
if CacheItem.Checked then
Notepad.Highlighter := SynCacheSyn;
end;

procedure TMainFrm.FoxproItemClick(Sender: TObject);
begin
if FoxproItem.Checked then
Notepad.Highlighter := SynFoxproSyn;
end;

procedure TMainFrm.SQLItemClick(Sender: TObject);
begin
if SQLItem.Checked then
Notepad.Highlighter := SynSQLSyn;
end;

procedure TMainFrm.SDDItemClick(Sender: TObject);
begin
if SDDItem.Checked then
Notepad.Highlighter := SynSDDSyn;
end;

procedure TMainFrm.ADSP21xxItemClick(Sender: TObject);
begin
if ADSP21xxItem.Checked then
Notepad.Highlighter := SynADSP21xxSyn;
end;

procedure TMainFrm.AsmItemClick(Sender: TObject);
begin
if AsmItem.Checked then
Notepad.Highlighter := SynAsmSyn;
end;

procedure TMainFrm.HC11ItemClick(Sender: TObject);
begin
if HC11Item.Checked then
Notepad.Highlighter := SynHC11Syn;
end;

procedure TMainFrm.HP48ItemClick(Sender: TObject);
begin
if HP48Item.Checked then
Notepad.Highlighter := SynHP48Syn;
end;

procedure TMainFrm.STItemClick(Sender: TObject);
begin
if STItem.Checked then
Notepad.Highlighter := SynSTSyn;
end;

procedure TMainFrm.DmlItemClick(Sender: TObject);
begin
if DmlItem.Checked then
Notepad.Highlighter := SynDmlSyn;
end;

procedure TMainFrm.ModelicaItemClick(Sender: TObject);
begin
if ModelicaItem.Checked then
Notepad.Highlighter := SynModelicaSyn;
end;

procedure TMainFrm.SMLItemClick(Sender: TObject);
begin
if SMLItem.Checked then
Notepad.Highlighter := SynSMLSyn;
end;

procedure TMainFrm.DfmItemClick(Sender: TObject);
begin
if DfmItem.Checked then
Notepad.Highlighter := SynDfmSyn;
end;

procedure TMainFrm.IniItemClick(Sender: TObject);
begin
if IniItem.Checked then
Notepad.Highlighter := SynIniSyn;
end;

procedure TMainFrm.InnoItemClick(Sender: TObject);
begin
if InnoItem.Checked then
Notepad.Highlighter := SynInnoSyn;
end;

procedure TMainFrm.BaanItemClick(Sender: TObject);
begin
if BaanItem.Checked then
Notepad.Highlighter := SynBaanSyn;
end;

procedure TMainFrm.GalaxyItemClick(Sender: TObject);
begin
if GalaxyItem.Checked then
Notepad.Highlighter := SynGalaxySyn;
end;

procedure TMainFrm.ProgressItemClick(Sender: TObject);
begin
if ProgressItem.Checked then
Notepad.Highlighter := SynProgressSyn;
end;

procedure TMainFrm.MsgItemClick(Sender: TObject);
begin
if MsgItem.Checked then
Notepad.Highlighter := SynMsgSyn;
end;

procedure TMainFrm.IdlItemClick(Sender: TObject);
begin
if IdlItem.Checked then
Notepad.Highlighter := SynIdlSyn;
end;

procedure TMainFrm.UnrealItemClick(Sender: TObject);
begin
if UnrealItem.Checked then
Notepad.Highlighter := SynUnrealSyn;
end;

procedure TMainFrm.CPMItemClick(Sender: TObject);
begin
if CPMItem.Checked then
Notepad.Highlighter := SynCPMSyn;
end;

procedure TMainFrm.eXItemClick(Sender: TObject);
begin
if eXItem.Checked then
Notepad.Highlighter := SynTeXSyn;
end;

procedure TMainFrm.HaskellItemClick(Sender: TObject);
begin
if HaskellItem.Checked then
Notepad.Highlighter := SynHaskellSyn;
end;

procedure TMainFrm.LDRItemClick(Sender: TObject);
begin
if LDRItem.Checked then
Notepad.Highlighter := SynLDRSyn;
end;

procedure TMainFrm.URIItemClick(Sender: TObject);
begin
if URIItem.Checked then
Notepad.Highlighter := SynURISyn;
end;

procedure TMainFrm.DOTItemClick(Sender: TObject);
begin
if DOTItem.Checked then
Notepad.Highlighter := SynDOTSyn;
end;

procedure TMainFrm.RCSynItemClick(Sender: TObject);
begin
if RCSynItem.Checked then
Notepad.Highlighter := SynRCSyn;
end;

procedure TMainFrm.FindNextItemClick(Sender: TObject);
begin
if Notepad.Text = '' then
Exit else
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
FindDlgFind(Sender);
end;
end;

procedure TMainFrm.PropertiesItemClick(Sender: TObject);
begin
try
if FFileName = sUntitled then
Exit else
ShowPropertiesDialog(FFileName);
except
end;
end;

procedure TMainFrm.ExportAsHTMLItemClick(Sender: TObject);
begin
if Sender = ExportAsHTMLItem then
ExportAs := 1
else if Sender = ExportAsRTFItem then
ExportAs := 2
else
ExportAs := 0;
end;

procedure TMainFrm.ExportToFileItemClick(Sender: TObject);
var
FileName: string;
Exporter: TSynCustomExporter;
begin
case ExportAs of
1: SaveDlg.Filter := SynExporterHTML.DefaultFilter;
2: SaveDlg.Filter := SynExporterRTF.DefaultFilter;
end;
if SaveDlg.Execute then begin
Exporter := nil;
FileName := SaveDlg.FileName;
case ExportAs of
1: begin
if ExtractFileExt(FileName) = '' then
FileName := FileName + '.html';
Exporter := SynExporterHTML;
end;
2: begin
if ExtractFileExt(FileName) = '' then
FileName := FileName + '.rtf';
Exporter := SynExporterRTF;
end;
end;
if Assigned(Exporter) then with Exporter do begin
Highlighter := Notepad.Highlighter;
ExportAsText := TRUE;
ExportAll(Notepad.Lines);
SaveToFile(FileName);
end;
end;
end;

procedure TMainFrm.CopyHighLightToClipBoardITemClick(Sender: TObject);
begin
Clipboard.Open;
try
Clipboard.AsText := Notepad.Lines.Text;
if ExportAs in [0, 1] then with SynExporterHTML do
begin
ExportAsText := FALSE;
Highlighter := Notepad.Highlighter;
ExportAll(Notepad.Lines);
CopyToClipboard;
end;
if ExportAs in [0, 2] then with SynExporterRTF do
begin
ExportAsText := FALSE;
Highlighter := Notepad.Highlighter;
ExportAll(Notepad.Lines);
CopyToClipboard;
end;
finally
Clipboard.Close;
end;
end;

procedure TMainFrm.Export1Click(Sender: TObject);
var
HasText, IsEnabled: boolean;
i: integer;
begin
ExportAsHTMLItem.Checked := ExportAs = 1;
ExportAsRTFItem.Checked := ExportAs = 2;
AllFormatItem.Checked := ExportAs = 0;
HasText := FALSE;
for i := 0 to Notepad.Lines.Count - 1 do
if Notepad.Lines[i] <> '' then begin
HasText := TRUE;
break;
end;
IsEnabled := HasText and Assigned(Notepad.Highlighter);
CopyHighLightToClipBoardITem.Enabled := IsEnabled;
IsEnabled := IsEnabled and (ExportAs > 0);
ExportToFileItem.Enabled := IsEnabled;
end;

procedure TMainFrm.NotepadKeyPress(Sender: TObject; var Key: Char);
var
line, col, indent: integer;
S: string;
begin
try
if key = #13 then
begin
key := #0;
with sender as TSynMemo do
begin
Col := SelStart - Perform(EM_LINEINDEX, line, 0 );
S:= Copy(lines[ line ], 1, col );
indent := 0;
while (indent < length( S )) and (S[indent + 1] in [' ', #9]) do
Inc( indent );
SelText := #13#10 + Copy(S, 1, indent);
end;
end;
except
end;
end;

end.
