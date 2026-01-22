unit ufrmPageLayout;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Ani, FMX.Objects, FMX.Controls.Presentation, FMX.MultiView,
  router4d.Interfaces, FMX.StdCtrls;

type
  TfrmPageLayout = class(TForm, iRouter4DComponent)
    lytCOntainer: TLayout;
    MultiView1: TMultiView;
    Layout1: TLayout;
    Rectangle1: TRectangle;
    lytmain: TLayout;
    lytSideBar: TLayout;
    lytBody: TLayout;
    retBackgroud: TRectangle;
    Button1: TButton;
  private
    { Private declarations }
  public
    function Render: TFmxObject;
    procedure unrender;
  end;


implementation

{$R *.fmx}

{ TfrmPageLayout }

procedure TfrmPageLayout.unrender;
begin
                //
end;

function TfrmPageLayout.Render: TFmxObject;
begin
  result := lytCOntainer;
end;

end.

