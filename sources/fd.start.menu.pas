unit fd.start.menu;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Rtti, System.Classes,
  System.Variants, FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs,
  FMX.StdCtrls, fd.Base, FMX.Objects;

type
  TFormStartMnu = class(TFormBase)
    btnPrimaire: TImage;
    BtnSecondaire: TImage;
    lblPrimaire: TLabel;
    lblSecondaire: TLabel;
    img1: TImage;
    procedure btnPrimaireMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnPrimaireMouseEnter(Sender: TObject);
    procedure btnPrimaireMouseLeave(Sender: TObject);
    procedure btnPrimaireMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure img1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FormStartMnu: TFormStartMnu;

implementation

{$R *.fmx}

procedure TFormStartMnu.btnPrimaireMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  inherited;
  TImage(Sender).RotationAngle:= 0;
  TImage(Sender).BitmapMargins.Bottom:= 20;
  TImage(Sender).BitmapMargins.Top   := 20;
  TImage(Sender).BitmapMargins.Left  := 20;
  TImage(Sender).BitmapMargins.Right := 20;
  TImage(Sender).Repaint;
end;

procedure TFormStartMnu.btnPrimaireMouseEnter(Sender: TObject);
begin
  inherited;
  TImage(Sender).RotationAngle:= 15;
end;

procedure TFormStartMnu.btnPrimaireMouseLeave(Sender: TObject);
begin
  inherited;
  TImage(Sender).RotationAngle:= 0;
end;

procedure TFormStartMnu.btnPrimaireMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  inherited;
  TImage(Sender).BitmapMargins.Bottom:= 0;
  TImage(Sender).BitmapMargins.Top   := 0;
  TImage(Sender).BitmapMargins.Left  := 0;
  TImage(Sender).BitmapMargins.Right := 0;
  TImage(Sender).Repaint;
end;

procedure TFormStartMnu.img1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
