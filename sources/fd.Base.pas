unit fd.Base;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Rtti, System.Classes,
  System.Variants, FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs,
  FMX.StdCtrls;

type
  TFormBase = class(TForm)
    stylbk1: TStyleBook;
    pnlTop: TPanel;
    pnlBottom: TPanel;
    pnlClient: TPanel;
    lbl1: TLabel;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FormBase: TFormBase;

implementation

{$R *.fmx}

end.
