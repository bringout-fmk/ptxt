unit ufrmTrazi;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls;

type
  TfrmTrazi = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    edTrazi: TEdit;
    Label1: TLabel;
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTrazi: TfrmTrazi;

implementation

{$R *.dfm}

procedure TfrmTrazi.OKBtnClick(Sender: TObject);
begin
  self.Hide;
  
end;

procedure TfrmTrazi.CancelBtnClick(Sender: TObject);
begin
  self.Hide;
end;

end.
