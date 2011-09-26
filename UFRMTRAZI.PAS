{* This file is part of the bring.out FMK, a free and open source        *} 
{* accounting software suite,                                            *}
{* Copyright (c) 1996-2011 by bring.out doo Sarajevo.                    *} 
{* It is licensed to you under the Common Public Attribution License     *}
{* version 1.0, the full text of which (including FMK specific Exhibits) *}
{* is available in the file LICENSE_CPAL_bring.out_FMK.md located at the *}
{* root directory of this source code archive.                           *}
{* By using this software, you agree to be bound by its terms.           *}

 
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
