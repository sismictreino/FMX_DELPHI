unit ufrmComponenteMenu;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Controls.Presentation, FMX.Objects;

type
  TComponentButtonMenu = class(TFrame)
    lytContainer: TLayout;
    Layout1: TLayout;
    Layout2: TLayout;
    LytImageMenu: TLayout;
    Layout4: TLayout;
    ImagemMenuIcone: TImage;
    ImagemMenuSeta: TImage;
    lytDeacricao: TLayout;
    lblDescricao: TLabel;
    lytSubMenu: TLayout;
    lytButton: TLayout;
    procedure lytButtonClick(Sender: TObject);
  private
    //variaveis
    Fheight: single;

    procedure RedimensionaSubmenu;

  public
    constructor Create(AOwner: TComponent) override;
    class function New: TComponentButtonMenu;
    function component: TFmxObject;
    function Submenu(value: TFmxObject): TComponentButtonMenu;
  end;

implementation

{$R *.fmx}

{ TComponentButtonMenu }

constructor TComponentButtonMenu.Create(AOwner: TComponent);
begin
  inherited;
  lytContainer.Height := 60;

end;

procedure TComponentButtonMenu.lytButtonClick(Sender: TObject);
begin
   lytContainer.Height:=Fheight  ;
end;

class function TComponentButtonMenu.New: TComponentButtonMenu;
begin
  result := self.Create(nil);
end;

procedure TComponentButtonMenu.RedimensionaSubmenu;
begin
  for var I := 0 to Pred(lytSubMenu.ComponentCount) do
    if lytSubMenu.Components[i] is TLayout then
      Fheight := Fheight + TLayout(lytSubMenu.Components[i]).Height;
end;

function TComponentButtonMenu.Submenu(value: TFmxObject): TComponentButtonMenu;
begin
  result := self;
  lytSubMenu.AddObject(value);
end;

function TComponentButtonMenu.component: TFmxObject;
begin
  Result := lytContainer;
end;

end.

