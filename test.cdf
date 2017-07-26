(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.1' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[      7231,        162]
NotebookOptionsPosition[      7618,        153]
NotebookOutlinePosition[      8174,        176]
CellTagsIndexPosition[      8131,        173]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`dt$$ = 
    13.959999999999999`, $CellContext`e$$ = 0.5, $CellContext`P$$ = 
    20, $CellContext`t$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`t$$], 0, "time since perihelion (years)"}, 0, 
      Dynamic[$CellContext`P$$], 0.01}, {{
       Hold[$CellContext`e$$], 0.5, "eccentricity"}, 0, 0.9, 0.01}, {{
       Hold[$CellContext`P$$], 20, "orbit period (years)"}, 0.1, 50, 0.01}, {{
       Hold[$CellContext`dt$$], 5, "time span (years)"}, 0.1, 
      Dynamic[$CellContext`P$$], 0.01}, {{
       Hold[$CellContext`t$$], 0, "animate time since perihelion"}, 0, 
      Dynamic[$CellContext`P$$], 0.01}}, Typeset`size$$ = {
    350., {172., 178.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`t$12364$$ = 
    0, $CellContext`e$12365$$ = 0, $CellContext`P$12366$$ = 
    0, $CellContext`dt$12367$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`dt$$ = 5, $CellContext`e$$ = 
        0.5, $CellContext`P$$ = 20, $CellContext`t$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`t$$, $CellContext`t$12364$$, 0], 
        Hold[$CellContext`e$$, $CellContext`e$12365$$, 0], 
        Hold[$CellContext`P$$, $CellContext`P$12366$$, 0], 
        Hold[$CellContext`dt$$, $CellContext`dt$12367$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`a$ = 
         1, $CellContext`b$, $CellContext`c$, $CellContext`planet$, \
$CellContext`dist$, $CellContext`M$, $CellContext`M2$, $CellContext`area$, \
$CellContext`area2$, $CellContext`ea$, $CellContext`eanom$, \
$CellContext`eanom2$, $CellContext`p$}, 
        If[$CellContext`t$$ > $CellContext`P$$, $CellContext`t$$ = \
$CellContext`P$$]; 
        If[$CellContext`dt$$ > $CellContext`P$$, $CellContext`dt$$ = \
$CellContext`P$$]; $CellContext`b$ = 
         Sqrt[(-$CellContext`a$^2) ($CellContext`e$$^2 - 
            1)]; $CellContext`c$ = $CellContext`e$$ $CellContext`a$; \
$CellContext`M$ = 2 Pi ($CellContext`t$$/$CellContext`P$$); $CellContext`M2$ = 
         2 Pi (($CellContext`t$$ + $CellContext`dt$$)/$CellContext`P$$); \
$CellContext`area$ = $CellContext`a$ $CellContext`b$ ($CellContext`M$/
           2); $CellContext`area2$ = $CellContext`a$ $CellContext`b$ \
($CellContext`M2$/2); $CellContext`eanom$ = Mod[
           ReplaceAll[$CellContext`ea$, 
            
            FindRoot[$CellContext`M$ == $CellContext`ea$ - $CellContext`e$$ 
              Sin[$CellContext`ea$], {$CellContext`ea$, $CellContext`M$}]], 2 
           Pi]; $CellContext`eanom2$ = Mod[
           ReplaceAll[$CellContext`ea$, 
            
            FindRoot[$CellContext`M2$ == $CellContext`ea$ - $CellContext`e$$ 
              Sin[$CellContext`ea$], {$CellContext`ea$, $CellContext`M2$}]], 
           2 Pi]; If[$CellContext`eanom2$ < $CellContext`eanom$, \
$CellContext`eanom2$ = 
          2 Pi + $CellContext`eanom2$]; $CellContext`p$ = \
$CellContext`b$^2/$CellContext`a$; $CellContext`planet$ = {$CellContext`a$ 
            Cos[$CellContext`eanom$] - $CellContext`c$, $CellContext`b$ 
           Sin[$CellContext`eanom$]}; Graphics[{
           RGBColor[0.3, 0.3, 0.7], 
           Thickness[0.005], 
           Polygon[
            Join[{{0, 0}, 
              Apply[Sequence, 
               
               Table[{$CellContext`a$ 
                  Cos[$CellContext`angle] - $CellContext`c$, $CellContext`b$ 
                 Sin[$CellContext`angle]}, {$CellContext`angle, \
$CellContext`eanom$, $CellContext`eanom2$, 0.001}]], {0, 0}}]], 
           RGBColor[0.05, 0.6, 1], 
           Thickness[0.009], 
           
           Circle[{-$CellContext`c$, 0}, {$CellContext`a$, $CellContext`b$}, {
            0, 2 Pi}]}, 
          PlotRange -> {{-1.1 - $CellContext`c$, 
             1.1 - $CellContext`c$}, {-1.1, 1.1}}, Epilog -> {
            RGBColor[1, 0.7, 0], 
            Disk[{0, 0}, 0.05], 
            RGBColor[0.77, 0.29, 0.55], 
            PointSize[0.02], 
            Point[$CellContext`planet$]}, ImageSize -> {350, 350}, 
          AspectRatio -> 1, Axes -> False, PlotLabel -> Row[{
             StringJoin["area = ", 
              ToString[
               NumberForm[$CellContext`area2$ - $CellContext`area$, {4, 2}]], 
              " \!\(\*SuperscriptBox[\(AU\), \(2\)]\)"]}]]], 
      "Specifications" :> {{{$CellContext`t$$, 0, 
          "time since perihelion (years)"}, 0, 
         Dynamic[$CellContext`P$$], 0.01, Appearance -> "Labeled", ImageSize -> 
         Tiny}, {{$CellContext`e$$, 0.5, "eccentricity"}, 0, 0.9, 0.01, 
         Appearance -> "Labeled", ImageSize -> 
         Tiny}, {{$CellContext`P$$, 20, "orbit period (years)"}, 0.1, 50, 
         0.01, Appearance -> "Labeled", ImageSize -> 
         Tiny}, {{$CellContext`dt$$, 5, "time span (years)"}, 0.1, 
         Dynamic[$CellContext`P$$], 0.01, Appearance -> "Labeled", ImageSize -> 
         Tiny}, {{$CellContext`t$$, 0, "animate time since perihelion"}, 0, 
         Dynamic[$CellContext`P$$], 0.01, ControlType -> Trigger}}, 
      "Options" :> {AutorunSequencing -> {1, 2, 3}, ControlPlacement -> Left},
       "DefaultOptions" :> {}],
     ImageSizeCache->{734., {203., 210.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output", \
"PluginEmbeddedContent",ExpressionUUID->"a31476e6-bc79-4204-95c4-\
a51f231dd7c5"]
},
WindowSize->{782, 427},
WindowMargins->{{559, Automatic}, {Automatic, 267}},
Visible->True,
AuthoredSize->{782, 427},
ScrollingOptions->{"HorizontalScrollRange"->Fit,
"VerticalScrollRange"->Fit},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"11.1 for Microsoft Windows (64-bit) (April 18, 2017)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[1464, 33, 6150, 118, 415, "Output", "ExpressionUUID" -> \
"a31476e6-bc79-4204-95c4-a51f231dd7c5"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Uu0KAO3av6uzoDwk@SHm6NEj *)
