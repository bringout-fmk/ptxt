{* This file is part of the bring.out FMK, a free and open source        *} 
{* accounting software suite,                                            *}
{* Copyright (c) 1996-2011 by bring.out doo Sarajevo.                    *} 
{* It is licensed to you under the Common Public Attribution License     *}
{* version 1.0, the full text of which (including FMK specific Exhibits) *}
{* is available in the file LICENSE_CPAL_bring.out_FMK.md located at the *}
{* root directory of this source code archive.                           *}
{* By using this software, you agree to be bound by its terms.           *}

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
