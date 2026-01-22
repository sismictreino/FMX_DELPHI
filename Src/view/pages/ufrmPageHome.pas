unit ufrmPageHome;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  router4d.Interfaces;

type
  TfrmPageHome = class(TForm, iRouter4DComponent)
    lytContainer: TLayout;
  private
    { Private declarations }
  public
    function render: TFmxObject;
    procedure unrender;

  end;

implementation

{$R *.fmx}

{ TfrmPageHome }

procedure TfrmPageHome.unrender;
begin

end;

function TfrmPageHome.render: TFmxObject;
begin
  Result := lytContainer;
end;

end.

