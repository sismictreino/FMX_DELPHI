unit Services.utils;

interface

uses
  FMX.Objects, System.Types, system.Classes;

type
  Tutils = class
  private
  public
    class procedure ResourceImage(Resource: string; image: Timage);
  end;

implementation

{ Tutils }

class procedure Tutils.ResourceImage(Resource: string; image: Timage);
begin
  var Lresource := TresourceStream.Create(HInstance, Resource, RT_RCDATA);

  try
    image.Bitmap.LoadFromStream(Lresource)  ;
  finally
    Lresource.Free;
  end;
end;

end.

