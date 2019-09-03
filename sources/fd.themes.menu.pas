unit fd.themes.menu;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Rtti, System.Classes,
  System.Variants, FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs,
  FMX.StdCtrls, fd.Base, FMX.Objects, fd.consts, System.TypInfo;

type
  TformMnuThemes = class(TFormBase)
    imgIdentiteNumerique: TImage;
    imgCyberHarcelement: TImage;
    img4Themes: TImage;
    imgFluxInformations: TImage;
    imgLiberteExpression: TImage;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    img1: TImage;
    lblTypeScol: TLabel;
    procedure imgIdentiteNumeriqueMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure imgIdentiteNumeriqueMouseEnter(Sender: TObject);
    procedure imgIdentiteNumeriqueMouseLeave(Sender: TObject);
    procedure imgIdentiteNumeriqueMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure img1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    class procedure Execute;
  end;



implementation

{$R *.fmx}

class procedure TformMnuThemes.Execute;
var formMnuThemes: TformMnuThemes;
begin
  Application.CreateForm(TformMnuThemes, formMnuThemes);
  try
    formMnuThemes.lblTypeScol.Text:= GetEnumName(TypeInfo(TStylScol), Ord(global_StyleScol));
    formMnuThemes.ShowModal;
  finally
    FreeAndNil(formMnuThemes);
  end;
end;

procedure TformMnuThemes.img1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TformMnuThemes.imgIdentiteNumeriqueMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  inherited;
  TImage(Sender).RotationAngle:= 0;
  TImage(Sender).BitmapMargins.Bottom:= 20;
  TImage(Sender).BitmapMargins.Top   := 20;
  TImage(Sender).BitmapMargins.Left  := 20;
  TImage(Sender).BitmapMargins.Right := 20;
  TImage(Sender).Repaint;
end;

procedure TformMnuThemes.imgIdentiteNumeriqueMouseEnter(Sender: TObject);
begin
  inherited;
  TImage(Sender).RotationAngle:= 15;
end;

procedure TformMnuThemes.imgIdentiteNumeriqueMouseLeave(Sender: TObject);
begin
  inherited;
  TImage(Sender).RotationAngle:= 0;
end;

procedure TformMnuThemes.imgIdentiteNumeriqueMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  inherited;
  TImage(Sender).BitmapMargins.Bottom:= 0;
  TImage(Sender).BitmapMargins.Top   := 0;
  TImage(Sender).BitmapMargins.Left  := 0;
  TImage(Sender).BitmapMargins.Right := 0;
  TImage(Sender).Repaint;
end;

end.
