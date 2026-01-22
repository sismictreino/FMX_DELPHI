unit UfrmIndex;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Layouts;

type
  TForm1 = class(TForm)
    lytContainer: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Router4d, ufrmPageLayout;


{$R *.fmx}

procedure TForm1.FormCreate(Sender: TObject);
begin
    Trouter4d.Render<TfrmPageLayout>.SetElement(lytContainer,lytContainer) ;
end;

end.
