program ptxt;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  dmUtil in 'dmUtil.pas',
  Unit2 in 'Unit2.pas' {Form2},
  ufrmTrazi in 'ufrmTrazi.pas' {frmTrazi};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TfrmTrazi, frmTrazi);
  Application.Run;

end.
