%!PS-Adobe-3.0
%%Creator: (GraphicsMagick)
%%Title: (os)
%%CreationDate: (Mon Jul 21 19:53:56 2025)
%%BoundingBox: 1315 496 1321 541
%%DocumentData: Clean7Bit
%%LanguageLevel: 1
%%Orientation: Portrait
%%PageOrder: Ascend
%%Pages: 1
%%EndComments

%%BeginDefaults
%%EndDefaults

%%BeginProlog
%
% Display a color image.  The image is displayed in color on
% Postscript viewers or printers that support color, otherwise
% it is displayed as grayscale.
%
/DirectClassPacket
{
  %
  % Get a DirectClass packet.
  %
  % Parameters:
  %   red.
  %   green.
  %   blue.
  %   length: number of pixels minus one of this color (optional).
  %
  currentfile color_packet readhexstring pop pop
  compression 0 eq
  {
    /number_pixels 3 def
  }
  {
    currentfile byte readhexstring pop 0 get
    /number_pixels exch 1 add 3 mul def
  } ifelse
  0 3 number_pixels 1 sub
  {
    pixels exch color_packet putinterval
  } for
  pixels 0 number_pixels getinterval
} bind def

/DirectClassImage
{
  %
  % Display a DirectClass image.
  %
  systemdict /colorimage known
  {
    columns rows 8
    [
      columns 0 0
      rows neg 0 rows
    ]
    { DirectClassPacket } false 3 colorimage
  }
  {
    %
    % No colorimage operator;  convert to grayscale.
    %
    columns rows 8
    [
      columns 0 0
      rows neg 0 rows
    ]
    { GrayDirectClassPacket } image
  } ifelse
} bind def

/GrayDirectClassPacket
{
  %
  % Get a DirectClass packet;  convert to grayscale.
  %
  % Parameters:
  %   red
  %   green
  %   blue
  %   length: number of pixels minus one of this color (optional).
  %
  currentfile color_packet readhexstring pop pop
  color_packet 0 get 0.299 mul
  color_packet 1 get 0.587 mul add
  color_packet 2 get 0.114 mul add
  cvi
  /gray_packet exch def
  compression 0 eq
  {
    /number_pixels 1 def
  }
  {
    currentfile byte readhexstring pop 0 get
    /number_pixels exch 1 add def
  } ifelse
  0 1 number_pixels 1 sub
  {
    pixels exch gray_packet put
  } for
  pixels 0 number_pixels getinterval
} bind def

/GrayPseudoClassPacket
{
  %
  % Get a PseudoClass packet;  convert to grayscale.
  %
  % Parameters:
  %   index: index into the colormap.
  %   length: number of pixels minus one of this color (optional).
  %
  currentfile byte readhexstring pop 0 get
  /offset exch 3 mul def
  /color_packet colormap offset 3 getinterval def
  color_packet 0 get 0.299 mul
  color_packet 1 get 0.587 mul add
  color_packet 2 get 0.114 mul add
  cvi
  /gray_packet exch def
  compression 0 eq
  {
    /number_pixels 1 def
  }
  {
    currentfile byte readhexstring pop 0 get
    /number_pixels exch 1 add def
  } ifelse
  0 1 number_pixels 1 sub
  {
    pixels exch gray_packet put
  } for
  pixels 0 number_pixels getinterval
} bind def

/PseudoClassPacket
{
  %
  % Get a PseudoClass packet.
  %
  % Parameters:
  %   index: index into the colormap.
  %   length: number of pixels minus one of this color (optional).
  %
  currentfile byte readhexstring pop 0 get
  /offset exch 3 mul def
  /color_packet colormap offset 3 getinterval def
  compression 0 eq
  {
    /number_pixels 3 def
  }
  {
    currentfile byte readhexstring pop 0 get
    /number_pixels exch 1 add 3 mul def
  } ifelse
  0 3 number_pixels 1 sub
  {
    pixels exch color_packet putinterval
  } for
  pixels 0 number_pixels getinterval
} bind def

/PseudoClassImage
{
  %
  % Display a PseudoClass image.
  %
  % Parameters:
  %   class: 0-PseudoClass or 1-Grayscale.
  %
  currentfile buffer readline pop
  token pop /class exch def pop
  class 0 gt
  {
    currentfile buffer readline pop
    token pop /depth exch def pop
    /grays columns 8 add depth sub depth mul 8 idiv string def
    columns rows depth
    [
      columns 0 0
      rows neg 0 rows
    ]
    { currentfile grays readhexstring pop } image
  }
  {
    %
    % Parameters:
    %   colors: number of colors in the colormap.
    %   colormap: red, green, blue color packets.
    %
    currentfile buffer readline pop
    token pop /colors exch def pop
    /colors colors 3 mul def
    /colormap colors string def
    currentfile colormap readhexstring pop pop
    systemdict /colorimage known
    {
      columns rows 8
      [
        columns 0 0
        rows neg 0 rows
      ]
      { PseudoClassPacket } false 3 colorimage
    }
    {
      %
      % No colorimage operator;  convert to grayscale.
      %
      columns rows 8
      [
        columns 0 0
        rows neg 0 rows
      ]
      { GrayPseudoClassPacket } image
    } ifelse
  } ifelse
} bind def

/DisplayImage
{
  %
  % Display a DirectClass or PseudoClass image.
  %
  % Parameters:
  %   x & y translation.
  %   x & y scale.
  %   label pointsize.
  %   image label.
  %   image columns & rows.
  %   class: 0-DirectClass or 1-PseudoClass.
  %   compression: 0-none or 1-RunlengthEncoded.
  %   hex color packets.
  %
  gsave
  /buffer 512 string def
  /byte 1 string def
  /color_packet 3 string def
  /pixels 768 string def

  currentfile buffer readline pop
  token pop /x exch def
  token pop /y exch def pop
  x y translate
  currentfile buffer readline pop
  token pop /x exch def
  token pop /y exch def pop
  currentfile buffer readline pop
  token pop /pointsize exch def pop
  /Times-Roman findfont pointsize scalefont setfont
  x y scale
  currentfile buffer readline pop
  token pop /columns exch def
  token pop /rows exch def pop
  currentfile buffer readline pop
  token pop /class exch def pop
  currentfile buffer readline pop
  token pop /compression exch def pop
  class 0 gt { PseudoClassImage } { DirectClassImage } ifelse
  grestore
  showpage
} bind def
%%EndProlog
%%Page:  1 1
%%PageBoundingBox: 1315 496 1321 541
DisplayImage
1315 496
6 45
12.000000
6 45
0
0
3E434F3E434F676B78676B78676B78676B783E434F3E434F676B78676B78676B78676B78
3E434F3E434F676B78676B78676B78676B783E434F3E434F676B78676B78676B78676B78
3E434F3E434F676B78676B78676B78676B783E434F3E434F676B78676B78676B78676B78
3E434F3E434F676B78676B78676B78676B783E434F3E434F676B78676B78676B78676B78
3E434F3E434F676B78676B78676B78676B783E434F3E434F676B78676B78676B78676B78
3E434F3E434F676B78676B78676B78676B783E434F3E434F676B78676B78676B78676B78
3E434F3E434F676B78676B78676B78676B783E434F3E434F676B78676B78676B78676B78
3E434F3E434F676B78676B78676B78676B783E434F3E434F676B78676B78676B78676B78
3E434F3E434F676B78676B78676B78676B783E434F3E434F676B78676B78676B78676B78
3E434F3E434F676B78676B78676B78676B783E434F3E434F676B78676B78676B78676B78
3E434F3E434F676B78676B78676B78676B783E434F3E434F676B78676B78676B78676B78
3E434F3E434F676B78676B78676B78676B783E434F3E434F676B78676B78676B78676B78
3E434F3E434F676B78676B78676B78676B783E434F3E434F676B78676B78676B78676B78
3E434F3E434F676B78676B78676B78676B783E434F3E434F676B78676B78676B78676B78
3E434F3E434F676B78676B78676B78676B783E434F3E434F676B78676B78676B78676B78
3E434F3E434F676B78676B78676B78676B783E434F3E434F676B78676B78676B78676B78
3E434F3E434F676B78676B78676B78676B783E434F3E434F676B78676B78676B78676B78
3E434F3E434F676B78676B78676B78676B783E434F3E434F676B78676B78676B78676B78
3E434F3E434F676B78676B78676B78676B783E434F3E434F676B78676B78676B78676B78
3E434F3E434F676B78676B78676B78676B783E434F3E434F676B78676B78676B78676B78
3E434F3E434F676B78676B78676B78676B783E434F3E434F676B78676B78676B78676B78
3E434F3E434F676B78676B78676B78676B783E434F3E434F676B78676B78676B78676B78
3E434F3E434F676B78676B78676B78676B78

%%PageTrailer
%%Trailer
%%EOF
