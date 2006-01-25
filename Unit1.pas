unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppPrnabl, ppClass, ppStrtch, ppRichTx, ppBands, ppProd, ppReport, ppComm,
  ppRelatv, ppCache, ppDB, ppTxPipe, StdCtrls, ppVar, ppCtrls, clipfn32, printers,
  jpeg, RxGIF, ExtCtrls, ppViewr, ppTypes, ppPrvDlg, Buttons, Mask, ppForms, dmUtil,
  ActnList, ppArchiv,IniFiles; // ppSearchPreview; //ppCustomSearchEngine, Ovo sam privremeno izbacio

type
  //TFontStyle = (fsBold, fsItalic, fsUnderline, fsStrikeOut);
  //{$NODEFINE TFontStyle}
  //TFontStyles = set of TFontStyle;


  TAtributi = class
    FontS: TFontStyles;
    TekStrana: String;
    Font: TFont;
    RowHeight: double;
  end;

  TArgumenti = class
    Datum: Boolean;
    Print: Boolean;
    Logo:  Boolean;
    BrStrane: Boolean;
    Opis1: String;
    Opis2: String;
    Opis3: String;
    AReader: Boolean;
  end;



  TForm1 = class(TdmCustomForm)
    ppOutfPipeline: TppTextPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    Linija: TppField;
    ppGenByLabel: TppLabel;
    ppDatumVar: TppSystemVariable;
    ppRichText: TppRichText;
    ppPageStyle1: TppPageStyle;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGenByImage: TppImage;
    ppDatumLabel: TppLabel;
    ppLine1: TppLine;
    ppSystemVariable2: TppSystemVariable;
    ppLabel4: TppLabel;
    pnlStatusBar: TPanel;
    pnlPreview: TPanel;
    ppViewer1: TppViewer;
    pnlKomande: TPanel;
    Edit1: TEdit;
    spbPreviewPrint: TSpeedButton;
    spbPreviewWhole: TSpeedButton;
    spbPreviewWidth: TSpeedButton;
    spbPreview100Percent: TSpeedButton;
    spbPreviewFirst: TSpeedButton;
    spbPreviewPrior: TSpeedButton;
    mskPreviewPage: TMaskEdit;
    spbPreviewNext: TSpeedButton;
    spbPreviewLast: TSpeedButton;
    mskPreviewPercentage: TMaskEdit;
    btnGo: TButton;
    ActionList1: TActionList;
    Printer: TAction;
    Escape: TAction;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    Button1: TButton;
    ppArchiveReader1: TppArchiveReader;
    OpenDialog1: TOpenDialog;
    BitBtn1: TBitBtn;


    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ppRichTextPrint(Sender: TObject);
    procedure ppVarPageCalc(Sender: TObject; var Value: Variant);
    procedure ppVarStrReset(Sender: TObject; var Value: Variant);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure ppGrupaDataFieldAfterGroupBreak(Sender: TObject);
    procedure ppVariable1Reset(Sender: TObject; var Value: Variant);
    procedure ppGroupHeaderBand1BeforeGenerate(Sender: TObject);
    procedure ppGroup2GetBreakValue(Sender: TObject;
      var aBreakValue: String);
    procedure ppReport1Cancel(Sender: TObject);
    procedure ppOutfPipelineLast(Sender: TObject);


    procedure ppViewer1PrintStateChange(Sender: TObject);
    procedure ppViewer1StatusChange(Sender: TObject);
    procedure ppViewer1PageChange(Sender: TObject);
    procedure spbPreviewCancelClick(Sender: TObject);
    procedure spbPreviewPrintClick(Sender: TObject);
    procedure spbPreviewWidthClick(Sender: TObject);
    procedure spbPreview100PercentClick(Sender: TObject);
    procedure spbPreviewWholeClick(Sender: TObject);
    procedure spbPreviewFirstClick(Sender: TObject);
    procedure spbPreviewPriorClick(Sender: TObject);
    procedure spbPreviewNextClick(Sender: TObject);
    procedure spbPreviewLastClick(Sender: TObject);
    procedure mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
    procedure mskPreviewPercentageKeyPress(Sender: TObject; var Key: Char);
    procedure btnGoClick(Sender: TObject);
    procedure EscapeExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ppArchiveReader1Cancel(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppReport1AssignPreviewFormSettings(Sender: TObject);






  private
    { Private declarations }
    Atributi: TAtributi;
    Args    : TArgumenti;
    nCounter :Integer;

    procedure SetRtfAttr(var rt: TppRichText);

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses ufrmTrazi;



{$R *.DFM}




procedure TForm1.FormCreate(Sender: TObject);
var i, j :integer;

    ini  :TIniFile;
    res:  string;
    nLeftMargin: integer;
    ExePath: string;

begin
   Atributi:=TAtributi.Create;
   Args:=TArgumenti.Create;

   Atributi.Font:=TFont.Create;
   Atributi.Font.Name:='SC Tahoma Mono';
   Atributi.Font.Size:=10;
   Atributi.TekStrana:='1';
   Atributi.Fonts:=[];
   Atributi.RowHeight:=3.969;   // detail band
   nCounter := 0;


   if Paramcount>0 then begin

     if paramcount=2 then begin
      ppOutfPipeline.Filename:=ParamStr(1);
      Edit1.Text:=ParamStr(1);
     end else begin
      Edit1.Text:=ParamStr(1);
     end;
       // podesi format strane
     ppOutfPipeline.Close;
     ppOutfPipeline.FileName:=Edit1.Text;
     ppoutfpipeline.Open;

     for i:=1 to 3 do begin   // pogledaj prve tri linije
       if Instr('#%LANDS#',ppOutfPipeline.GetFieldAsString('Linija'),'_') then begin
        ppReport1.Printersetup.Orientation:=poLandscape;

        ppLine1.Width:=  ppLine1.Width + 80;
        ppGenByLabel.Left := ppGenByLabel.Left + 80;
        ppGenByImage.Left:=  ppGenByImage.Left + 80;

        // sredina strane
        ppLabel4.Left := ppLabel4.Left + 50;
        ppSystemVariable2.Left:= ppSystemVariable2.Left + 50;
        Break;
       end;
       ppoutfpipeline.Next;
     end;

     Args.Logo:=True;
     Args.Datum:=False;
     Args.Brstrane:=True;
     Args.Print:=False;

     for j:=2 to paramcount do begin
       Args.opis1:='';
       Args.opis2:='';



       if paramstr(j)='/D' then Args.Datum:=True;

       if Upper(paramstr(j))='/1' then Args.Opis1:=substr(paramstr(j),3,0);

       if Upper(paramstr(j))='/2' then Args.Opis2:=substr(paramstr(j),3,0);

       if Upper(paramstr(j))='/P' then Args.Print:=True;

       if Upper(paramstr(j))='/A' then
        Args.AReader:=True;

       if paramstr(j)='/l' then Args.Logo:=False;

      if paramstr(j)='/s' then Args.Brstrane:=False;

      if paramstr(j)='/noline' then ppLine1.Visible:=False;


     end;


     //if not (Args.Brstrane or Args.Logo or Args.Datum )  then
     //  ppLine1.Visible:=False;
       // nista od foutera ne stampaj

     ppLabel4.Visible:=Args.BrStrane;
     ppSystemVariable2.Visible:=Args.BrStrane;

     ppDatumVar.Visible:=Args.Datum;
     ppDatumLabel.Visible:=Args.Datum;


     ppGenByLabel.Visible:=Args.Logo;
     ppGenByImage.Visible:=Args.Logo;



      if Args.AReader then  begin
      OpenDialog1.FileName := ParamStr(1);

      Button1.Click;
      end else if Args.Print then begin

      ExePath := ExtractFilePath(Application.ExeName);
      ini:= TIniFile.Create(ExePath+'FMK.INI');
      try

      // procitani string (ime printera)
      // smjesti u varijablu res

        res := ini.ReadString('PTXT', 'DefaultWinPrinter', '');
        nLeftMargin := ini.ReadInteger('PTXT', 'LeftMargin', 5);

      finally
        ini.Free;
      end;

      if res<>'' then begin
          ppReport1.ShowPrintDialog:=false;
          ppReport1.PrinterSetup.PrinterName:=res;
      end;

      // ako je lijeva margina podesena na vise od 5 pomjeri je
      // ali smanji i samu sirinu ppRichText-a
      if nLeftMargin > 5 then begin
        ppRichText.Left := nLeftMargin;
        ppRichText.Width := ppRichText.Width - nLeftMargin;
      end;


      ppViewer1.Print;


      Btngo.click;
     end else begin
      Btngo.Click;
     end;





   end;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
   Atributi.Free;
end;

procedure TForm1.ppRichTextPrint(Sender: TObject);
var
  sPom:String;

begin

  ppRichtext.Stretch:=False;  // na pocetku svakog reda setuj ovo na false

  spom:=space(300);
  OemToAnsi(Pchar(ppOutfPipeline.GetFieldAsString('Linija')),PChar(sPom));
  ppRichText.RichText:=sPom;
  //spom:=ppOutfPipeline.GetFieldAsString('Linija');
  //ppRichText.RichText:=sPom;

  SetRTFAttr(ppRichText); // setuj rtf atribute

  // ciscenje rtf-a !!!!
  ppRichText.RichText := StrTran(ppRichText.RichText,'\fcharset0','',0,0);
  ppRichText.RichText := StrTran(ppRichText.RichText,'\fcharset238','',0,0);
  ppRichText.RichText := StrTran(ppRichText.RichText,'\viewkind4','',0,0);
  ppRichText.RichText := StrTran(ppRichText.RichText,'\fnil','',0,0);
  //ppRichText.RichText := StrTran(ppRichText.RichText,'#%NLIN_#','\par ',0,0);


  //ppRichText.SaveToFile('c:\rtf' + IntToStr(nCounter));
  //Inc(nCounter);


end;

procedure TForm1.ppVarPageCalc(Sender: TObject; var Value: Variant);
var
 AttrPos: integer;
 spom: string;
 i: integer;
begin
  //if Value='' then begin
  //     Value:='0';
  //end; // i:=Value+1;
  //AttrPos:=ppRichText.FindText('#%NSTR#',0,220,[]);
  //if AttrPos>=0 then begin
  //  Label1.Caption:=IntToSTr(VarType(Value)) ;
    //if ((VarType(Value)<>varString) or Value='' ) then Value:='0';

  //  i:=Value+1;
  //  Value:= IntToStr(i);
  //end;
  Value:=Linija.AsString;
end;


procedure TForm1.ppVarStrReset(Sender: TObject; var Value: Variant);
begin
  //Value:='0';
end;

procedure TForm1.ppVariable1Calc(Sender: TObject; var Value: Variant);
begin
    Value:=xLeft(Linija.AsString,1);
end;



procedure TForm1.ppGrupaDataFieldAfterGroupBreak(Sender: TObject);
begin
  //ShowMessage('Evo kraja grupe - after');
end;



procedure TForm1.ppVariable1Reset(Sender: TObject; var Value: Variant);
begin
  //ShowMessage('Izvrsen reset varijable:'+ Value);
end;

procedure TForm1.ppGroupHeaderBand1BeforeGenerate(Sender: TObject);
begin

 // ppLabelaGrupeH.Caption:=ppVariable1.AsString;

end;





procedure TForm1.ppGroup2GetBreakValue(Sender: TObject;
  var aBreakValue: String);
var
  rt: TppRichText;

begin


  if xLeft(aBreakValue,8)='#%NSTR_#' then begin
     //ppOutfPipeline.Next;
     //ppOutfPipeline.
     //ppOutfPipeline.Next;
     //if ppoutfPipeline.Last;
     ppOutfPipeline.Next;
     Atributi.TekStrana:= IntToStr(strtoint(Atributi.Tekstrana)+1);
     //ppOutfPipeline.Prior;
  end;

  aBreakValue:=Atributi.TekStrana;
end;

procedure TForm1.SetRtfAttr(var rt: TppRichText);
var
 AttrPos: integer;

begin

rt.SelectAll;
rt.SelAttributes.Size:=Atributi.Font.Size;
rt.SelAttributes.Style:=Atributi.FontS;
rt.SelAttributes.Name:=Atributi.Font.Name;


AttrPos:=100;
while AttrPos>=0 do begin

   AttrPos := rt.FindText('#%',0,300,[]);

   // ernad#KOND17#husremoviŠ
   if AttrPos>=0 then begin

     rt.SelStart:=AttrPos;
     rt.SelLength:=8;
     if           rt.SelText = '#%INI__#' then begin

           Atributi.Font.Size:=10;
           Atributi.Font.Name:='SC Tahoma Mono';
           rt.ClearSelection;
           rt.SelStart:=AttrPos; rt.SelLength:=300;

           rt.SelAttributes.Style:=Atributi.Fonts;
           rt.SelAttributes.Size:=Atributi.Font.Size;
           rt.SelAttributes.Name:=Atributi.Font.Name;

     end else if   Instr('#%FS',rt.SelText,'x') then begin
           // sablon: '#%FS012#'  - fontsize = 12 pointa
           Atributi.Font.Size:=StrToInt(substr(rt.SelText,5,3));
           Atributi.Font.Name:='SC Tahoma Mono';
           Atributi.RowHeight:=ppRichText.Height;
           rt.ClearSelection;
           rt.SelStart:=AttrPos; rt.SelLength:=300;

           ppRichtext.Stretch:=True;  // da stane uvecani font...

           //Atributi.RowHeight:=Atributi.Font.Size / 10 * ppRichText.Height;
           //ppRichText.Height:=Atributi.RowHeight;
           //ppDetailBand1.Height:=Atributi.RowHeight;

           rt.SelAttributes.Style:=Atributi.Fonts;
           rt.SelAttributes.Size:=Atributi.Font.Size;
           rt.SelAttributes.Name:=Atributi.Font.Name;

     end else if  rt.SelText = '#%BON__#' then begin

           rt.ClearSelection;
           rt.SelStart:=AttrPos; rt.SelLength:=300;
           Atributi.FontS:=Atributi.Fonts + [fsBold];
           rt.SelAttributes.Size:=Atributi.Font.Size;
           rt.SelAttributes.Style:=Atributi.Fonts;
           rt.SelAttributes.Name:=Atributi.Font.Name;

     end else if  rt.SelText = '#%LANDS#' then begin

           rt.ClearSelection;
           ppReport1.PrinterSetup.Orientation:=poLandscape;
           ppRichText.Width:=260;

     end else if  rt.SelText = '#%PORTR#' then begin

           rt.ClearSelection;
           ppRichText.Width:=174.89;
           ppReport1.PrinterSetup.Orientation:=poPortrait;

     end else if  rt.SelText = '#%BOFF_#' then begin

           rt.ClearSelection;
           rt.SelStart:=AttrPos; rt.SelLength:=300;

           Atributi.FontS:=Atributi.Fonts - [fsBold];

           rt.SelAttributes.Size:=Atributi.Font.Size;
           rt.SelAttributes.Style:=Atributi.Fonts;
           rt.SelAttributes.Name:=Atributi.Font.Name;


     end else if  rt.SelText = '#%UON__#' then begin
           rt.ClearSelection;
           rt.SelStart:=AttrPos; rt.SelLength:=300;
           Atributi.FontS:=Atributi.Fonts + [fsUnderline];

           rt.SelAttributes.Size:=Atributi.Font.Size;
           rt.SelAttributes.Style:=Atributi.Fonts;
           rt.SelAttributes.Name:=Atributi.Font.Name;

     end else if  rt.SelText = '#%UOFF_#' then begin
           rt.ClearSelection;
           rt.SelStart:=AttrPos; rt.SelLength:=300;
           Atributi.FontS:=Atributi.Fonts - [fsUnderline];

           rt.SelAttributes.Size:=Atributi.Font.Size;
           rt.SelAttributes.Style:=Atributi.Fonts;
           rt.SelAttributes.Name:=Atributi.Font.Name;

     end else if  rt.SelText = '#%ION__#' then begin
           rt.ClearSelection;
           rt.SelStart:=AttrPos; rt.SelLength:=300;
           Atributi.FontS:=Atributi.Fonts + [fsItalic];

           rt.SelAttributes.Size:=Atributi.Font.Size;
           rt.SelAttributes.Style:=Atributi.Fonts;
           rt.SelAttributes.Name:=Atributi.Font.Name;

     end else if  rt.SelText = '#%IOFF_#' then begin
           rt.ClearSelection;
           rt.SelStart:=AttrPos; rt.SelLength:=300;
           Atributi.FontS:=Atributi.Fonts - [fsItalic];

           rt.SelAttributes.Size:=Atributi.Font.Size;
           rt.SelAttributes.Style:=Atributi.Fonts;
           rt.SelAttributes.Name:=Atributi.Font.Name;

     end else if  rt.SelText = '#%NSTR_#' then begin
           rt.ClearSelection;

     //end else if  rt.SelText = '#%NLIN_#' then begin
     //      rt.ClearSelection;


     end else if  rt.SelText = '#%KON17#' then begin
           //Atributi.Font.Size:=7;
           //Atributi.Font.Name:='SC Courier New 12';
           Atributi.Font.Size:=8;
           //Atributi.Font.Name:='SC Courier New 15';
           Atributi.Font.Name:='SC Tahoma Mono 2';

           rt.ClearSelection;
           rt.SelStart:=AttrPos; rt.SelLength:=300;

           rt.SelAttributes.Size:=Atributi.Font.Size;
           rt.SelAttributes.Style:=Atributi.Fonts;
           rt.SelAttributes.Name:=Atributi.Font.Name;

     end else if  rt.SelText = '#%KON20#' then begin
           Atributi.Font.Size:=6;
           Atributi.Font.Name:='SC Tahoma Mono 2';
           rt.ClearSelection;
           rt.SelStart:=AttrPos; rt.SelLength:=300;

           rt.SelAttributes.Style:=Atributi.Fonts;
           rt.SelAttributes.Size:=Atributi.Font.Size;
           rt.SelAttributes.Name:=Atributi.Font.Name;

     end else if  rt.SelText = '#%12CPI#' then begin
           Atributi.Font.Size:=10;
           Atributi.Font.Name:='SC Tahoma Mono 2';
           rt.ClearSelection;
           rt.SelStart:=AttrPos; rt.SelLength:=300;

           rt.SelAttributes.Style:=Atributi.Fonts;
           rt.SelAttributes.Size:=Atributi.Font.Size;
           rt.SelAttributes.Name:=Atributi.Font.Name;

     end else if  rt.SelText = '#%10CPI#' then begin
           Atributi.Font.Size:=10;
           Atributi.Font.Name:='SC Tahoma Mono';
           rt.ClearSelection;
           rt.SelStart:=AttrPos; rt.SelLength:=300;

           rt.SelAttributes.Style:=Atributi.Fonts;
           rt.SelAttributes.Size:=Atributi.Font.Size;
           rt.SelAttributes.Name:=Atributi.Font.Name;

     end else if  rt.SelText = '#%AR100#' then begin
           Atributi.Font.Size:=100;
           Atributi.Font.Name:='SC Art';
           rt.ClearSelection;
           rt.SelStart:=AttrPos; rt.SelLength:=300;

           rt.SelAttributes.Style:=Atributi.Fonts;
           rt.SelAttributes.Size:=Atributi.Font.Size;
           rt.SelAttributes.Name:=Atributi.Font.Name;

     end else begin

     end;


   end;
end; // while

end;

procedure TForm1.ppReport1Cancel(Sender: TObject);
begin
   Application.Terminate;
end;

procedure TForm1.ppOutfPipelineLast(Sender: TObject);
begin
  //ShowMessage('Na zadnjem sam slogu');
  Atributi.TekStrana:=IntToStr(strtoint(Atributi.Tekstrana)-1)
end;

{------------------------------------------------------------------------------}
{ TfrmDMMain.ppViewer1PrintStateChange }

procedure TForm1.ppViewer1PrintStateChange(Sender: TObject);
var
  lPosition: TPoint;
begin

  if ppViewer1.Busy then
    begin
      mskPreviewPercentage.Enabled := False;
      mskPreviewPage.Enabled := False;

      //pnlPreviewBar.Cursor := crHourGlass;

      ppViewer1.Cursor := crHourGlass;

      pnlStatusBar.Cursor := crHourGlass;

      //spbPreviewCancel.Cursor := crArrow;

      //spbPreviewCancel.Enabled := True;
    end
  else
    begin
      mskPreviewPercentage.Enabled := True;
      mskPreviewPage.Enabled := True;

      //pnlPreviewBar.Cursor := crDefault;

      ppViewer1.Cursor := crDefault;

      pnlStatusBar.Cursor := crDefault;

      //spbPreviewCancel.Cursor := crDefault;

      //spbPreviewCancel.Enabled := False;
    end;

  {this code will force the cursor to update}
  GetCursorPos(lPosition);
  SetCursorPos(lPosition.X, lPosition.Y);

end; {procedure, ppViewer1PrintStateChange}

{------------------------------------------------------------------------------}
{ TfrmDMMain.ppViewer1StatusChange }

procedure TForm1.ppViewer1StatusChange(Sender: TObject);
begin

  pnlStatusBar.Caption := ppViewer1.Status;

end; {procedure, ppViewer1StatusChange}

{------------------------------------------------------------------------------}
{ TfrmDMMain.ppViewerPageChange }

procedure TForm1.ppViewer1PageChange(Sender: TObject);
begin
  mskPreviewPage.Text := IntToStr(ppViewer1.AbsolutePageNo);
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end; {procedure, ppViewerPageChange}

{------------------------------------------------------------------------------}
{ TfrmDMMain.spbPreviewPrintClick }

procedure TForm1.spbPreviewPrintClick(Sender: TObject);
begin
 if CheckBox1.Checked then     begin
  ppReport1.DeviceType:='ArchiveFile';
  ppReport1.ArchiveFileName:='c:\sigma\outf.raf';

  ppReport1.AllowPrintToArchive := True;
 end;

  ppViewer1.Print;



  
end; {procedure, spbPreviewPrintClick}

{------------------------------------------------------------------------------}
{ TfrmDMMain.spbPreviewCancelClick }

procedure TForm1.spbPreviewCancelClick(Sender: TObject);
begin
  if ppViewer1.Report.Printing then
    ppViewer1.Cancel;
end; {procedure, spbPreviewCancelClick}

{------------------------------------------------------------------------------}
{ TfrmDMMain.spbPreviewFirstClick}

procedure TForm1.spbPreviewFirstClick(Sender: TObject);
begin
  ppViewer1.FirstPage;
end; {procedure, spbCloseClick}

{------------------------------------------------------------------------------}
{ TfrmDMMain.spbPreviewPriorClick}

procedure TForm1.spbPreviewPriorClick(Sender: TObject);
begin
  ppViewer1.PriorPage;
end; {procedure, spbPreviewFirstClick}

{------------------------------------------------------------------------------}
{ TfrmDMMain.spbPreviewNextClick}

procedure TForm1.spbPreviewNextClick(Sender: TObject);
begin
  ppViewer1.NextPage;
end; {procedure, spbPreviewNextClick}

{------------------------------------------------------------------------------}
{ TfrmDMMain.spbPreviewLastClick}

procedure TForm1.spbPreviewLastClick(Sender: TObject);
begin
  ppViewer1.LastPage;
end; {procedure, spbPreviewLastClick}

{------------------------------------------------------------------------------}
{ TfrmDMMain.mskPreviewPageKeyPress}

procedure TForm1.mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
var
  liPage: Longint;
begin

  if (Key = #13) then
    begin
      liPage := StrToInt(mskPreviewPage.Text);

      ppViewer1.GotoPage(liPage);
    end; {if, carriage return pressed}

end; {procedure, mskPreviewPageKeyPress}

{------------------------------------------------------------------------------}
{ TfrmDMMain.spbPreviewZoomClick }

procedure TForm1.spbPreviewWholeClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsWholePage;

  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);

  //pnlPreviewBar.SetFocus;
end; {procedure, spbPreviewZoomClick}

{------------------------------------------------------------------------------}
{ TfrmDMMain.spbPreviewWidthClick}

procedure TForm1.spbPreviewWidthClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsPageWidth;

  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);

  //pnlPreviewBar.SetFocus;
end; {procedure, spbPreviewWidthClick}

{------------------------------------------------------------------------------}
{ TfrmDMMain.spbPreview100PercentClick}

procedure TForm1.spbPreview100PercentClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zs100Percent;

  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);

  //pnlPreviewBar.SetFocus;
end; {procedure, spbPreview100PercentClick}

{------------------------------------------------------------------------------}
{ TfrmDMMain.mskPreviewPercentageKeyPress}

procedure TForm1.mskPreviewPercentageKeyPress(Sender: TObject; var Key: Char);
var
  liPercentage: Integer;
begin
  if (Key = #13) then
    begin
      liPercentage := StrToIntDef(mskPreviewPercentage.Text, 100);

      ppViewer1.ZoomPercentage := liPercentage;

      spbPreviewWhole.Down := False;
      spbPreviewWidth.Down := False;
      spbPreview100Percent.Down := False;

      mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
    end; {if, carriage return pressed}

end; {procedure, mskPreviewPercentageKeyPress}



procedure TForm1.btnGoClick(Sender: TObject);
var
  lForm: TForm;
  liRow: Integer;
begin

    {reset viewer to page 1}
    ppViewer1.Reset;
    ppReport1.PrintToDevices;

end;

procedure TForm1.EscapeExecute(Sender: TObject);
begin
  Application.Terminate;
end;



procedure TForm1.Button1Click(Sender: TObject);
begin
  if not  FileExists(OpenDialog1.FileName) then
     OpenDialog1.Execute;

  ppArchiveReader1.ArchiveFileName := OpenDialog1.FileName;
  ppReport1.DeviceType := 'Screen';

  ppArchiveReader1.Print;

end;

procedure TForm1.ppArchiveReader1Cancel(Sender: TObject);
begin
  Application.Terminate;
end;


procedure TForm1.BitBtn1Click(Sender: TObject);
//var
  //srchEngine: TppCustomSearchEngine;

begin
  ppReport1.Print;
  //frmTrazi.ShowModal;

  //ppReport1.TextSearchSettings.Enabled:=True;
  //ppReport1.TextSearchSettings.Visible:=True;

  //srchEngine:=TppCustomSearchEngine.Create(self);
  //srchEngine.Viewer :=  ppViewer1;
  //srchEngine.Search(frmTrazi.edTrazi.Text);
  //srchEngine.HighestPageNoSearched:=99999;
  //srchEngine.NavigateForwardToNextOccurrence(frmTrazi.edTrazi.Text);
  //ShowMessage(IntToStr(srchEngine.FirstPageFound));

(*
  if Empty([frmTrazi.edTrazi.Text]) then
    ppReport1.TextSearchSettings.Enabled:=False
  else begin
    ppReport1.TextSearchSettings.Enabled:=True;
    ppReport1.TextSearchSettings.DefaultString := frmTrazi.edTrazi.Text;
    //ppReport1.TextSearchSettings.WalkieTalkie:=srchEngine;
  end;
*)

  (*

  frmTrazi.Close;

  srchEngine.Search(ppReport1.TextSearchSettings.DefaultString);
  srchEngine.NavigateForwardToNextOccurrence(ppReport1.TextSearchSettings.DefaultString);
  ShowMessage('Nasao: '+IntToStr(srchEngine.FirstPageFound));

  ppReport1.TextSearchSettings.Visible:=True;
  ppReport1.TextSearchSettings.ShowAll:=True;

  *)

end;

procedure TForm1.ppReport1AssignPreviewFormSettings(Sender: TObject);
begin
  ppReport1.TextSearchSettings.Visible:=True;
end;

end.
