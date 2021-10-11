unit QChess_;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, Grids,math, ComCtrls, ImgList, Buttons,
  StdCtrls, JvSpecialImage,  FileCtrl, ToolWin, ValEdit, JvGroupBox, jpeg, JvBitBtn,
  JvBaseThumbnail, JvThumbnails, JvThumbviews;

type
  TF = class(TForm)
    mm: TMainMenu;
    mmFile: TMenuItem;
    mmExit: TMenuItem;
    N1: TMenuItem;
    mmSetupPosition: TMenuItem;
    N2: TMenuItem;
    mmSave: TMenuItem;
    mmOpen: TMenuItem;
    mmNew: TMenuItem;
    sgM: TStringGrid;
    plDesk: TPanel;
    img: TImage;
    ImageText: TImage;
    Bevel1: TBevel;
    Label1: TLabel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    StatusBar: TStatusBar;
    mmEdit: TMenuItem;
    mmUndo: TMenuItem;
    plLogo: TPanel;
    ImgBG: TImage;
    SD: TSaveDialog;
    OD: TOpenDialog;
    pm: TPopupMenu;
    ImgListFigure: TImageList;
    pmClear: TMenuItem;
    pm1Pawn: TMenuItem;
    pm1Rook: TMenuItem;
    pm1Horse: TMenuItem;
    pm1Gamer: TMenuItem;
    pm1Bishop: TMenuItem;
    pm1King: TMenuItem;
    pm2Gamer: TMenuItem;
    pm2King: TMenuItem;
    pm2Bishop: TMenuItem;
    pm2Horse: TMenuItem;
    pm2Rook: TMenuItem;
    pm2Pawn: TMenuItem;
    pm3Gamer: TMenuItem;
    pm3King: TMenuItem;
    pm3Bishop: TMenuItem;
    pm3Horse: TMenuItem;
    pm3Rook: TMenuItem;
    pm3Pawn: TMenuItem;
    pm4Gamer: TMenuItem;
    pm4King: TMenuItem;
    pm4Bishop: TMenuItem;
    pm4Horse: TMenuItem;
    pm4Rook: TMenuItem;
    pm4Pawn: TMenuItem;
    mmLoadPosition: TMenuItem;
    Label2: TLabel;
    mmView: TMenuItem;
    mmTurn: TMenuItem;
    mmTurnLeft: TMenuItem;
    mmTurnRight: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    FileListBox: TFileListBox;
    mmSavePosition: TMenuItem;
    plPositions: TPanel;
    lPosition: TLabel;
    cbOrderSetup: TComboBox;
    sbSave: TSpeedButton;
    plGamers: TPanel;
    bStartPosition: TButton;
    bBackStep: TJvBitBtn;
    bForward: TJvBitBtn;
    gbGame: TGroupBox;
    gbGamers: TGroupBox;
    JvSpecialImage1: TJvSpecialImage;
    JvSpecialImage2: TJvSpecialImage;
    JvSpecialImage3: TJvSpecialImage;
    JvSpecialImage4: TJvSpecialImage;
    leInput: TLabeledEdit;
    bStartGame: TJvBitBtn;
    mmForward: TMenuItem;
    JvThumbView: TJvThumbView;
    ListBox: TListBox;
    cbSetupPosition: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure imgMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure bStartGameClick(Sender: TObject);
    procedure bDefaultPositionClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure UndoClick(Sender: TObject);
    procedure plDeskMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mmNewClick(Sender: TObject);
    procedure mmSetupPositionClick(Sender: TObject);
    procedure mmSaveClick(Sender: TObject);
    procedure mmOpenClick(Sender: TObject);
    procedure cbOrderSetupChange(Sender: TObject);
    procedure mmUndoClick(Sender: TObject);
    procedure leInputChange(Sender: TObject);
    procedure pmClearClick(Sender: TObject);
    procedure imgContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure mmLoadPositionClick(Sender: TObject);
    procedure cbOrderSetupSelect(Sender: TObject);
    procedure mmTurnLeftClick(Sender: TObject);
    procedure mmTurnRightClick(Sender: TObject);
    procedure sbLeftClick(Sender: TObject);
    procedure sbRightClick(Sender: TObject);
    procedure sbLeftMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure sbRightMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure sbBackClick(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure pm1PawnClick(Sender: TObject);
    procedure pm2PawnClick(Sender: TObject);
    procedure pm3PawnClick(Sender: TObject);
    procedure pm4PawnClick(Sender: TObject);
    procedure sbSaveClick(Sender: TObject);
    procedure pm1RookClick(Sender: TObject);
    procedure pm2RookClick(Sender: TObject);
    procedure pm3RookClick(Sender: TObject);
    procedure pm4RookClick(Sender: TObject);
    procedure pm1HorseClick(Sender: TObject);
    procedure pm2HorseClick(Sender: TObject);
    procedure pm3HorseClick(Sender: TObject);
    procedure pm4HorseClick(Sender: TObject);
    procedure pm1BishopClick(Sender: TObject);
    procedure pm2BishopClick(Sender: TObject);
    procedure pm3BishopClick(Sender: TObject);
    procedure pm4BishopClick(Sender: TObject);
    procedure pm1KingClick(Sender: TObject);
    procedure pm2KingClick(Sender: TObject);
    procedure pm3KingClick(Sender: TObject);
    procedure pm4KingClick(Sender: TObject);
    procedure mmSavePositionClick(Sender: TObject);
    procedure sbNewClick(Sender: TObject);
    procedure bStartPositionClick(Sender: TObject);
    procedure bBackStepClick(Sender: TObject);
    procedure mmForwardClick(Sender: TObject);
    procedure bForwardClick(Sender: TObject);
    procedure cbSelfOrderClick(Sender: TObject);
    procedure JvThumbViewClick(Sender: TObject);
    procedure JvThumbViewStopScanning(Sender: TObject);
    procedure ImageTextMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure leInputMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cbSetupPositionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const n=8;//размер матрицы (доски) n*n
      sz=40;//размер стороны клетки
      iKings:array [1..4] of byte=(18,28,38,48);
      iPawns:array [1..4] of set of byte=([11..14],[21..24],[31..34],[41..44]);

Type ShortWord=0..10000;

Type TStructGame=record
     iMove:1..5;
     nStep:ShortWord;
     A:array [ShortWord,1..n,1..n] of byte;
     ID:array [byte] of 0..1;
     End;

Type TStructStep=record
     iMove:1..5;//кто ходит
     A:array [1..n,1..n] of byte;
     ID:array [byte] of 0..1;
     End;

Type TCell=record
     X:integer;
     Y:integer;
     Focus:TRect;
     CurrGamer:1..4;
     CurrFigure:byte;
     tmpFigure:byte;
     Flag:byte;
     End;

Type TPawn=record
     ID:array [byte] of 0..1;
     plus:array [1..4] of Boolean;
     end;

Type TKing=record
     flag:Boolean;
     value:byte;
     End;

Type TSetupFigure=record
     Figure:byte;
     flag:Boolean;
     End;

type TColorPositionFigures=record
     white:TPoint;
     green:TPoint;
     red:TPoint;
     brown:TPoint;
     end;

var
  F: TF;
  SL:TStructGame;
  StructStep:TStructStep;

  plc:TColorPositionFigures;
  Cell:TCell;
  A:array [ShortWord,1..n,1..n] of byte;//матрица расстановки
  Setup:TSetupFigure;
  iPawn:array [1..4] of byte;
  iMove:1..5;
  turn:1..5;
  step:boolean;
  Bmp:TBitMap;
  szRect:TRect;
  p:array [1..2] of TPoint;
  pthDir:string;//путь к директории проги
  z:array [1..2] of byte;
  FocusRect:TRect;//фокус клетки
  d:TPoint;
  nStep:ShortWord;//номер хода
  BackStep:Boolean=false;
  pawn:TPawn;
  king:array [1..4] of TKing;
  Q:byte;//числовое выражение фигур в матрице
  iSelect:byte;//выбор фигуры при расстановке
      Castling:Boolean;//возможность ракировки
      Names:array [0..6] of string=
      (
      '0',
      'Пешка',
      'Ладья',
      'Конь',
      'Слон',
      'Ферзь',
      'Король'
      );
      hints:array [1..10] of string=//подсказки
      (
      'Чтобы выбрать фигуру, кликните по ней левой кнопкой мыши; отменить выбор - правой',
      'Выбрав фигуру, наведите курсор на соответствующее поле доски и левую кнопку мыши',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      ''
      );
      abc:string[8]='ABCDEFGH';
      Gamers:array [1..4] of string=
      ('Ход Белых','Ход Красных','Ход Зелёных','Ход Коричневых');
Procedure EnableFigures(flag:Boolean);
Procedure SetupOrder(nStep:byte);
Procedure InsertFigure(Q:byte);
Procedure CheckStepKing(Q:byte);
Procedure Desk(nStep:byte);
Procedure MoveCode(iMove:byte);

implementation
{$R *.dfm}

Procedure VideoMode(x,y:word);//смена разрешения
var dm:TDEVMODE;
begin
ZeroMemory(@dm,sizeof(TDEVMODE));
dm.dmSize:=sizeof(TDEVMODE);
dm.dmPelsWidth:= x;
dm.dmPelsHeight:= y;
dm.dmFields:=DM_PELSWIDTH or DM_PELSHEIGHT;
ChangeDisplaySettings(dm, 0);
end;

//Загрузка хода
Procedure LoadStep(nStep:ShortWord;FName:string);
var fl:file of TStructStep;
    i,j:word;
Begin
                      AssignFile(fl,FName);Reset(fl);
                      read(fl,StructStep);
                      iMove:=StructStep.iMove;
                      for i:=1 to n do
                      for j:=1 to n do
                      A[nStep,i,j]:=StructStep.A[i,j];

                      for i:=11 to 45 do Pawn.ID[i]:=StructStep.ID[i];
                      Desk(nStep);
                      Setup.Figure:=0;
                      Setup.flag:=False;
                      CloseFile(fl);
End;

//Загрузка игры
Procedure LoadGame(FName:string);
var fl:file of TStructGame;
    i,j:word;
Begin
                      AssignFile(fl,FName);Reset(fl);
                      read(fl,SL);
                      nStep:=SL.nStep;
                      for i:=1 to n do
                      for j:=1 to n do
                      A[nStep,i,j]:=SL.A[nStep,i,j];

                      {for i:=11 to 44 do
                      for j:=1 to 4 do
                      if(i in iPawns[j]) then Pawn.ID[i]:=SL.ID[i];}
                      iMove:=SL.iMove;
//                      turn:=SL.Turn;
                      Desk(nStep);
                      Setup.Figure:=0;
//                      Setup.flag:=False;
                      SetupOrder(nStep);
                      CloseFile(fl);
End;
//********************************************************************
Procedure SaveStep(nStep:ShortWord;FName:string);
var fl:file of TStructStep;
    i,j:word;
Begin
                      AssignFile(fl,FName);Rewrite(fl);
                      StructStep.iMove:=iMove;
                      for i:=1 to n do
                      for j:=1 to n do
                      StructStep.A[i,j]:=A[nStep,i,j];

                      for i:=11 to 44 do StructStep.ID[i]:=Pawn.ID[i];
                      write(fl,StructStep);
                      CloseFile(fl);
End;

Procedure SaveGame(FName:string);
var fl:file of TStructGame;
    i,j:word;
Begin
                      AssignFile(fl,FName);Rewrite(fl);
                      SL.iMove:=iMove;
//                      SL.Turn:=turn;
                      SL.nStep:=nStep;
                      for i:=1 to n do
                      for j:=1 to n do
                      SL.A[nStep,i,j]:=A[nStep,i,j];

//                      for i:=11 to 44 do SL.ID[i]:=Pawn.ID[i];
                      write(fl,SL);
                      CloseFile(fl);

End;

//замена 99 на 0
Procedure Zeroation(nStep:ShortWord);
var i,j:byte;
Begin
for i:=1 to n do
for j:=1 to n do
if(A[nStep,i,j]=99) then A[nStep,i,j]:=0;
End;

//**********************************************************************
//Посветка игрока, который должен ходить
Procedure IconGamer(iMove:byte);
const light=66;
Begin
F.JvSpecialImage1.Brightness:=light;
F.JvSpecialImage2.Brightness:=light;
F.JvSpecialImage3.Brightness:=light;
F.JvSpecialImage4.Brightness:=light;
case iMove of
1:F.JvSpecialImage1.Brightness:=100;
2:F.JvSpecialImage2.Brightness:=100;
3:F.JvSpecialImage3.Brightness:=100;
4:F.JvSpecialImage4.Brightness:=100;
  end;
End;

Function bgCell(pX,pY:byte):TColor;
Begin
if (odd(pX)=true)and(odd(pY)=false)
    or (odd(pX)=false)and(odd(pY)=true) then bgCell:=clBlack
    else
    if (odd(pX)=false)and(odd(pY)=false)
    or (odd(pX)=true)and(odd(pY)=true) then bgCell:=clWhite;
End;

Function clPen(pX,pY:byte):TColor;
Begin
if (odd(pX)=true)and(odd(pY)=false)
    or (odd(pX)=false)and(odd(pY)=true) then clPen:=clBlack
    else
    if (odd(pX)=false)and(odd(pY)=false)
    or (odd(pX)=true)and(odd(pY)=true) then clPen:=clWhite;
End;

Procedure Paste(pX,pY:byte;Figure:byte);
var RectFig0,RectFig:Trect;
Begin
RectFig0:=rect((pX-1)*sz,(pY-1)*sz,pX*sz,pY*sz);
RectFig:=rect((pX-1)*sz,(pY-1)*sz,pX*sz,pY*sz);
F.img.Canvas.Brush.Color:=bgCell(pX-1,pY-1);
if(Figure=0) then
begin
bmp.LoadFromFile(pthDir+'\Figures\0.bmp');F.img.Canvas.BrushCopy(rectFig0,bmp,szRect,clBlue);
end
else
if(Figure>0) then
begin
bmp.LoadFromFile(pthDir+'\Figures\'+IntToStr(Figure)+'.bmp');
F.img.Canvas.BrushCopy(RectFig,bmp,szRect,clBlue);
end;
bmp.FreeImage;
End;

//обнуление матрицы
Procedure ClearDesk;
var i,j:byte;
Begin
for i:=0 to n-1 do
for j:=0 to n-1 do
                  begin
                  A[nStep,i+1,j+1]:=0;
                  F.sgM.Cells[i,j]:=FloatToStr(A[nStep,i+1,j+1]);
                  end;
End;

//расстанока пешек по умолчанию
Procedure DefaultPawns(i:byte);
Begin
      A[nStep,i+plc.white.X,plc.white.Y-1]:=10+i;//белые
      A[nStep,i+plc.green.X-1,plc.green.Y+1]:=30+i;//зелёные
      A[nStep,plc.red.X+1,i+plc.red.Y]:=20+i;//красные
      A[nStep,plc.brown.X,i+plc.brown.Y]:=40+i;//коричневые
End;

//расстанока королей по умолчанию
Procedure DefaultKings(nStep:byte);
Begin
ClearDesk;
     A[nStep,4,8]:=18;//белые
     A[nStep,1,4]:=28;//красные
     A[nStep,5,1]:=38;//зелёные
     A[nStep,8,5]:=48;//коричневые
End;

//#############################################################
Procedure Matrix(nStep:ShortWord;key:ShortInt);
var i,j:integer;
Begin
case key of
0:ClearDesk;//пустая доска
1:DefaultKings(nStep);//4 короля
2://полная расстановка
      for i:=1 to 8 do
      if(i<=4) then DefaultPawns(i)//пешки
      else
      if(i>4) then
               begin
               A[nStep,i+plc.white.X-4,plc.white.Y]:=10+i;//левые белые фигуры
               A[nStep,8-i+plc.green.X,plc.green.Y]:=30+i;//левые зелёные фигуры
               A[nStep,plc.red.X,i+plc.red.Y-4]:=20+i;//левые красные фигуры
               A[nStep,plc.brown.X+1,9-i+plc.brown.Y]:=40+i;//левые коричневые фигуры
end;               end;
//CheckSetup;
//!
End;

Procedure TurnMatrix(nStep:ShortWord;TurnRound:byte);
var i,j:byte;
    B:array [1..10,1..10] of byte;
Begin
    for i:=1 to n do
    begin
    for j:=1 to n do
    case TurnRound of
    0:begin B[i,n-j+1]:=A[nStep,j,i];end;//против часовой
    1:begin B[n-i+1,j]:=A[nStep,j,i];end;//по часовой
      end;
    end;

    for i:=1 to n do
    for j:=1 to n do
    A[nStep,i,j]:=B[i,j];

    case TurnRound of
    0:begin dec(turn);if(turn=0) then turn:=4;end;
    1:begin inc(turn);if(turn=5) then turn:=1;end;
      end;
End;

//вспомогательная процедура для отображения значений текущей матрицы
Procedure View(nStep:ShortWord);
var i,j:byte;
Begin
F.sgM.Font.Color:=clWhite;
for i:=0 to n-1 do
for j:=0 to n-1 do
begin
F.sgM.Cells[i,j]:=IntToStr(A[nStep,i+1,j+1]);
end;
End;

Procedure Position(nStep:byte);
var i,j:integer;
Begin
    for i:=0 to n do
    for j:=0 to n do Paste(i,j,A[nStep,i,j]);
End;

//************************************************
Procedure Desk(nStep:byte);
Begin
    Position(nStep);
    Zeroation(nStep);
    View(nStep);
End;

Procedure NoStart;//запрет запуска 2-го экземпляра проги
Var //ExtEndedStyle:dword;
Wnd:hWnd;
buff:Array[0..127] of Char;
Begin
Wnd:=GetWindow(Application.Handle,gw_HWndFirst);
While Wnd<>0 do
Begin
      If(Wnd<>Application.Handle)and(GetWindow(Wnd,gw_Owner)=0) then
      Begin
      GetWindowText(Wnd, buff, sizeof(buff));
      If StrPas(buff)=Application.Title then Halt;
      End;
Wnd:=GetWindow(Wnd,gw_hWndNext);
End;
End;

Procedure Coordinates;
var i:byte;
    k:ShortWord;
Begin
F.ImageText.Canvas.Font.Size:=12;
F.ImageText.Canvas.Font.Style:=[fsBold];
F.ImageText.Canvas.Font.Name:='Times New Roman';
k:=33;
for i:=1 to 8 do
begin
F.ImageText.Canvas.TextOut(k,3,ABC[i]);F.ImageText.Canvas.TextOut(k,343,ABC[i]);
inc(k,40);
end;

k:=32;
for i:=8 downto 1 do
begin
if(i>=10) then F.ImageText.Canvas.TextOut(0,k,IntToStr(i))
else
if(i<10) then F.ImageText.Canvas.TextOut(0,k,#32+IntToStr(i));
if(i>=10) then F.ImageText.Canvas.TextOut(343,k,IntToStr(i))
else
if(i<10) then F.ImageText.Canvas.TextOut(343,k,#32+IntToStr(i));
inc(k,40);
end;
end;

Procedure ImgFocus(iSelect:byte);
var i:integer;
Begin
for i:=0 to F.JvThumbView.ThumbList.Count-1 do
F.JvThumbView.ThumbList.Thumbnail[i].Color:=clInactiveBorder;
F.JvThumbView.ThumbList.Thumbnail[iSelect].Color:=clAppWorkSpace;
End;

procedure TF.JvThumbViewClick(Sender: TObject);
var s:string;i,j,p,l,max:byte;
begin
step:=true;
iSelect:=F.JvThumbView.Selected;
//ShowMessage(IntToStr(iSelect));
s:=F.JvThumbView.SelectedFile;
ImgFocus(iSelect);
l:=length(s);
delete(s,l-3,4);
delete(s,1,l-6);
Setup.Figure:=StrToInt(s);
max:=Setup.Figure;
if(Setup.Figure in [11..14,21..24,31..34,41..44]) then
begin
   for i:=1 to n do
   for j:=1 to n do
   case Setup.Figure of
        11:if(max<=A[nStep,i,j])and(A[nStep,i,j] in [11..14]) then begin max:=A[nStep,i,j];end;
        21:if(max<=A[nStep,i,j])and(A[nStep,i,j] in [21..24]) then begin max:=A[nStep,i,j];end;
        31:if(max<=A[nStep,i,j])and(A[nStep,i,j] in [31..34]) then begin max:=A[nStep,i,j];end;
        41:if(max<=A[nStep,i,j])and(A[nStep,i,j] in [41..44]) then begin max:=A[nStep,i,j];end;
           end;
Setup.Figure:=max;
end;
F.Label2.Caption:=s;
F.JvThumbView.Cursor:=crDrag;
end;

//***************************************************
Procedure EnablePosition(flag:Boolean);
const light=66;
var t,i:byte;
Begin
F.JvSpecialImage1.Brightness:=light;
F.JvSpecialImage2.Brightness:=light;
F.JvSpecialImage3.Brightness:=light;
F.JvSpecialImage4.Brightness:=light;

F.lPosition.Enabled:=flag;
F.cbOrderSetup.Enabled:=flag;
F.sbSave.Enabled:=flag;
F.bStartPosition.Enabled:=flag;
End;

//включение установочного набора фигур
Procedure EnableFigures(flag:Boolean);
var i,t:byte;
Begin
t:=F.JvThumbView.Count-1;
if(flag=false) then for i:=0 to t do F.JvThumbView.ThumbList.Thumbnail[i].Photo.Grayscale;
if(flag=true) then F.JvThumbView.Directory:=pthDir+'\Placement';
End;


Procedure SetupOrder(nStep:byte);
var i,j:byte;
Begin
//возможность ракировки
for i:=1 to 4 do
for j:=1 to 8 do
case i of
1:if(A[nStep,4,8]=18)and(A[nStep,3,8]=17) then begin king[i].flag:=true;break;end else king[i].flag:=false;
2:if(A[nStep,1,4]=28)and(A[nStep,1,3]=27) then begin king[i].flag:=true;break;end else king[i].flag:=false;
3:if(A[nStep,5,1]=38)and(A[nStep,6,1]=37) then begin king[i].flag:=true;break;end else king[i].flag:=false;
4:if(A[nStep,8,5]=48)and(A[nStep,8,6]=47) then begin king[i].flag:=true;break;end else king[i].flag:=false;
  end;

iPawn[1]:=10;
iPawn[2]:=20;
iPawn[3]:=30;
iPawn[4]:=40;

//пешки - право хода на 2 клетки вперёд
for i:=11 to 14 do if(A[nStep,i-10,7] in [11..14]) then Pawn.ID[i]:=1 else Pawn.ID[i]:=0;
for i:=21 to 24 do if(A[nStep,2,i-20] in [21..24]) then Pawn.ID[i]:=1 else Pawn.ID[i]:=0;
for i:=31 to 34 do if(A[nStep,4+(i-30),2] in [31..34]) then Pawn.ID[i]:=1 else Pawn.ID[i]:=0;
for i:=41 to 44 do if(A[nStep,7,4+(i-40)] in [41..44]) then Pawn.ID[i]:=1 else Pawn.ID[i]:=0;
//ShowMessage('!');
End;

//===============================================================
procedure TF.FormCreate(Sender: TObject);
var i,j:ShortWord;
begin
//NoStart;
GetDir(0,pthDir);
iMove:=1;
nStep:=1;
Cell.Flag:=0;
Cell.CurrFigure:=0;
Cell.CurrGamer:=iMove;
szRect:=rect(0,0,sz,sz);//размер клетки
for i:=1 to 4 do king[i].flag:=true;//короли ни разу не ходили
for i:=1 to 4 do pawn.plus[i]:=false;//индексирование пешек запрещено
for i:=11 to 44 do//право пешки ходить на 2 клетки
if (i in [11..14,21..24,31..34,41..44]) then Pawn.ID[i]:=1;
    for i:=1 to n do
    for j:=1 to n do A[nStep,i,j]:=0;
//Setup.flag:=False;
bmp:=TBitMap.Create;
end;


procedure TF.FormShow(Sender: TObject);
var i,j:byte;
begin
F.FileListBox.Directory:=pthDir+'\positions';
F.cbOrderSetup.Items:=F.FileListBox.Items;
F.cbOrderSetup.ItemIndex:=0;

F.JvThumbView.Directory:=pthDir+'\Placement';
EnableFigures(Setup.flag);
EnablePosition(Setup.flag);

plc.white.X:=0;plc.white.Y:=n;
plc.green.X:=5;plc.green.Y:=1;
plc.red.X:=1;plc.red.Y:=0;
plc.brown.X:=n-1;plc.brown.Y:=n-4;

F.SD.InitialDir:=pthDir+'\Saves\';
F.OD.InitialDir:=pthDir+'\Saves\';
//VideoMode(1440,900);
IconGamer(iMove);
Matrix(nStep,2);//первоначальная расстановка
SetupOrder(nStep);
//CheckKick;
Desk(nStep);SaveStep(nStep,pthDir+'\temp.qch');
Coordinates;
end;
//***********************************************

Function Delta(x,y:integer):integer;
Begin
delta:=abs(x)+abs(y);
End;

Procedure dxy(x,y:integer;var d:TPoint);
Begin
d.X:=0;d.Y:=0;
d.X:=p[Cell.Flag].X-X;
d.Y:=p[Cell.Flag].Y-Y;
{else
case turn of
1:begin d.X:=p[1].X-Cell.X;d.Y:=p[1].Y-Cell.Y;end;
2:begin d.X:=Cell.X-p[1].X;d.Y:=Cell.Y-p[1].Y;end;
3:begin d.X:=Cell.X-p[1].X;d.Y:=Cell.Y-p[1].Y;end;
4:begin d.X:=p[1].X-Cell.X;d.Y:=p[1].Y-Cell.Y;end;
  end;}
End;

Function idFig(y:byte):byte;
Begin
idFig:=(y-10*trunc(y/10));
end;

//@
//||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
//||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
Procedure Pawns(var step:boolean);
var lim:TRect;
    i:byte;
Begin
//step:=false;
lim.Left:=0;lim.Right:=0;lim.Top:=0;lim.Bottom:=0;
for i:=1 to 2 do if(A[nStep,p[1].X+i,p[1].Y]=0) then lim.Left:=i else break;
for i:=1 to 2 do if(A[nStep,p[1].X-i,p[1].Y]=0) then lim.Right:=i else break;
for i:=1 to 2 do if(A[nStep,p[1].X,p[1].Y+i]=0) then lim.Top:=i else break;
for i:=1 to 2 do if(A[nStep,p[1].X,p[1].Y-i]=0) then lim.Bottom:=i else break;
//пешки
case iMove of
      1:case Pawn.ID[Q] of
         1:if(d.Y<=lim.Bottom)and(d.X=0)
           or((d.Y=1)and(abs(d.X)=1)and(Cell.tmpFigure<>0)) then
           step:=true else step:=false;
         0:if((d.Y=1)and(d.X=0)and(Cell.tmpFigure=0))
           or((d.Y=1)and(abs(d.X)=1)and(Cell.tmpFigure<>0)) then
           step:=true else step:=false;
         end;
     2:case Pawn.ID[Q] of
         1:if(d.X>=-lim.Left)and(d.Y=0)
           or((d.X=-1)and(abs(d.Y)=1)and(Cell.tmpFigure<>0))then step:=true
           else step:=false;
         0:if((d.X=-1)and(d.Y=0))and(Cell.tmpFigure=0)
           or((d.X=-1)and(abs(d.Y)=1)and(Cell.tmpFigure<>0))then step:=true
           else step:=false;
           end;
     3:case Pawn.ID[Q] of
         1:if(d.Y>=-lim.Top)and(d.X=0)
           or((d.Y=1)and(abs(d.X)=1)and(Cell.tmpFigure<>0)) then
           step:=true else step:=false;
         0:if(d.Y=-1)and(d.X=0)and(Cell.tmpFigure=0)
           or((d.Y=-1)and(abs(d.X)=1)and(Cell.tmpFigure<>0))  then step:=true
           else step:=false;
           end;
     4:case Pawn.ID[Q] of
         1:if(d.X<=lim.Right)and(d.Y=0)
           or((d.X=1)and(abs(d.Y)=1)and(Cell.tmpFigure<>0)) then step:=true
           else step:=false;
         0:if(d.X=1)and(d.Y=0)and(Cell.tmpFigure=0)
           or((d.X=1)and(abs(d.Y)=1)and(Cell.tmpFigure<>0)) then step:=true
           else step:=false;
           end;
     end;
{end
else
if(turn<>iMove) then//автопорот=тру
case Pawn.ID[Pawn.index] of
         1:if((d.Y>0)and(d.Y<=lim.Bottom)and(d.X=0))
           or((d.Y=1)and(abs(d.X)=1)and(Cell.tmpFigure<>0)) then
           step:=true else step:=false;
         0:if((d.Y=1)and(d.X=0)and(Cell.tmpFigure=0))
           or((d.Y=1)and(abs(d.X)=1)and(Cell.tmpFigure<>0)) then
           step:=true else step:=false;
         end;}
End;

Procedure Rooks(var step:Boolean);
var i:byte;
    lim:TRect;
Begin
//X
lim.Left:=0;lim.Right:=0;lim.Top:=0;Lim.Bottom:=0;
for i:=p[1].X-1 downto 1 do if(A[nStep,i,p[1].Y]=0) then lim.Left:=i else break;
if(lim.Left=0) then lim.Left:=p[1].X+1
else
if(trunc(A[nStep,lim.Left,p[1].Y])<>Cell.CurrGamer) then dec(lim.Left);
for i:=p[1].X+1 to n do if(A[nStep,i,p[1].Y]=0) then lim.Right:=i else break;
if(lim.Right=0) then lim.Right:=p[1].X+1
else
if(trunc(A[nStep,lim.Right,p[1].Y])<>Cell.CurrGamer) then inc(lim.Right);
//Y
for i:=p[1].Y-1 downto 1 do if(A[nStep,p[1].X,i]=0) then lim.Top:=i else break;
if(lim.Top=0) then lim.Top:=p[1].Y-1
else if(trunc(A[nStep,p[1].X,lim.Top])<>Cell.CurrGamer) then dec(lim.Top);
for i:=p[1].Y+1 to n do if(A[nStep,p[1].X,i]=0) then lim.Bottom:=i else break;
if(lim.Bottom=0) then lim.Bottom:=p[1].Y+1
else
if(trunc(A[nStep,p[1].X,lim.Bottom])<>Cell.CurrGamer) then inc(lim.Bottom);
     if(d.Y=0)and(Cell.X in [lim.Left..lim.Right])
     or(d.X=0)and(Cell.Y in [lim.Top..lim.Bottom])
     then step:=true else step:=false;
End;

Procedure Knight(var step:Boolean);
Begin
     if((abs(d.X)=2)and(abs(d.Y)=1)
     or(abs(d.X)=1)and(abs(d.Y)=2)) then step:=true
     else step:=false;
End;

Procedure Bishop(var step:Boolean);
var i,j:byte;
    lim:array [1..4] of TPoint;
    k:array [1..4] of TPoint;
    dxy:byte;
    Ya:real;
    label esc1,esc2,esc3,esc4;
Begin
for i:=1 to 4 do begin lim[i].X:=0;lim[i].Y:=0;end;
k[1].X:=p[1].X;k[1].Y:=p[1].Y;
dxy:=abs(p[1].X-p[1].Y);
//X->n;Y->n
for i:=p[1].X+1 to n do
for j:=p[1].Y+1 to n do
if(dxy=abs(i-j)) then
                 begin
inc(k[1].X);inc(k[1].Y);Ya:=A[nStep,k[1].X,k[1].Y];
if(trunc(Ya)=Cell.CurrGamer) then
begin lim[1].X:=k[1].X-1;lim[1].Y:=k[1].Y-1;goto esc1;end
else
if(trunc(Ya)<>Cell.CurrGamer)and(Ya<>0)or(k[1].Y=n) then
begin lim[1].X:=k[1].X;lim[1].Y:=k[1].Y;goto esc1;end;
                 end;
esc1:;
//X->1;Y->1;!
k[2].X:=p[1].X;k[2].Y:=p[1].Y;
for i:=p[1].X-1 downto 1 do
for j:=p[1].Y-1 downto 1 do
if(dxy<>abs(i-j)) then
                  begin
dec(k[2].X);dec(k[2].Y);Ya:=A[nStep,k[2].X,k[2].Y];
if(trunc(Ya)=Cell.CurrGamer) then
begin lim[2].X:=k[2].X+1;lim[2].Y:=k[2].Y+1;goto esc2;end
else
if(trunc(Ya)<>Cell.CurrGamer)and(Ya<>0) then
begin lim[2].X:=k[2].X;lim[2].Y:=k[2].Y;goto esc2;end;
                  end;
esc2:
//X->n;Y->1
k[3].X:=p[1].X;k[3].Y:=p[1].Y;
for i:=p[1].X+1 to n do
for j:=p[1].Y-1 downto 1 do
if(dxy<>(i+j)) then
                  begin
inc(k[3].X);dec(k[3].Y);Ya:=A[nStep,k[3].X,k[3].Y];
if(trunc(Ya)=Cell.CurrGamer) then
begin lim[3].X:=k[3].X-1;lim[3].Y:=k[3].Y+1;goto esc3;end
else
if(trunc(Ya)<>Cell.CurrGamer)and(Ya<>0)or(k[3].X=n)or(k[3].Y=1) then
begin lim[3].X:=k[3].X;lim[3].Y:=k[3].Y;goto esc3;end;
                  end;
esc3:;
//X->1;Y->n
k[4].X:=p[1].X;k[4].Y:=p[1].Y;
for i:=p[1].X+1 downto 1 do
for j:=p[1].Y-1 to n do
                  begin
dec(k[4].X);inc(k[4].Y);Ya:=A[nStep,k[4].X,k[4].Y];
if(trunc(Ya)=Cell.CurrGamer) then
begin lim[4].X:=k[4].X+1;lim[4].Y:=k[4].Y-1;goto esc4;end
else
if(trunc(Ya)<>Cell.CurrGamer)and(Ya<>0)or(k[4].X=1)or(k[4].Y=n) then
begin lim[4].X:=k[4].X;lim[4].Y:=k[4].Y;goto esc4;end;
                  end;
esc4:;
     if
     (
     (Cell.X in [p[1].X..lim[1].X])and(Cell.Y in [p[1].Y..lim[1].Y])or
     (Cell.X in [lim[2].X..p[1].X])and(Cell.Y in [lim[2].Y..p[1].Y])or
     (Cell.X in [p[1].X..lim[3].X])and(Cell.Y in [lim[3].Y..p[1].Y])or
     (Cell.X in [lim[4].X..p[1].X])and(Cell.Y in [p[1].Y..lim[4].Y])
     )
     and(abs(d.X)=abs(d.Y))
     then step:=true else step:=false;
End;

Procedure Queen(var step:boolean);//ферзь
var i,j:byte;
    limit:TRect;
    lim:array [1..4] of TPoint;
    t1,t2:byte;
    label esc1,esc2,esc3,esc4;
Begin
limit.Left:=0;limit.Right:=0;limit.Top:=0;Limit.Bottom:=0;
for i:=p[1].X-1 downto 1 do if(A[nStep,i,p[1].Y]=0) then limit.Left:=i else break;
if(limit.Left=0) then limit.Left:=p[1].X+1
else
if(trunc(A[nStep,limit.Left,p[1].Y])<>Cell.CurrGamer) then dec(limit.Left);
for i:=p[1].X+1 to n do if(A[nStep,i,p[1].Y]=0) then limit.Right:=i else break;
if(limit.Right=0) then limit.Right:=p[1].X+1
else
if(trunc(A[nStep,limit.Right,p[1].Y])<>Cell.CurrGamer) then inc(limit.Right);
//Y
for i:=p[1].Y-1 downto 1 do if(A[nStep,p[1].X,i]=0) then limit.Top:=i else break;
if(limit.Top=0) then limit.Top:=p[1].Y-1
else if(trunc(A[nStep,p[1].X,limit.Top])<>Cell.CurrGamer) then dec(limit.Top);
for i:=p[1].Y+1 to n do if(A[nStep,p[1].X,i]=0) then limit.Bottom:=i else break;
if(limit.Bottom=0) then limit.Bottom:=p[1].Y+1
else
if(trunc(A[nStep,p[1].X,limit.Bottom])<>Cell.CurrGamer) then inc(limit.Bottom);

for i:=1 to 4 do begin lim[i].X:=0;lim[i].Y:=0;end;
t1:=abs(p[1].X-p[1].Y);
//X->n;Y->n
for i:=p[1].X+1 to n do
for j:=p[1].Y+1 to n do
begin
if(t1<>abs(i-j)) then continue;
if (A[nStep,i,j]=0)and((i=n)or(j=n)) then
begin lim[1].X:=i;lim[1].Y:=j;goto esc1;end;
if (A[nStep,i,j]>0) then begin lim[1].X:=i;lim[1].Y:=j;goto esc1;end;
end;
esc1:;
//X->1;Y->1
for i:=p[1].X-1 downto 1 do
for j:=p[1].Y-1 downto 1 do
begin
if(t1<>abs(i-j)) then continue;
if(A[nStep,i,j]=0)and((i=1)or(j=1)) then
begin lim[2].X:=i;lim[2].Y:=j;goto esc2;end;
if(A[nStep,i,j]>0) then begin lim[2].X:=i;lim[2].Y:=j;goto esc2;end;
end;
esc2:

//X->n;Y->1
t2:=abs(p[1].X+p[1].Y);
for i:=p[1].X+1 to n do
for j:=p[1].Y-1 downto 1 do
begin
if(t2<>(i+j)) then continue;
if(A[nStep,i,j]=0)and((i=n)or(j=1)) then
begin lim[3].X:=i;lim[3].Y:=j;goto esc3;end;
if(A[nStep,i,j]>0) then begin lim[3].X:=i;lim[3].Y:=j;goto esc3;end;
end;
esc3:;

//X->1;Y->n
for i:=p[1].X+1 downto 1 do
for j:=p[1].Y+1 to n do
begin
if(t2<>(i+j)) then continue;
if(A[nStep,i,j]=0)and((i=1)or(j=n)) then
begin lim[4].X:=i;lim[4].Y:=j;goto esc4;end;
if(A[nStep,i,j]>0) then begin lim[4].X:=i;lim[4].Y:=j;goto esc4;end;
end;
esc4:;

if(q=51) then//ферзь
     if//для ладьи
     (d.Y=0)and(Cell.X in [limit.Left..limit.Right])or
     (d.X=0)and(Cell.Y in [limit.Top..limit.Bottom])or
     (//для слона
     (Cell.X in [p[1].X..lim[1].X])and(Cell.Y in [p[1].Y..lim[1].Y])or
     (Cell.X in [lim[2].X..p[1].X])and(Cell.Y in [lim[2].Y..p[1].Y])or
     (Cell.X in [p[1].X..lim[3].X])and(Cell.Y in [lim[3].Y..p[1].Y])or
     (Cell.X in [lim[4].X..p[1].X])and(Cell.Y in [p[1].Y..lim[4].Y])
     )
     and(abs(d.X)=abs(d.Y))
     then step:=true else step:=false;
End;

Procedure Kings(var step:boolean);//!
var t:byte;
Begin
t:=A[nStep,Cell.X,Cell.Y];
//ShowMessage(BoolToStr(king[2].flag,true));
Castling:=true;//ракировка изначально возможна
//проверка возможности ракироваться
case iMove of
1:Castling:=(p[1].X=4)and(p[1].Y=8)and(Cell.X=2)and(Cell.Y=8)and(king[1].flag=true);
2:Castling:=(p[1].X=1)and(p[1].Y=4)and(Cell.X=1)and(Cell.Y=2)and(king[2].flag=true);
3:Castling:=(p[1].X=5)and(p[1].Y=1)and(Cell.X=7)and(Cell.Y=1)and(king[3].flag=true);
4:Castling:=(p[1].X=8)and(p[1].Y=5)and(Cell.X=8)and(Cell.Y=7)and(king[4].flag=true);
  end;

F.Label2.Caption:=BoolToStr(king[iMove].flag,true);
if(delta(d.X,d.Y)=1)and((d.X=0)or(d.Y=0))
or(delta(d.X,d.Y)=2)and((d.X<>0)and(d.Y<>0))
or(Castling=true)
then step:=true else step:=false;
if(Cell.tmpFigure=99) then step:=false;
End;

Procedure Figures(Q:byte;var step:Boolean);
Begin
case Q of
11..14,21..24,31..34,41..44:Pawns(step);//пешки
15,25,35,45:Bishop(step);//слоны
17,27,37,47:Rooks(step);//ладьи
16,26,36,46:Knight(step);//кони
18,28,38,48:Kings(step);//короли
   end;
End;
//||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
//||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

Procedure GetRect(x,y:integer);
Begin
p[Cell.Flag].X:=x div sz+1;
p[Cell.Flag].Y:=y div sz+1;
Cell.Focus:=rect((p[Cell.Flag].X-1)*sz,(p[Cell.Flag].Y-1)*sz,
                  p[Cell.Flag].X*sz,p[Cell.Flag].Y*sz);
//if(Cell.Flag=1) then tmpRect:=Cell.Focus;
z[Cell.Flag]:=A[nStep,p[Cell.Flag].X,p[Cell.Flag].Y];
if(Cell.Flag=1) then Cell.CurrFigure:=z[Cell.Flag];
//if(Cell.Flag=1) then Cell.tmpFigure:=Cell.CurrFigure;
Cell.CurrGamer:=trunc(z[Cell.Flag]/10);
End;

Procedure FocusCell(tmpRect:TRect;ColorFocus:TColor);
Begin
F.img.Canvas.Pen.Color:=ColorFocus;
F.img.Canvas.Pen.Width:=1;
F.img.Canvas.Polyline([point(tmpRect.Left+2,tmpRect.Top+2),
                       point(tmpRect.Right-3,tmpRect.Top+2),
                       point(tmpRect.Right-3,tmpRect.Bottom-3),
                       point(tmpRect.Left+2,tmpRect.Bottom-3),
                       point(tmpRect.Left+2,tmpRect.Top+2)]);
End;

Procedure InsertFocus(x,y:integer);
Begin
F.img.Hint:='Нажмите правую кнопку мышки';
Desk(nStep);
if(Setup.Figure<>0) then
begin
FocusCell(rect((X-1)*sz,(Y-1)*sz,(X-1)*sz+sz,(Y-1)*sz+sz),clBlue);
F.img.Cursor:=crDrag;
end
else F.img.Cursor:=crNo;
End;

/////////////////////////////////////////
procedure TF.imgMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var t1,t2:byte;
BEGIN
//опред. номера клетки
Cell.X:=x div sz+1;
Cell.Y:=y div sz+1;
F.img.Cursor:=crNo;
F.Label1.Caption:='['+IntToStr(Cell.X)+';'+IntToStr(Cell.Y)+']';
F.Label2.Caption:=BoolToStr(Setup.flag,true);

if(Setup.flag=true) then InsertFocus(Cell.X,Cell.Y)
else
if(Setup.flag=false) then
begin
      Cell.tmpFigure:=A[nStep,Cell.X,Cell.Y];
      dxy(Cell.X,Cell.Y,d);Figures(Q,step);
case Cell.Flag of
0:begin
  Cell.CurrGamer:=trunc(A[nStep,Cell.X,Cell.Y]/10);
  Q:=A[nStep,Cell.X,Cell.Y];
F.StatusBar.Panels[0].Text:=hints[1];
  end;
1:begin
  if(Q in [18,28,38,48])and(Cell.tmpFigure=99) then step:=false;
  t1:=trunc(Cell.CurrFigure/10);
  t2:=trunc(Cell.tmpFigure/10);
  F.StatusBar.Panels[0].Text:=hints[2];
  end;
end;

case Cell.Flag of
0:if(Cell.CurrGamer=iMove)and(Cell.tmpFigure<>0) then
  begin F.img.Cursor:=crHandPoint;step:=true;end
  else
  if(Cell.CurrGamer<>iMove)and(Cell.tmpFigure<>0) then
  begin F.img.Cursor:=crNo;step:=false;end
  else
  if(Cell.tmpFigure=0) then begin F.img.Cursor:=crDefault;step:=false;end;
1:if(step=true)and((t1<>t2)or(Cell.tmpFigure=0)) then F.img.Cursor:=crDrag;
end;
end;

end;

Procedure Swap(Figure:byte);
var i,j:word;
    M:array [1..100,1..100] of byte;
Begin
for i:=1 to n do
for j:=1 to n do M[i,j]:=A[nStep,i,j];
M[p[2].X,p[2].Y]:=Figure;
//M[p[1].X,p[1].Y];
M[p[1].X,p[1].Y]:=0;
if(Cell.Flag=2) then inc(nStep);//ход произведён - срабатывает иттерация
for i:=1 to n do
for j:=1 to n do A[nStep,i,j]:=M[i,j];
//ShowMessage(IntToStr(t));
End;

Procedure CheckSetup(flag:Boolean);
var i,j,k:byte;
    y:byte;
Begin
if(flag=true) then
begin
k:=0;
for i:=1 to n do
for j:=1 to n do
begin
      if(A[nStep,i,j]<>0) then y:=idFig(A[nStep,i,j]);
      if(y=61) then inc(k);
end;
if(k=4) then F.bStartGame.Enabled:=true else F.bStartGame.Enabled:=false;
end
else F.bStartGame.Enabled:=true;
End;

Procedure PawnMessage(iMessage:byte);
var i:byte;
const S:array [1..2] of string=
(
'Правила игры исключают возможность нахождения пешки на данной клетке.',
'Количество пешек не должно превышать четырёх.'
);
Begin
      ShowMessage(S[iMessage]);
      Setup.Figure:=0;
      F.JvThumbView.Directory:=pthDir+'\Placement\';
      for i:=1 to 4 do pawn.plus[i]:=false;
End;

Procedure CheckPawn(Figure:byte);
var t:byte;
    i,j:byte;
    label esc;
Begin
case Setup.Figure of
11..14:if(Cell.Y in [1,8])and(Cell.X in [1..8]) then PawnMessage(1);
21..24:if(Cell.X in [1,8])and(Cell.Y in [1..8]) then PawnMessage(1);
31..34:if(Cell.Y in [1,8])and(Cell.X in [1..8]) then PawnMessage(1);
41..44:if(Cell.X in [1,8])and(Cell.Y in [1..8]) then PawnMessage(1);
    end;

if(Setup.Figure in [14,24,34,44]) then
begin
      PawnMessage(2);
      exit;
end;
if(pawn.plus[1]=true)
or(pawn.plus[2]=true)
or(pawn.plus[3]=true)
or(pawn.plus[4]=true) then inc(Setup.Figure);

case Setup.Figure of
11..14:if(Cell.Y=7) then Pawn.ID[Setup.Figure]:=1;//?
       end;
case Setup.Figure of
11:pawn.plus[1]:=true;
21:pawn.plus[2]:=true;
31:pawn.plus[3]:=true;
41:pawn.plus[4]:=true;
   end;
End;

Procedure ChecKing(Figure:real);
var i:byte;
Begin
for i:=1 to 4 do
if(Figure=iKings[i]) then king[i].flag:=false;
End;

Procedure CheckStepKing(Q:byte);
var i,j,i0,j0,k:Integer;
Begin
//битые поля королей
for i:=1 to n do
for j:=1 to n do
for k:=1 to 4 do
if(CompareValue(A[nStep,i,j],iKings[k])=0)
and(k<>iMove) then
   for i0:=-1 to 1 do
   for j0:=-1 to 1 do
   if(A[nStep,i+i0,j+j0]=0)
   and((i+i0)<>0)and((j+j0)<>0) then A[nStep,i+i0,j+j0]:=99 else continue;

for i:=1 to n do
for j:=1 to n do
begin
//битые поля пешек
if(A[nStep,i,j] in [11..14])and(iMove in [2..4]) then begin A[nStep,i-1,j-1]:=99;A[nStep,i+1,j-1]:=99;end;
if(A[nStep,i,j] in [21..24])and(iMove in [1,3,4]) then begin A[nStep,i+1,j-1]:=99;A[nStep,i+1,j+1]:=99;end;
if(A[nStep,i,j] in [31..34])and(iMove in [1,2,4]) then begin A[nStep,i-1,j+1]:=99;A[nStep,i+1,j+1]:=99;end;
if(A[nStep,i,j] in [41..44])and(iMove in [1..3]) then begin A[nStep,i-1,j-1]:=99;A[nStep,i-1,j+1]:=99;end;

//битые поля коней
if(A[nStep,i,j]=16)and(iMove in [2..4])
or(A[nStep,i,j]=26)and(iMove in [1,3,4])
or(A[nStep,i,j]=36)and(iMove in [1,2,4])
or(A[nStep,i,j]=46)and(iMove in [1..3]) then
                     begin
                     if((i-2)>=1)and(i+2<=8)and((j-2)>=1)and((j+2<=8)) then
                          begin
                          A[nStep,i+1,j-2]:=99;
                          A[nStep,i-1,j-2]:=99;
                          A[nStep,i+1,j+2]:=99;
                          A[nStep,i-1,j+2]:=99;
                          A[nStep,i-2,j+1]:=99;
                          A[nStep,i-2,j-1]:=99;
                          A[nStep,i+2,j+1]:=99;
                          A[nStep,i+2,j-1]:=99;
                          end;
                     end;
end;
End;

Procedure WriteMove;
var S:string;
Begin
S:=S+IntToStr(nStep-1)+'. ';
S:=S+ABC[p[1].X];
S:=S+IntToStr(9-p[1].Y);
S:=S+ABC[p[2].X];
S:=S+IntToStr(9-p[2].Y);
F.ListBox.Items.Add(S);
End;

Procedure PawnChoiceFigure;//замена пешки, дошедшей до края доски на слона, коня или ладью
var value:string;
const fig:array [1..3] of string=('слон','конь','ладья');
Begin
if(Cell.CurrFigure in [11..14])and(p[2].Y=1)
or(Cell.CurrFigure in [21..24])and(p[2].X=8)
or(Cell.CurrFigure in [31..34])and(p[2].Y=8)
or(Cell.CurrFigure in [41..44])and(p[2].X=1)
then
begin
      repeat
      value:=AnsiLowerCase(InputBox('Замена пешки на одну из фигур','Введите фигуру (слон, конь или ладья','слон конь ладья'))
      until(value=fig[1])or(value=fig[2])or(value=fig[3]);
      case iMove of
      1:
        begin
        if(value=fig[1]) then Cell.CurrFigure:=15;
        if(value=fig[2]) then Cell.CurrFigure:=16;
        if(value=fig[3]) then Cell.CurrFigure:=17;
        end;
      2:
        begin
        if(value=fig[1]) then Cell.CurrFigure:=25;
        if(value=fig[2]) then Cell.CurrFigure:=26;
        if(value=fig[3]) then Cell.CurrFigure:=27;
        end;
      3:
        begin
        if(value=fig[1]) then Cell.CurrFigure:=35;
        if(value=fig[2]) then Cell.CurrFigure:=36;
        if(value=fig[3]) then Cell.CurrFigure:=37;
        end;
      4:
        begin
        if(value=fig[1]) then Cell.CurrFigure:=45;
        if(value=fig[2]) then Cell.CurrFigure:=46;
        if(value=fig[3]) then Cell.CurrFigure:=47;
        end;
      end;
end;
End;

//$
procedure TF.imgMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  label esc;
  var max:real;
      i,j:byte;
begin
if(Setup.flag=true) then
begin
      if (Setup.Figure in [11..14,21..24,31..34,41..44]) then CheckPawn(Setup.Figure);
      InsertFigure(Setup.Figure);
if(F.pm.AutoPopup=true) then exit;
      end
else
if(step=true) then
              begin
              inc(Cell.Flag);GetRect(x,y);
              if(p[1].X=p[2].X)and(p[1].Y=p[2].Y) then begin dec(Cell.Flag);exit;end
              end
              else exit;

case Cell.Flag of
1:
begin
FocusCell(Cell.Focus,clBlue);
if(Cell.CurrFigure in [18,28,38,48]) then CheckStepKing(Q);view(nStep);esc:;
end;
2:begin
  Zeroation(nStep);
  PawnChoiceFigure;
  swap(Cell.CurrFigure);
//  Paste(p[1].X,p[1].Y,0);
  //!
  //отмена права рокировки - король сделал ход
  if(Q in [18,28,38,48]) then King[iMove].flag:=false;
  inc(iMove);if(iMove>4) then iMove:=1;//смена игроков по час. стрелке
  IconGamer(iMove);//ход следующего игрока - индикатор королей
  Cell.tmpFigure:=0;
  Cell.CurrFigure:=0;
  Cell.Flag:=0;
  //пешка теряет возможность ходить через клетку
  if(Q in [11..41,21..24,31..34,41..44]) then Pawn.ID[Q]:=0;
  Desk(nStep);
  WriteMove;
  inc(turn);if(turn=5) then turn:=1;
  SaveStep(nStep,pthDir+'\temp.qch');
  //условие включения-отключения кнопки "отменить"
  if(nStep>1) then F.bBackStep.Enabled:=true
  else
  if(nStep=1) then F.bBackStep.Enabled:=false;
  //условие включения-отключения кнопки "венуть"
  if(BackStep=true) then F.bForward.Enabled:=true
  else
  if(BackStep=false) then F.bForward.Enabled:=false;
  end;
end;
F.img.Cursor:=crNo;
End;

procedure TF.bStartGameClick(Sender: TObject);
begin
if(Setup.flag=true) then
begin
Cell.Flag:=0;
//Setup.flag:=false;
Setup.Figure:=0;
Cell.CurrFigure:=0;
//F.img.Cursor:=crNoDrop;
end
else
if(Setup.flag=false) then
begin
F.pm.AutoPopup:=false;
//inc(iMove);if(iMove=5) then
iMove:=1;
MoveCode(iMove);
IconGamer(iMove);Desk(nStep);
Cell.CurrGamer:=iMove;
end;
{F.lPosition.Visible:=false;
F.cbOrderSetup.Visible:=false;
F.sbSave.Visible:=true;}
end;

procedure TF.bDefaultPositionClick(Sender: TObject);
begin
Cell.Flag:=0;
Matrix(nStep,0);View(nStep);
end;

{procedure TF.JvThumbViewMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if(Setup.Flag=true) then F.JvThumbView.Cursor:=crHandPoint;
End;}


procedure TF.FormDestroy(Sender: TObject);
begin
ChangeDisplaySettings(devmode(nil^),0);
end;

procedure TF.UndoClick(Sender: TObject);
begin
if(nStep>1) then
begin
Dec(iMove);if(iMove=0) then iMove:=1;IconGamer(iMove);
Dec(nStep);
//Load(nStep);
Desk(nStep);
end;
end;


procedure TF.plDeskMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if(Setup.Figure<>0) then F.plDesk.Cursor:=crDrag else F.plDesk.Cursor:=crNoDrop;
end;

procedure TF.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
//g:=g+1;
if(key=13)and(Setup.flag=false)and(F.leInput.Text<>'') then
begin
inc(iMove);if(iMove=5) then iMove:=1;

MoveCode(iMove);
IconGamer(iMove);Desk(nStep);
end;
if(key=39) then begin TurnMatrix(nStep,0);Desk(nStep);View(nStep);end;
if(key=37) then begin TurnMatrix(nStep,1);Desk(nStep);View(nStep);end;
F.Label1.Caption:=IntToStr(turn);
end;

procedure TF.mmNewClick(Sender: TObject);
var i,j:word;
    t:real;
begin
turn:=1;
iMove:=1;
nStep:=1;
Cell.Flag:=0;
Cell.CurrFigure:=0;
Cell.CurrGamer:=iMove;
Setup.flag:=False;
Setup.Figure:=0;

for i:=1 to 4 do king[i].flag:=true;//короли ни разу не ходили
for i:=11 to 44 do//право пешки ходить на 2 клетки
if (i in [11..14,21..24,31..34,41..44]) then Pawn.ID[i]:=1;

    for i:=1 to n do
    for j:=1 to n do A[nStep,i,j]:=0;

Matrix(nStep,2);
Desk(nStep);
IconGamer(iMove);

F.JvThumbView.Directory:=pthDir+'\Placement\';
Coordinates;
F.FileListBox.Items.Clear;
F.FileListBox.Items.Add('Ходы:');
end;

//?
procedure TF.mmSetupPositionClick(Sender: TObject);
var key:byte;
begin
Setup.flag:=true;
nStep:=1;
EnablePosition(Setup.flag);
EnableFigures(Setup.flag);//?
LoadGame(pthDir+'\Positions\'+F.cbOrderSetup.Text);
//key:=F.cbOrderSetup.ItemIndex;Matrix(nStep,key);Desk(nStep);View(nStep);
F.pm.AutoPopup:=true;
//F.StatusBar.Panels[0].Text:='Нажмите правую кнопку мышки. В меню выберите фиругу из списка.';
//ShowMessage(BoolToStr(Setup.flag,true));
end;

///////!
procedure TF.mmSaveClick(Sender: TObject);
var fl:file of TStructGame;
    FName:string;
    i,j:word;
begin
if(F.SD.Execute=true) then
                      begin
FName:=F.SD.FileName;
if(FName='') then
             begin
             ShowMessage('Сохранить текущую игру не удалось.');
             exit;
             end;
             SaveGame(FName);
             End;
end;

procedure TF.mmOpenClick(Sender: TObject);
var FName:string;
begin
F.OD.InitialDir:=pthDir+'\Save';
if(F.OD.Execute=true) then
                      begin
FName:=F.OD.FileName;
if(FName='') then
             begin
             ShowMessage('Открыть текущую игру не удалось.');
             exit;
             end;
                       LoadGame(FName);
                       IconGamer(iMove);
                       SetupOrder(nStep);
                       End;
end;

procedure TF.mmLoadPositionClick(Sender: TObject);
var FName:string;
begin
F.OD.InitialDir:=pthDir+'\Positions';
if(F.OD.Execute=true) then
                      begin
FName:=F.OD.FileName;
if(FName='') then
             begin
             ShowMessage('Открыть текущую игру не удалось.');
             exit;
             end;
                       LoadGame(FName);
                       turn:=iMove;
                       End;
end;


procedure TF.cbOrderSetupChange(Sender: TObject);
begin
//LoadGame(F]);
end;

procedure TF.mmUndoClick(Sender: TObject);
begin
if(nStep>1) then
           begin
dec(nStep);
//LoadStep(nStep,pthDir+'\temp.qch');
Desk(nStep);View(nStep);
if(iMove=1) then iMove:=4 else dec(iMove);
Cell.CurrGamer:=iMove;IconGamer(iMove);
           end;
if(nStep=1) then F.bBackStep.Enabled:=false;
end;

procedure TF.mmForwardClick(Sender: TObject);
begin
if(BackStep=true) then
           begin
inc(nStep);Desk(nStep);View(nStep);
//if(iMove=4) then iMove:=1 else
inc(iMove);
Cell.CurrGamer:=iMove;IconGamer(iMove);
           end
else
if(nStep=1) then F.bForward.Enabled:=false;
end;

procedure TF.leInputChange(Sender: TObject);
var l:byte;
begin
l:=length(F.leInput.Text);
if(Setup.flag=false) then
                     if(l=4) then F.bStartGame.Enabled:=true
                     else F.bStartGame.Enabled:=false;
end;

procedure TF.pmClearClick(Sender: TObject);
begin
A[nStep,Cell.X,Cell.Y]:=0;Desk(nStep);View(nStep);
end;

procedure TF.imgContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
        if(Setup.Flag=false) then
        begin
        FocusCell(Cell.Focus,clPen(p[1].X,p[1].Y));
        Cell.Flag:=0;
        Cell.tmpFigure:=0;
        Cell.CurrFigure:=0;
        end;
end;

procedure TF.cbOrderSetupSelect(Sender: TObject);
var key:byte;
begin
ClearDesk;
LoadGame(pthDir+'\Positions\'+F.cbOrderSetup.Text);
end;

procedure MoveCode(iMove:byte);
var g,l,lb:byte;
    t:array [1..2] of TPoint;
    s:array [1..2] of string;
    code:string;
begin
Code:=F.leInput.Text;
if(Code<>'') then
begin
s[1]:=AnsiUpperCase(Code);
case S[1][1] of
'A':t[1].X:=1;
'B':t[1].X:=2;
'C':t[1].X:=3;
'D':t[1].X:=4;
'E':t[1].X:=5;
'F':t[1].X:=6;
'G':t[1].X:=7;
'H':t[1].X:=8;
   end;
end;
delete(s[1],1,1);
s[2]:=s[1];
l:=length(s[1]);
delete(s[1],2,l);
t[1].Y:=StrToInt(s[1]);
delete(s[2],1,1);
l:=length(S[2]);
case S[2][1] of
'A':t[2].X:=1;
'B':t[2].X:=2;
'C':t[2].X:=3;
'D':t[2].X:=4;
'E':t[2].X:=5;
'F':t[2].X:=6;
'G':t[2].X:=7;
'H':t[2].X:=8;
end;
t[2].Y:=StrToInt(S[2][2]);
p[1].X:=t[1].X;p[1].Y:=n-t[1].Y+1;
p[2].X:=t[2].X;p[2].Y:=n-t[2].Y+1;
Cell.CurrFigure:=A[nStep,p[1].X,p[1].Y];
Cell.Flag:=2;
swap(Cell.Flag);
Paste(p[2].X,p[2].Y,Cell.CurrFigure);
Paste(p[1].X,p[1].Y,0);
View(nStep);
//!
inc(iMove);if(iMove=5) then iMove:=1;//смена игроков по час. стрелке
IconGamer(iMove);
Cell.CurrGamer:=iMove;
Cell.Flag:=0;
F.ListBox.Items.Add(IntToStr(nStep-1)+'. '+Code);
F.leInput.Clear;
  //Cell.tmpFigure:=0;
//  Cell.CurrFigure:=0;
//  Cell.Flag:=0;
step:=false;
End;

procedure TF.mmTurnLeftClick(Sender: TObject);
begin
TurnMatrix(nStep,0);Desk(nStep);View(nStep);
end;

procedure TF.mmTurnRightClick(Sender: TObject);
begin
TurnMatrix(nStep,1);Desk(nStep);View(nStep);
end;

procedure TF.sbLeftClick(Sender: TObject);
begin
F.mmTurnRight.Click;
end;

procedure TF.sbRightClick(Sender: TObject);
begin
F.mmTurnLeft.Click;
end;

procedure TF.sbLeftMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
//F.sbLeft.Cursor:=crHandPoint;
end;

procedure TF.sbRightMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
//F.sbRight.Cursor:=crHandPoint;
end;

procedure TF.sbBackClick(Sender: TObject);
begin
F.mmUndo.Click;
end;

procedure TF.N4Click(Sender: TObject);
begin
ShowMessage('(C) Шиян Роман, 2011 г.');
end;

procedure TF.sbSaveClick(Sender: TObject);
begin
F.mmSavePosition.Click;
end;

Procedure InsertFigure(Q:byte);
Begin
A[nStep,Cell.X,Cell.Y]:=Q;Desk(nStep);View(nStep);
End;

procedure TF.pm1PawnClick(Sender: TObject);
begin
if(iPawn[1]<=14) then inc(iPawn[1]);
//if(Cell.Y=7) then Pawn.ID[iPawn[1]]:=1;?
if(iPawn[1]>14) then iPawn[1]:=0;
Setup.Figure:=iPawn[1];InsertFigure(Setup.Figure);
end;

procedure TF.pm2PawnClick(Sender: TObject);
begin
if(iPawn[2]<=24) then inc(iPawn[2]);
if(iPawn[2]>24) then iPawn[2]:=0;
Setup.Figure:=iPawn[2];InsertFigure(Setup.Figure);
end;

procedure TF.pm3PawnClick(Sender: TObject);
begin
if(iPawn[3]<=34) then inc(iPawn[3]);
if(iPawn[3]>34) then iPawn[1]:=0;
Setup.Figure:=iPawn[3];InsertFigure(Setup.Figure);
end;

procedure TF.pm4PawnClick(Sender: TObject);
begin
if(iPawn[4]<=44) then inc(iPawn[4]);
if(iPawn[4]>44) then iPawn[4]:=0;
Setup.Figure:=iPawn[4];InsertFigure(Setup.Figure);
end;


procedure TF.pm1RookClick(Sender: TObject);
begin
InsertFigure(17);
end;

procedure TF.pm2RookClick(Sender: TObject);
begin
InsertFigure(27);
end;

procedure TF.pm3RookClick(Sender: TObject);
begin
InsertFigure(37);
end;

procedure TF.pm4RookClick(Sender: TObject);
begin
InsertFigure(47);
end;

procedure TF.pm1HorseClick(Sender: TObject);
begin
InsertFigure(16);
end;

procedure TF.pm2HorseClick(Sender: TObject);
begin
InsertFigure(26);
end;

procedure TF.pm3HorseClick(Sender: TObject);
begin
InsertFigure(36);
end;

procedure TF.pm4HorseClick(Sender: TObject);
begin
InsertFigure(46);
end;

procedure TF.pm1BishopClick(Sender: TObject);
begin
InsertFigure(15);
end;

procedure TF.pm2BishopClick(Sender: TObject);
begin
InsertFigure(25);
end;

procedure TF.pm3BishopClick(Sender: TObject);
begin
InsertFigure(35);
end;

procedure TF.pm4BishopClick(Sender: TObject);
begin
InsertFigure(45);
end;

procedure TF.pm1KingClick(Sender: TObject);
begin
InsertFigure(18);
end;

procedure TF.pm2KingClick(Sender: TObject);
begin
InsertFigure(28);
end;

procedure TF.pm3KingClick(Sender: TObject);
begin
InsertFigure(38);
end;

procedure TF.pm4KingClick(Sender: TObject);
begin
InsertFigure(48);
end;

procedure TF.mmSavePositionClick(Sender: TObject);
var fl:file of TStructGame;
    FName:string;
    i,j:word;
begin
F.SD.InitialDir:=pthDir+'\positions\';
if(F.SD.Execute=true) then
                      begin
FName:=F.SD.FileName;
if(FName='') then
             begin
             ShowMessage('Сохранить текущую игру не удалось.');
             exit;
             end;
             SaveGame(FName);
             End;
end;

procedure TF.sbNewClick(Sender: TObject);
begin
F.OnShow(Sender);
end;

procedure TF.bStartPositionClick(Sender: TObject);
begin
Setup.flag:=false;
Setup.Figure:=0;
F.JvThumbView.Directory:=pthDir+'\Placement\';
EnablePosition(Setup.flag);
EnableFigures(Setup.flag);
iMove:=1;
nStep:=1;
Cell.Flag:=0;
SetupOrder(nStep);
SaveStep(nStep,pthDir+'\temp.qch');
F.JvSpecialImage1.Brightness:=100;
//F.cbSetupPosition.Checked:=false;
Desk(nStep);
end;

procedure TF.bBackStepClick(Sender: TObject);
begin
BackStep:=true;
F.mmUndo.Click;
if(nStep>1) then F.bBackStep.Enabled:=true
else
if(nStep=1) then
begin
F.bBackStep.Enabled:=false;
BackStep:=false;
end;
if(BackStep=true) then F.bForward.Enabled:=true
else
if(BackStep=false) then F.bForward.Enabled:=false;
end;


procedure TF.bForwardClick(Sender: TObject);
begin
F.mmForward.Click;
end;

procedure TF.cbSelfOrderClick(Sender: TObject);
begin
Setup.flag:=true;
//EnablePosition(F.cbSelfOrder.Checked);
end;

procedure TF.JvThumbViewStopScanning(Sender: TObject);
begin
if(Setup.flag=false) then EnableFigures(Setup.flag);
end;

procedure TF.ImageTextMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
//F.img.Canvas.Brush.Color:=bgCell(Cell.X-1,Cell.Y-1);
//F.img.Canvas.FillRect(rect((Cell.X-1)*sz,(Cell.Y-1)*sz,(X-1)*sz+sz,(Cell.Y-1)*sz+sz));
Desk(nStep);
end;

procedure TF.leInputMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
F.StatusBar.Panels[0].Text:='Например: D2D4 или d2d4';
end;

procedure TF.cbSetupPositionClick(Sender: TObject);
begin
if(F.cbSetupPosition.Checked=true) then F.mmSetupPosition.Click
else
if(F.cbSetupPosition.Checked=false) then F.mmNew.Click;
end;

END.


