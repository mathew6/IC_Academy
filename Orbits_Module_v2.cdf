(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.3' *)

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
NotebookDataLength[    146712,       3347]
NotebookOptionsPosition[    144961,       3264]
NotebookOutlinePosition[    145397,       3283]
CellTagsIndexPosition[    145354,       3280]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[{
 RowBox[{
  RowBox[{"cart", ":=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"r", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"Cos", "[", 
          RowBox[{"\[Omega]", "+", "\[Nu]"}], "]"}], 
         RowBox[{"Cos", "[", "\[CapitalOmega]", "]"}]}], "-", 
        RowBox[{
         RowBox[{"Sin", "[", 
          RowBox[{"\[Omega]", "+", "\[Nu]"}], "]"}], 
         RowBox[{"Sin", "[", "\[CapitalOmega]", "]"}], 
         RowBox[{"Cos", "[", "i", "]"}]}]}], ")"}]}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"r", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"Cos", "[", 
          RowBox[{"\[Omega]", "+", "\[Nu]"}], "]"}], 
         RowBox[{"Sin", "[", "\[CapitalOmega]", "]"}]}], "+", 
        RowBox[{
         RowBox[{"Sin", "[", 
          RowBox[{"\[Omega]", "+", "\[Nu]"}], "]"}], 
         RowBox[{"Cos", "[", "\[CapitalOmega]", "]"}], 
         RowBox[{"Cos", "[", "i", "]"}]}]}], ")"}]}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"r", " ", 
      RowBox[{"Sin", "[", 
       RowBox[{"\[Omega]", "+", "\[Nu]"}], "]"}], 
      RowBox[{"Sin", "[", "i", "]"}]}]}], "}"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"$Elliptic", ":=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{
      RowBox[{"r", " ", 
       RowBox[{"Cos", "[", "\[Nu]", "]"}]}], "\[RuleDelayed]", 
      RowBox[{"a", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"Cos", "[", "\[CapitalEpsilon]", "]"}], "-", "e"}], 
        ")"}]}]}], ",", 
     RowBox[{
      RowBox[{"r", " ", 
       RowBox[{"Sin", "[", "\[Nu]", "]"}]}], "\[RuleDelayed]", 
      RowBox[{"a", 
       SqrtBox[
        RowBox[{"1", "-", 
         SuperscriptBox["e", "2"]}]], 
       RowBox[{"Sin", "[", "\[CapitalEpsilon]", "]"}]}]}], ",", 
     RowBox[{
      RowBox[{"t", "-", "t0"}], "\[RuleDelayed]", " ", 
      RowBox[{
       FractionBox["1", "n"], 
       RowBox[{"(", 
        RowBox[{"\[CapitalEpsilon]", "-", 
         RowBox[{"e", " ", 
          RowBox[{"Sin", "[", "\[CapitalEpsilon]", "]"}]}]}], ")"}]}]}], ",", 
     RowBox[{"\[CapitalEpsilon]", "\[Rule]", 
      RowBox[{"Kepler", "[", "]"}]}]}], "}"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Kepler", "[", "\[CapitalEpsilon]_", "]"}], ":=", 
   RowBox[{"M", "+", 
    RowBox[{"e", " ", 
     RowBox[{"Sin", "[", "\[CapitalEpsilon]", "]"}]}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"\[CapitalEpsilon]", "[", 
    RowBox[{"M_", ",", "e_"}], "]"}], "=", 
   RowBox[{"Nest", "[", 
    RowBox[{"Kepler", ",", "M", ",", "4"}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Reference", "[", "opts___", "]"}], ":=", 
   RowBox[{"With", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"R", "=", 
       RowBox[{
        RowBox[{"\"\<Radius\>\"", "/.", 
         RowBox[{"{", "opts", "}"}]}], "/.", 
        RowBox[{"\"\<Radius\>\"", "\[Rule]", "GoldenRatio"}]}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Line", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"R", ",", "0", ",", "0"}], "}"}]}], "}"}], "]"}], ",", 
       RowBox[{"Opacity", "[", ".5", "]"}], ",", 
       RowBox[{"Polygon", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"-", "R"}], ",", 
            RowBox[{"-", "R"}], ",", "0"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"-", "R"}], ",", "R", ",", "0"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"R", ",", "R", ",", "0"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"R", ",", 
            RowBox[{"-", "R"}], ",", "0"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"-", "R"}], ",", 
            RowBox[{"-", "R"}], ",", "0"}], "}"}]}], "}"}], "]"}]}], "}"}]}], 
    "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Planet", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "a_", ",", "e_", ",", "i_", ",", "\[Omega]_", ",", "\[CapitalOmega]_", 
       ",", "M_"}], "}"}], ",", "opts___"}], "]"}], ":=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{
      RowBox[{"\"\<Color\>\"", "/.", 
       RowBox[{"{", "opts", "}"}]}], "/.", 
      RowBox[{"\"\<Color\>\"", "\[Rule]", "Blue"}]}], ",", 
     RowBox[{"Sphere", "[", 
      RowBox[{
       RowBox[{"xyz", "[", 
        RowBox[{
        "a", ",", "e", ",", "i", ",", "\[Omega]", ",", "\[CapitalOmega]", ",",
          "M"}], "]"}], ",", 
       RowBox[{
        RowBox[{"\"\<Radius\>\"", "/.", 
         RowBox[{"{", "opts", "}"}]}], "/.", 
        RowBox[{"\"\<Radius\>\"", "\[Rule]", ".1"}]}]}], "]"}]}], "}"}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Orbit", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "a_", ",", "e_", ",", "i_", ",", "\[Omega]_", ",", "\[CapitalOmega]_", 
       ",", "M_"}], "}"}], ",", "opts___"}], "]"}], ":=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"Thickness", "[", ".005", "]"}], ",", 
     RowBox[{"Line", "[", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"XYZ", "[", 
         RowBox[{
         "a", ",", "e", ",", "i", ",", "\[Omega]", ",", "\[CapitalOmega]", 
          ",", "\[CapitalEpsilon]"}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"\[CapitalEpsilon]", ",", "0", ",", 
          RowBox[{"2", "\[Pi]"}], ",", 
          RowBox[{"2", 
           RowBox[{"\[Pi]", "/", "33"}]}]}], "}"}]}], "]"}], "]"}]}], "}"}]}],
   ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Plane", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "a_", ",", "e_", ",", "i_", ",", "\[Omega]_", ",", "\[CapitalOmega]_", 
       ",", "M_"}], "}"}], ",", "opts___"}], "]"}], ":=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{
      RowBox[{"\"\<Color\>\"", "/.", 
       RowBox[{"{", "opts", "}"}]}], "/.", 
      RowBox[{"\"\<Color\>\"", "\[Rule]", "Blue"}]}], ",", 
     RowBox[{"Opacity", "[", ".5", "]"}], ",", 
     RowBox[{"Polygon", "[", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"XYZ", "[", 
         RowBox[{
         "a", ",", "e", ",", "i", ",", "\[Omega]", ",", "\[CapitalOmega]", 
          ",", "\[CapitalEpsilon]"}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"\[CapitalEpsilon]", ",", "0", ",", 
          RowBox[{"2", "\[Pi]"}], ",", 
          RowBox[{"2", 
           RowBox[{"\[Pi]", "/", "33"}]}]}], "}"}]}], "]"}], "]"}]}], "}"}]}],
   ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Geometry", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "a_", ",", "e_", ",", "i_", ",", "\[Omega]_", ",", "\[CapitalOmega]_", 
       ",", "M_"}], "}"}], ",", "opts___"}], "]"}], ":=", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{"Line", "[", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"XYZ", "[", 
          RowBox[{
          "a", ",", "e", ",", "i", ",", "\[Omega]", ",", "\[CapitalOmega]", 
           ",", "0"}], "]"}], ",", 
         RowBox[{"XYZ", "[", 
          RowBox[{
          "a", ",", "e", ",", "i", ",", "\[Omega]", ",", "\[CapitalOmega]", 
           ",", 
           RowBox[{"180", "\[Degree]"}]}], "]"}]}], "}"}], 
       RowBox[{"(*", "a", "*)"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"XYZ", "[", 
          RowBox[{
          "a", ",", "e", ",", "i", ",", "\[Omega]", ",", "\[CapitalOmega]", 
           ",", 
           RowBox[{"90", "\[Degree]"}]}], "]"}], ",", 
         RowBox[{"XYZ", "[", 
          RowBox[{
          "a", ",", "e", ",", "i", ",", "\[Omega]", ",", "\[CapitalOmega]", 
           ",", 
           RowBox[{"270", "\[Degree]"}]}], "]"}]}], "}"}], 
       RowBox[{"(*", "b", "*)"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"XYZ", "[", 
          RowBox[{
          "a", ",", "e", ",", "i", ",", "\[Omega]", ",", "\[CapitalOmega]", 
           ",", 
           RowBox[{"0", "\[Degree]"}]}], "]"}], ",", 
         RowBox[{"XYZ", "[", 
          RowBox[{
          "a", ",", "e", ",", "i", ",", "\[Omega]", ",", "\[CapitalOmega]", 
           ",", 
           RowBox[{"90", "\[Degree]"}]}], "]"}]}], "}"}]}], "}"}], "]"}], 
    "}"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Body", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "a_", ",", "e_", ",", "i_", ",", "\[Omega]_", ",", "\[CapitalOmega]_", 
       ",", "M_"}], "}"}], ",", "opts___"}], "]"}], ":=", 
   RowBox[{
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Planet", "[", 
        RowBox[{"#", ",", "opts"}], "]"}], ",", 
       RowBox[{"Orbit", "[", 
        RowBox[{"#", ",", "opts"}], "]"}], ",", 
       RowBox[{"Plane", "[", 
        RowBox[{"#", ",", "opts"}], "]"}], ",", 
       RowBox[{"Geometry", "[", 
        RowBox[{"#", ",", "opts"}], "]"}]}], "}"}], "&"}], "[", 
    RowBox[{"{", 
     RowBox[{
     "a", ",", "e", ",", "i", ",", "\[Omega]", ",", "\[CapitalOmega]", ",", 
      "M"}], "}"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"Star", "[", "opts___", "]"}], ":=", 
   RowBox[{"{", 
    RowBox[{"Yellow", ",", 
     RowBox[{"Sphere", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
       RowBox[{
        RowBox[{"\"\<Radius\>\"", "/.", 
         RowBox[{"{", "opts", "}"}]}], "/.", 
        RowBox[{"\"\<Radius\>\"", "\[Rule]", ".1"}]}]}], "]"}]}], "}"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"xyz", "=", 
   RowBox[{"Function", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "a", ",", "e", ",", "i", ",", "\[Omega]", ",", "\[CapitalOmega]", ",", 
       "M"}], "}"}], ",", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"TrigExpand", "[", "cart", "]"}], "/.", "$Elliptic"}], "/.", 
       RowBox[{"\[CapitalEpsilon]", "\[Rule]", 
        RowBox[{"\[CapitalEpsilon]", "[", 
         RowBox[{"M", ",", "e"}], "]"}]}]}], "//", "Evaluate"}]}], "]"}]}], 
  ";", 
  RowBox[{"XYZ", "=", 
   RowBox[{"Function", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "a", ",", "e", ",", "i", ",", "\[Omega]", ",", "\[CapitalOmega]", ",", 
       "\[CapitalEpsilon]"}], "}"}], ",", 
     RowBox[{
      RowBox[{
       RowBox[{"TrigExpand", "[", "cart", "]"}], "/.", "$Elliptic"}], "//", 
      "Evaluate"}]}], "]"}]}], ";"}]}], "Input",
 CellOpen->False,
 InitializationCell->True],

Cell[CellGroupData[{

Cell[TextData[Cell[BoxData[
 FormBox["Preface", TraditionalForm]]]], "Chapter"],

Cell["\<\
On a beautiful October evening in 1601 in Prague, a gentleman by the name of \
Tycho Brahe was attending a banquet of extravagant proportions.  This was \
nothing new for Tycho.  A man of incredible wealth was known to host large \
gatherings at his castle.  With an unshakeable sense of propriety (be it in \
the banquet hall or in a duel, where he once lost his nose by the sword of \
his cousin), he showed uncommon personal fortitude in deciding that a brief \
pause in the pleasantries to urinate may be a breach of etiquette.  \
Unfortunately for Tycho, the resulting bladder and kidney problems led to his \
death a few days later caused by a burst bladder.  A rather ignoble ending \
for a man of his means and achievements.  In anticipation of his death, he \
wrote his on epitaph: \[OpenCurlyDoubleQuote]He lived like a sage and died \
like a fool.\[CloseCurlyDoubleQuote]  Indeed.

So aside from the curiosity of the story of his death, why is Tycho \
important?  Consider a little more of the story of his final days.  As he \
endured excruciating pain, he compelled his assitant, one Johannes Kepler, to \
take all of Tycho\[CloseCurlyQuote]s astronomical observations and carry on \
his work in bringing some formal understanding to the orbits of the planets \
around the Sun.  Kepler was indeed appointed Tycho\[CloseCurlyQuote]s \
successor as imperial mathematician by Emporor Rudolph II, and he was \
directed to finish Tycho\[CloseCurlyQuote]s work.  It was from Brahe\
\[CloseCurlyQuote]s vast collection of observations that Kepler was able to \
formulate his laws of motion.

It\[CloseCurlyQuote]s unfortunate that Brahe hasn\[CloseCurlyQuote]t enjoyed \
the same level of popular recognition as Kepler.  Both played unique and \
tremendous roles in bringing about a formalism to our understanding of \
orbits, however it\[CloseCurlyQuote]s Kepler\[CloseCurlyQuote]s name that has \
the brand recognition.  He likely would have never made the leap he did \
without the unfettered access to the whole of Brahe\[CloseCurlyQuote]s \
observations, and it\[CloseCurlyQuote]s equally unlikely that Brahe would \
have made the insights that Kepler did.  Both were giants.\
\>", "Text"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Kepler\[CloseCurlyQuote]s Laws of Planetary Motion", "Chapter"],

Cell[TextData[{
 "The formalism of Kepler has endured and provided the basis on which Newton \
eventually formulated his laws of motion.  Kepler spent years synthesizing \
Brahe\[CloseCurlyQuote]s work into the following three laws of planetary \
motion:\n\n\t1. ",
 StyleBox["The orbit of a planet is an ellipse with the Sun at one of the two \
foci.\n\t2. A line segment joining a planet and the Sun sweeps out equal \
areas during equal time intervals.\n\t3. The square of the orbital period is \
proportional to the cube of the semi-major axis of the orbit.\n\t\nThis was a \
departure of the theories posited by Copernicus at the time, which was based \
on circles and epicycles (circles upon circles).  These laws tell us about \
the shape of the orbit and the motion with respect to time.  So let\
\[CloseCurlyQuote]s look at that first.  Below is an interactive \
demonstration of Kepler\[CloseCurlyQuote]s laws of planetary motion.  The \
following subsections will provide some additional insight and suggestions \
for exercises. ", "Item"]
}], "Text"],

Cell[CellGroupData[{

Cell["Kepler\[CloseCurlyQuote]s First Law", "Subchapter"],

Cell[TextData[{
 "Let\[CloseCurlyQuote]s look at the ",
 StyleBox["first law again:\n", "Item"],
 "\n\t1. ",
 StyleBox["The orbit of a planet is an ellipse with the Sun at one of the two \
foci.\n\nTo see this in action, use the mouse pointer to scroll up and down \
in values for eccentricity.  We won\[CloseCurlyQuote]t go into the specifics \
of the foci of an ellipse in this module, but the takeaway here is that there \
are two of them for each ellipse and they are NOT at the center (except for a \
circle).  Try setting eccentricity to 0.  Does it look like a circle?  Try \
setting it to some of your favorite values, like the Earth\[CloseCurlyQuote]s \
orbit around the Sun (0.00167), or a Molniya orbit (0.7), or the Moon around \
the Earth (0..04).", "Item"]
}], "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"a", "=", "1"}], ",", "b", ",", "c", ",", "planet", ",", 
       "dist", ",", "M", ",", "M2", ",", "area", ",", "area2", ",", "ea", ",",
        "eanom", ",", "eanom2", ",", "p", ",", 
       RowBox[{"t", "=", "0"}], ",", 
       RowBox[{"P", "=", "20"}], ",", 
       RowBox[{"dt", "=", "0"}]}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"t", ">", "P"}], ",", 
        RowBox[{"t", "=", "P"}]}], "]"}], ";", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"dt", ">", "P"}], ",", 
        RowBox[{"dt", "=", "P"}]}], "]"}], ";", "\[IndentingNewLine]", 
      RowBox[{"b", "=", 
       RowBox[{"Sqrt", "[", 
        RowBox[{
         RowBox[{"-", 
          RowBox[{"a", "^", "2"}]}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"e", "^", "2"}], "-", "1"}], ")"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"c", "=", 
       RowBox[{"e", " ", "a"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"M", "=", 
       RowBox[{"2", " ", "Pi", " ", 
        RowBox[{"t", "/", "P"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"M2", "=", 
       RowBox[{"2", " ", "Pi", " ", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"t", "+", "dt"}], ")"}], "/", "P"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"area", "=", 
       RowBox[{"a", " ", "b", " ", 
        RowBox[{"M", "/", "2"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"area2", "=", 
       RowBox[{"a", " ", "b", " ", 
        RowBox[{"M2", "/", "2"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"eanom", "=", 
       RowBox[{"Mod", "[", 
        RowBox[{
         RowBox[{"ea", "/.", 
          RowBox[{"FindRoot", "[", 
           RowBox[{
            RowBox[{"M", "\[Equal]", 
             RowBox[{"ea", "-", 
              RowBox[{"e", " ", 
               RowBox[{"Sin", "[", "ea", "]"}]}]}]}], ",", 
            RowBox[{"{", 
             RowBox[{"ea", ",", "M"}], "}"}]}], "]"}]}], ",", 
         RowBox[{"2", " ", "Pi"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"eanom2", "=", 
       RowBox[{"Mod", "[", 
        RowBox[{
         RowBox[{"ea", "/.", 
          RowBox[{"FindRoot", "[", 
           RowBox[{
            RowBox[{"M2", "\[Equal]", 
             RowBox[{"ea", "-", 
              RowBox[{"e", " ", 
               RowBox[{"Sin", "[", "ea", "]"}]}]}]}], ",", 
            RowBox[{"{", 
             RowBox[{"ea", ",", "M2"}], "}"}]}], "]"}]}], ",", 
         RowBox[{"2", " ", "Pi"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"eanom2", "<", "eanom"}], ",", 
        RowBox[{"eanom2", "=", 
         RowBox[{
          RowBox[{"2", " ", "Pi"}], "+", "eanom2"}]}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"p", "=", 
       RowBox[{
        RowBox[{"b", "^", "2"}], "/", "a"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"planet", "=", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{
          RowBox[{"a", " ", 
           RowBox[{"Cos", "[", "eanom", "]"}]}], "-", "c"}], ",", 
         RowBox[{"b", " ", 
          RowBox[{"Sin", "[", "eanom", "]"}]}]}], "}"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"Graphics", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"RGBColor", "[", 
           RowBox[{".3", ",", ".3", ",", ".7"}], "]"}], ",", 
          RowBox[{"Thickness", "[", ".005", "]"}], ",", 
          RowBox[{"Polygon", "[", 
           RowBox[{"Join", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"0", ",", "0"}], "}"}], ",", 
              RowBox[{"Sequence", "@@", 
               RowBox[{"Table", "[", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"a", " ", 
                    RowBox[{"Cos", "[", "angle", "]"}]}], "-", "c"}], ",", 
                   RowBox[{"b", " ", 
                    RowBox[{"Sin", "[", "angle", "]"}]}]}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"angle", ",", "eanom", ",", "eanom2", ",", ".001"}],
                   "}"}]}], "]"}]}], ",", 
              RowBox[{"{", 
               RowBox[{"0", ",", "0"}], "}"}]}], "}"}], "]"}], "]"}], ",", 
          RowBox[{"RGBColor", "[", 
           RowBox[{".05", ",", "0.6", ",", "1"}], "]"}], ",", 
          RowBox[{"Thickness", "[", ".009", "]"}], ",", 
          RowBox[{"Circle", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "c"}], ",", "0"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"a", ",", "b"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", 
              RowBox[{"2", " ", "Pi"}]}], "}"}]}], "]"}]}], "}"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "1.1"}], "-", "c"}], ",", 
             RowBox[{"1.1", "-", "c"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "1.1"}], ",", "1.1"}], "}"}]}], "}"}]}], ",", 
        RowBox[{"Epilog", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"RGBColor", "[", 
            RowBox[{"1", ",", "0.7", ",", "0"}], "]"}], ",", 
           RowBox[{"Disk", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"0", ",", "0"}], "}"}], ",", ".05"}], "]"}], ",", 
           RowBox[{"RGBColor", "[", 
            RowBox[{".77", ",", ".29", ",", ".55"}], "]"}], ",", 
           RowBox[{"PointSize", "[", ".02", "]"}], ",", 
           RowBox[{"Point", "[", "planet", "]"}]}], "}"}]}], ",", 
        RowBox[{"ImageSize", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"350", ",", "350"}], "}"}]}], ",", 
        RowBox[{"AspectRatio", "\[Rule]", "1"}], ",", 
        RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}]}]}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"e", ",", ".5", ",", "\"\<eccentricity\>\""}], "}"}], ",", "0", 
     ",", ".9", ",", ".01", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
     RowBox[{"ImageSize", "\[Rule]", "Tiny"}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"AutorunSequencing", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"1", ",", "2", ",", "3"}], "}"}]}], ",", 
   RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "]"}]], "Input"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`e$$ = 0.55, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`e$$], 0.5, "eccentricity"}, 0, 0.9, 0.01}}, 
    Typeset`size$$ = {350., {173., 177.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`e$52440$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`e$$ = 0.5}, 
      "ControllerVariables" :> {
        Hold[$CellContext`e$$, $CellContext`e$52440$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`a$ = 
         1, $CellContext`b$, $CellContext`c$, $CellContext`planet$, \
$CellContext`dist$, $CellContext`M$, $CellContext`M2$, $CellContext`area$, \
$CellContext`area2$, $CellContext`ea$, $CellContext`eanom$, \
$CellContext`eanom2$, $CellContext`p$, $CellContext`t$ = 0, $CellContext`P$ = 
         20, $CellContext`dt$ = 0}, 
        If[$CellContext`t$ > $CellContext`P$, $CellContext`t$ = \
$CellContext`P$]; 
        If[$CellContext`dt$ > $CellContext`P$, $CellContext`dt$ = \
$CellContext`P$]; $CellContext`b$ = 
         Sqrt[(-$CellContext`a$^2) ($CellContext`e$$^2 - 
            1)]; $CellContext`c$ = $CellContext`e$$ $CellContext`a$; \
$CellContext`M$ = (2 
           Pi) ($CellContext`t$/$CellContext`P$); $CellContext`M2$ = (2 
           Pi) (($CellContext`t$ + $CellContext`dt$)/$CellContext`P$); \
$CellContext`area$ = ($CellContext`a$ $CellContext`b$) ($CellContext`M$/
           2); $CellContext`area2$ = ($CellContext`a$ $CellContext`b$) \
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
          AspectRatio -> 1, Axes -> False]], 
      "Specifications" :> {{{$CellContext`e$$, 0.5, "eccentricity"}, 0, 0.9, 
         0.01, Appearance -> "Labeled", ImageSize -> Tiny}}, 
      "Options" :> {AutorunSequencing -> {1, 2, 3}, ControlPlacement -> Left},
       "DefaultOptions" :> {}],
     ImageSizeCache->{597., {203., 210.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, {2}]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Kepler\[CloseCurlyQuote]s Third Law", "Subchapter"],

Cell[TextData[{
 "Third law?  Yes, we\[CloseCurlyQuote]re taking these out of order.  Let\
\[CloseCurlyQuote]s look at the third law again:\n\n",
 StyleBox["\t3. The square of the orbital period is proportional to the cube \
of the semi-major axis of the orbit.", "Item"],
 "\n\t\nA couple of new things in here.  First, what\[CloseCurlyQuote]s the \
orbital period?  In the context of a planet, it\[CloseCurlyQuote]s the amount \
of time it takes the planet to go around the Sun one time.  For Earth, the \
orbital period is 1 year.  So that makes sense.  Now what\[CloseCurlyQuote]s \
the semi-major axis of an ellipse?  Well, there are two axes of symmetry for \
an ellipsis: the major axis (the longer one) and the minor axis (the shorter \
one).  So a semi-major axis is half of the major axis -- \
it\[CloseCurlyQuote]s the distance from the center of the ellipse to the \
furthest point away from the center.  For the limitting case of a circle, the \
semi-major axis is the radius of the circle.  It\[CloseCurlyQuote]s also \
equal the to semi-minor axis!  However, as the eccentricity grows, so grows \
the difference between the lengths of the major and minor axes.\n\nArgh!  So \
many words!  Let\[CloseCurlyQuote]s look at the same interactive widget \
below.  The major axis is horizontal, and the minor axis is vertical.  And \
according to Kepler, the larger the semi-major axis, the longer the orbital \
period.  Think about this in terms of planets.  The closer planets like \
Mercury and Venus have shorter orbital periods than Earth, and the planets \
that are farther away like Mars, Jupiter and all the rest have orbital \
periods that are longer than 1 year.  Make sense?"
}], "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "a", ",", "b", ",", "c", ",", "planet", ",", "dist", ",", "M", ",", 
       "M2", ",", "area", ",", "area2", ",", "ea", ",", "eanom", ",", 
       "eanom2", ",", "p", ",", " ", 
       RowBox[{"e", "=", "0.5"}], ",", " ", 
       RowBox[{"dt", "=", "0"}], ",", " ", 
       RowBox[{"t", "=", "0"}], ",", 
       RowBox[{"muSun", "=", 
        RowBox[{"1.3271244", "*", 
         RowBox[{"10", "^", "11"}]}]}], ",", " ", 
       RowBox[{"au", "=", 
        RowBox[{"1.4959787", "*", 
         RowBox[{"10", "^", "8"}]}]}]}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"t", ">", "P"}], ",", 
        RowBox[{"t", "=", "P"}]}], "]"}], ";", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"dt", ">", "P"}], ",", 
        RowBox[{"dt", "=", "P"}]}], "]"}], ";", "\[IndentingNewLine]", 
      RowBox[{"a", "=", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"muSun", "*", 
           RowBox[{
            RowBox[{
             RowBox[{"(", 
              RowBox[{"P", "*", "365", "*", "86400"}], ")"}], "^", "2"}], "/", 
            RowBox[{"(", 
             RowBox[{"4", 
              RowBox[{"Pi", "^", "2"}]}], ")"}]}]}], ")"}], "^", 
         RowBox[{"(", 
          RowBox[{"1", "/", "3"}], ")"}]}], "/", "au"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"b", "=", 
       RowBox[{"Sqrt", "[", 
        RowBox[{
         RowBox[{"-", 
          RowBox[{"a", "^", "2"}]}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"e", "^", "2"}], "-", "1"}], ")"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"c", "=", 
       RowBox[{"e", " ", "a"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"M", "=", 
       RowBox[{"2", " ", "Pi", " ", 
        RowBox[{"t", "/", "P"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"M2", "=", 
       RowBox[{"2", " ", "Pi", " ", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"t", "+", "dt"}], ")"}], "/", "P"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"area", "=", 
       RowBox[{"a", " ", "b", " ", 
        RowBox[{"M", "/", "2"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"area2", "=", 
       RowBox[{"a", " ", "b", " ", 
        RowBox[{"M2", "/", "2"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"eanom", "=", 
       RowBox[{"Mod", "[", 
        RowBox[{
         RowBox[{"ea", "/.", 
          RowBox[{"FindRoot", "[", 
           RowBox[{
            RowBox[{"M", "\[Equal]", 
             RowBox[{"ea", "-", 
              RowBox[{"e", " ", 
               RowBox[{"Sin", "[", "ea", "]"}]}]}]}], ",", 
            RowBox[{"{", 
             RowBox[{"ea", ",", "M"}], "}"}]}], "]"}]}], ",", 
         RowBox[{"2", " ", "Pi"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"eanom2", "=", 
       RowBox[{"Mod", "[", 
        RowBox[{
         RowBox[{"ea", "/.", 
          RowBox[{"FindRoot", "[", 
           RowBox[{
            RowBox[{"M2", "\[Equal]", 
             RowBox[{"ea", "-", 
              RowBox[{"e", " ", 
               RowBox[{"Sin", "[", "ea", "]"}]}]}]}], ",", 
            RowBox[{"{", 
             RowBox[{"ea", ",", "M2"}], "}"}]}], "]"}]}], ",", 
         RowBox[{"2", " ", "Pi"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"eanom2", "<", "eanom"}], ",", 
        RowBox[{"eanom2", "=", 
         RowBox[{
          RowBox[{"2", " ", "Pi"}], "+", "eanom2"}]}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"p", "=", 
       RowBox[{
        RowBox[{"b", "^", "2"}], "/", "a"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"planet", "=", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{
          RowBox[{"a", " ", 
           RowBox[{"Cos", "[", "eanom", "]"}]}], "-", "c"}], ",", 
         RowBox[{"b", " ", 
          RowBox[{"Sin", "[", "eanom", "]"}]}]}], "}"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"Graphics", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"RGBColor", "[", 
           RowBox[{".3", ",", ".3", ",", ".7"}], "]"}], ",", 
          RowBox[{"Thickness", "[", ".005", "]"}], ",", 
          RowBox[{"Polygon", "[", 
           RowBox[{"Join", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"0", ",", "0"}], "}"}], ",", 
              RowBox[{"Sequence", "@@", 
               RowBox[{"Table", "[", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"a", " ", 
                    RowBox[{"Cos", "[", "angle", "]"}]}], "-", "c"}], ",", 
                   RowBox[{"b", " ", 
                    RowBox[{"Sin", "[", "angle", "]"}]}]}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"angle", ",", "eanom", ",", "eanom2", ",", ".001"}],
                   "}"}]}], "]"}]}], ",", 
              RowBox[{"{", 
               RowBox[{"0", ",", "0"}], "}"}]}], "}"}], "]"}], "]"}], ",", 
          RowBox[{"RGBColor", "[", 
           RowBox[{".05", ",", "0.6", ",", "1"}], "]"}], ",", 
          RowBox[{"Thickness", "[", ".009", "]"}], ",", 
          RowBox[{"Circle", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "c"}], ",", "0"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"a", ",", "b"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", 
              RowBox[{"2", " ", "Pi"}]}], "}"}]}], "]"}]}], "}"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "1.1"}], "-", "c"}], ",", 
             RowBox[{"1.1", "-", "c"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "1.1"}], ",", "1.1"}], "}"}]}], "}"}]}], ",", 
        RowBox[{"Epilog", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"RGBColor", "[", 
            RowBox[{"1", ",", "0.7", ",", "0"}], "]"}], ",", 
           RowBox[{"Disk", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"0", ",", "0"}], "}"}], ",", ".05"}], "]"}], ",", 
           RowBox[{"RGBColor", "[", 
            RowBox[{".77", ",", ".29", ",", ".55"}], "]"}], ",", 
           RowBox[{"PointSize", "[", ".02", "]"}], ",", 
           RowBox[{"Point", "[", "planet", "]"}]}], "}"}]}], ",", 
        RowBox[{"ImageSize", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"350", ",", "350"}], "}"}]}], ",", 
        RowBox[{"AspectRatio", "\[Rule]", "1"}], ",", 
        RowBox[{"Axes", "\[Rule]", "False"}], ",", " ", 
        RowBox[{"PlotLabel", "\[Rule]", 
         RowBox[{"Row", "[", 
          RowBox[{"{", 
           RowBox[{"\"\<semi-major axis = \>\"", "<>", 
            RowBox[{"ToString", "[", "a", "]"}], "<>", "\"\< AU\>\""}], "}"}],
           "]"}]}]}], "]"}]}]}], "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"P", ",", "1", ",", "\"\<orbit period (years)\>\""}], "}"}], 
     ",", "0.1", ",", " ", "1", ",", " ", "0.01", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
     RowBox[{"ImageSize", "\[Rule]", "Tiny"}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"AutorunSequencing", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"1", ",", "2", ",", "3"}], "}"}]}], ",", 
   RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "]"}]], "Input"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`P$$ = 1., Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`P$$], 1, "orbit period (years)"}, 0.1, 1, 0.01}}, 
    Typeset`size$$ = {350., {173., 177.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`P$60145$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`P$$ = 1}, 
      "ControllerVariables" :> {
        Hold[$CellContext`P$$, $CellContext`P$60145$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`a$, $CellContext`b$, $CellContext`c$, \
$CellContext`planet$, $CellContext`dist$, $CellContext`M$, $CellContext`M2$, \
$CellContext`area$, $CellContext`area2$, $CellContext`ea$, \
$CellContext`eanom$, $CellContext`eanom2$, $CellContext`p$, $CellContext`e$ = 
         0.5, $CellContext`dt$ = 0, $CellContext`t$ = 0, $CellContext`muSun$ = 
         1.3271244 10^11, $CellContext`au$ = 1.4959787 10^8}, 
        If[$CellContext`t$ > $CellContext`P$$, $CellContext`t$ = \
$CellContext`P$$]; 
        If[$CellContext`dt$ > $CellContext`P$$, $CellContext`dt$ = \
$CellContext`P$$]; $CellContext`a$ = ($CellContext`muSun$ ((($CellContext`P$$ 
                365) 86400)^2/(4 Pi^2)))^(1/
            3)/$CellContext`au$; $CellContext`b$ = 
         Sqrt[(-$CellContext`a$^2) ($CellContext`e$^2 - 
            1)]; $CellContext`c$ = $CellContext`e$ $CellContext`a$; \
$CellContext`M$ = (2 
           Pi) ($CellContext`t$/$CellContext`P$$); $CellContext`M2$ = (2 
           Pi) (($CellContext`t$ + $CellContext`dt$)/$CellContext`P$$); \
$CellContext`area$ = ($CellContext`a$ $CellContext`b$) ($CellContext`M$/
           
           2); $CellContext`area2$ = ($CellContext`a$ $CellContext`b$) \
($CellContext`M2$/2); $CellContext`eanom$ = Mod[
           ReplaceAll[$CellContext`ea$, 
            
            FindRoot[$CellContext`M$ == $CellContext`ea$ - $CellContext`e$ 
              Sin[$CellContext`ea$], {$CellContext`ea$, $CellContext`M$}]], 2 
           Pi]; $CellContext`eanom2$ = Mod[
           ReplaceAll[$CellContext`ea$, 
            
            FindRoot[$CellContext`M2$ == $CellContext`ea$ - $CellContext`e$ 
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
             StringJoin["semi-major axis = ", 
              ToString[$CellContext`a$], " AU"]}]]], 
      "Specifications" :> {{{$CellContext`P$$, 1, "orbit period (years)"}, 
         0.1, 1, 0.01, Appearance -> "Labeled", ImageSize -> Tiny}}, 
      "Options" :> {AutorunSequencing -> {1, 2, 3}, ControlPlacement -> Left},
       "DefaultOptions" :> {}],
     ImageSizeCache->{639., {203., 210.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, {2}]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Kepler\[CloseCurlyQuote]s Second Law", "Subchapter"],

Cell[TextData[{
 "So the first and third laws can be thought of as describing the size and \
shape of the orbit.  There\[CloseCurlyQuote]s a little bit in the third law \
about motion, but we\[CloseCurlyQuote]ll save that for a more advanced \
module.  The second law provided a critical insight that was key for Newton \
when he was developing his laws of gravity.  The second law reads:\n\n",
 StyleBox["\t2. A line segment joining a planet and the Sun sweeps out equal \
areas during equal time intervals.\n\t\nThis is the law that says a planet in \
an elliptical orbit will move faster as it gets closer to the Sun, and then \
it will move slower as it gets further away.  In the widget below, select a \
large eccentricity like 0.6, and select a \[OpenCurlyDoubleQuote]time span\
\[CloseCurlyDoubleQuote] that gives you decent size blue section.  Now click \
on the \[OpenCurlyDoubleQuote]Play\[CloseCurlyDoubleQuote] button and watch \
what happens as the planet goes around the Sun.  The key here is that the \
area of the blue section remains constant.  This was a huge insight!", "Item"]
}], "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"a", "=", "1"}], ",", "b", ",", "c", ",", "planet", ",", 
       "dist", ",", "M", ",", "M2", ",", "area", ",", "area2", ",", "ea", ",",
        "eanom", ",", "eanom2", ",", "p"}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"t", ">", "P"}], ",", 
        RowBox[{"t", "=", "P"}]}], "]"}], ";", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"dt", ">", "P"}], ",", 
        RowBox[{"dt", "=", "P"}]}], "]"}], ";", "\[IndentingNewLine]", 
      RowBox[{"b", "=", 
       RowBox[{"Sqrt", "[", 
        RowBox[{
         RowBox[{"-", 
          RowBox[{"a", "^", "2"}]}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"e", "^", "2"}], "-", "1"}], ")"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"c", "=", 
       RowBox[{"e", " ", "a"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"M", "=", 
       RowBox[{"2", " ", "Pi", " ", 
        RowBox[{"t", "/", "P"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"M2", "=", 
       RowBox[{"2", " ", "Pi", " ", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"t", "+", "dt"}], ")"}], "/", "P"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"area", "=", 
       RowBox[{"a", " ", "b", " ", 
        RowBox[{"M", "/", "2"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"area2", "=", 
       RowBox[{"a", " ", "b", " ", 
        RowBox[{"M2", "/", "2"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"eanom", "=", 
       RowBox[{"Mod", "[", 
        RowBox[{
         RowBox[{"ea", "/.", 
          RowBox[{"FindRoot", "[", 
           RowBox[{
            RowBox[{"M", "\[Equal]", 
             RowBox[{"ea", "-", 
              RowBox[{"e", " ", 
               RowBox[{"Sin", "[", "ea", "]"}]}]}]}], ",", 
            RowBox[{"{", 
             RowBox[{"ea", ",", "M"}], "}"}]}], "]"}]}], ",", 
         RowBox[{"2", " ", "Pi"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"eanom2", "=", 
       RowBox[{"Mod", "[", 
        RowBox[{
         RowBox[{"ea", "/.", 
          RowBox[{"FindRoot", "[", 
           RowBox[{
            RowBox[{"M2", "\[Equal]", 
             RowBox[{"ea", "-", 
              RowBox[{"e", " ", 
               RowBox[{"Sin", "[", "ea", "]"}]}]}]}], ",", 
            RowBox[{"{", 
             RowBox[{"ea", ",", "M2"}], "}"}]}], "]"}]}], ",", 
         RowBox[{"2", " ", "Pi"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"eanom2", "<", "eanom"}], ",", 
        RowBox[{"eanom2", "=", 
         RowBox[{
          RowBox[{"2", " ", "Pi"}], "+", "eanom2"}]}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"p", "=", 
       RowBox[{
        RowBox[{"b", "^", "2"}], "/", "a"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"planet", "=", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{
          RowBox[{"a", " ", 
           RowBox[{"Cos", "[", "eanom", "]"}]}], "-", "c"}], ",", 
         RowBox[{"b", " ", 
          RowBox[{"Sin", "[", "eanom", "]"}]}]}], "}"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"Graphics", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"RGBColor", "[", 
           RowBox[{".3", ",", ".3", ",", ".7"}], "]"}], ",", 
          RowBox[{"Thickness", "[", ".005", "]"}], ",", 
          RowBox[{"Polygon", "[", 
           RowBox[{"Join", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"0", ",", "0"}], "}"}], ",", 
              RowBox[{"Sequence", "@@", 
               RowBox[{"Table", "[", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"a", " ", 
                    RowBox[{"Cos", "[", "angle", "]"}]}], "-", "c"}], ",", 
                   RowBox[{"b", " ", 
                    RowBox[{"Sin", "[", "angle", "]"}]}]}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"angle", ",", "eanom", ",", "eanom2", ",", ".001"}],
                   "}"}]}], "]"}]}], ",", 
              RowBox[{"{", 
               RowBox[{"0", ",", "0"}], "}"}]}], "}"}], "]"}], "]"}], ",", 
          RowBox[{"RGBColor", "[", 
           RowBox[{".05", ",", "0.6", ",", "1"}], "]"}], ",", 
          RowBox[{"Thickness", "[", ".009", "]"}], ",", 
          RowBox[{"Circle", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "c"}], ",", "0"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"a", ",", "b"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", 
              RowBox[{"2", " ", "Pi"}]}], "}"}]}], "]"}]}], "}"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "1.1"}], "-", "c"}], ",", 
             RowBox[{"1.1", "-", "c"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "1.1"}], ",", "1.1"}], "}"}]}], "}"}]}], ",", 
        RowBox[{"Epilog", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"RGBColor", "[", 
            RowBox[{"1", ",", "0.7", ",", "0"}], "]"}], ",", 
           RowBox[{"Disk", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"0", ",", "0"}], "}"}], ",", ".05"}], "]"}], ",", 
           RowBox[{"RGBColor", "[", 
            RowBox[{".77", ",", ".29", ",", ".55"}], "]"}], ",", 
           RowBox[{"PointSize", "[", ".02", "]"}], ",", 
           RowBox[{"Point", "[", "planet", "]"}]}], "}"}]}], ",", 
        RowBox[{"ImageSize", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"350", ",", "350"}], "}"}]}], ",", 
        RowBox[{"AspectRatio", "\[Rule]", "1"}], ",", 
        RowBox[{"Axes", "\[Rule]", "False"}], ",", 
        RowBox[{"PlotLabel", "\[Rule]", 
         RowBox[{"Row", "[", 
          RowBox[{"{", 
           RowBox[{"\"\<area = \>\"", "<>", 
            RowBox[{"ToString", "[", 
             RowBox[{"NumberForm", "[", 
              RowBox[{
               RowBox[{"area2", "-", "area"}], ",", 
               RowBox[{"{", 
                RowBox[{"4", ",", "2"}], "}"}]}], "]"}], "]"}], "<>", 
            "\"\< \!\(\*SuperscriptBox[\(AU\), \(2\)]\)\>\""}], "}"}], 
          "]"}]}]}], "]"}]}]}], "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"t", ",", "0", ",", "\"\<time since perihelion (years)\>\""}], 
      "}"}], ",", "0", ",", "P", ",", ".01", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
     RowBox[{"ImageSize", "\[Rule]", "Tiny"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"e", ",", ".5", ",", "\"\<eccentricity\>\""}], "}"}], ",", "0", 
     ",", ".9", ",", ".01", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
     RowBox[{"ImageSize", "\[Rule]", "Tiny"}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"P", ",", "20", ",", "\"\<orbit period (years)\>\""}], "}"}], 
     ",", "0.1", ",", " ", "50", ",", " ", "0.01", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
     RowBox[{"ImageSize", "\[Rule]", "Tiny"}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"dt", ",", "5", ",", "\"\<time span (years)\>\""}], "}"}], ",", 
     ".1", ",", "P", ",", ".01", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
     RowBox[{"ImageSize", "\[Rule]", "Tiny"}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"t", ",", "0", ",", "\"\<animate time since perihelion\>\""}], 
      "}"}], ",", "0", ",", "P", ",", ".01", ",", 
     RowBox[{"ControlType", "\[Rule]", "Trigger"}]}], "}"}], ",", 
   RowBox[{"AutorunSequencing", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"1", ",", "2", ",", "3"}], "}"}]}], ",", 
   RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "]"}]], "Input"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`dt$$ = 0.1, $CellContext`e$$ = 
    0.59, $CellContext`P$$ = 6.83, $CellContext`t$$ = 0., Typeset`show$$ = 
    True, Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
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
    350., {173., 177.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`t$38466$$ = 
    0, $CellContext`e$38467$$ = 0, $CellContext`P$38468$$ = 
    0, $CellContext`dt$38469$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`dt$$ = 5, $CellContext`e$$ = 
        0.5, $CellContext`P$$ = 20, $CellContext`t$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`t$$, $CellContext`t$38466$$, 0], 
        Hold[$CellContext`e$$, $CellContext`e$38467$$, 0], 
        Hold[$CellContext`P$$, $CellContext`P$38468$$, 0], 
        Hold[$CellContext`dt$$, $CellContext`dt$38469$$, 0]}, 
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
$CellContext`M$ = (2 
           Pi) ($CellContext`t$$/$CellContext`P$$); $CellContext`M2$ = (2 
           Pi) (($CellContext`t$$ + $CellContext`dt$$)/$CellContext`P$$); \
$CellContext`area$ = ($CellContext`a$ $CellContext`b$) ($CellContext`M$/
           2); $CellContext`area2$ = ($CellContext`a$ $CellContext`b$) \
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
     ImageSizeCache->{691., {203., 210.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, {2}]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Orientation of the Orbital Plane", "Chapter"],

Cell["\<\
In the last section, we looked at the shape of the orbit (semi-major axis and \
eccentricity) as well as what the motion looks like along the ellipse.  In \
this section, we\[CloseCurlyQuote]ll look at the orientation of the orbit and \
put it all together.\
\>", "Text"],

Cell[CellGroupData[{

Cell["Inclination", "Subchapter"],

Cell["\<\
Orbital inclination is the angle between the plane of the orbit and some \
other reference plane.  In the last section, we were thinking about planetary \
orbits, but in this section we\[CloseCurlyQuote]ll start thinking a little \
closer to home.  For a satellite orbiting the Earth, the typical reference \
plane is the equatorial plane.  The motion of a satellite that has an \
inclination of 0 degrees will be in equatorial plane like the below graphic.  \
The eccentricity of this orbit is 0.6 (let\[CloseCurlyQuote]s give it a \
little character), and the tan square represents the equatorial plane.  \
Rotate the picture a bit and you\[CloseCurlyQuote]ll see how plane of the \
orbit is completely in the plane of the equator.  Also, slide the \
\[OpenCurlyDoubleQuote]slider\[CloseCurlyDoubleQuote] to increase and \
decrease the value of inclination.\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Graphics3D", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Star", "[", 
        RowBox[{"\"\<Radius\>\"", "\[Rule]", 
         RowBox[{"1", "/", "10"}]}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Reference", "[", 
        RowBox[{"\"\<Radius\>\"", "\[Rule]", "1.8"}], " ", "]"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Body", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
          "1", ",", "0.6", ",", "i", ",", "0", ",", " ", "0", ",", " ", "0"}],
           "}"}], ",", 
         RowBox[{"\"\<Color\>\"", "\[Rule]", "Red"}], ",", 
         RowBox[{"\"\<Radius\>\"", "\[Rule]", 
          RowBox[{"1", "/", "13"}]}]}], "]"}]}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"ImageSize", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"400", ",", "400"}], "}"}]}], ",", 
     RowBox[{"Boxed", "\[Rule]", "False"}], ",", 
     RowBox[{"Axes", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"True", ",", "False", ",", "False"}], "}"}]}], ",", 
     RowBox[{"ImagePadding", "\[Rule]", "25"}]}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"i", ",", "0", ",", "\"\<inclination i\>\""}], "}"}], ",", 
     RowBox[{
      RowBox[{"-", "180"}], "\[Degree]"}], ",", 
     RowBox[{"180", "\[Degree]"}], ",", 
     RowBox[{"ImageSize", "\[Rule]", "Tiny"}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"ControlPlacement", "\[Rule]", "Left"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"SaveDefinitions", "\[Rule]", " ", "True"}]}], "]"}]], "Input"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`i$$ = 1.1938052083641217`, Typeset`show$$ = 
    True, Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`i$$], 0, "inclination i"}, (-180) Degree, 180 
      Degree}}, Typeset`size$$ = {400., {198., 202.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`i$1843$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`i$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`i$$, $CellContext`i$1843$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Graphics3D[{
         Star["Radius" -> 1/10], 
         $CellContext`Reference["Radius" -> 1.8], 
         $CellContext`Body[{1, 0.6, $CellContext`i$$, 0, 0, 0}, "Color" -> 
          Red, "Radius" -> 1/13]}, ImageSize -> {400, 400}, Boxed -> False, 
        Axes -> {True, False, False}, ImagePadding -> 25], 
      "Specifications" :> {{{$CellContext`i$$, 0, "inclination i"}, (-180) 
         Degree, 180 Degree, ImageSize -> Tiny}}, 
      "Options" :> {ControlPlacement -> Left}, "DefaultOptions" :> {}],
     ImageSizeCache->{604., {228., 235.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({Star[
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := {Yellow, 
         Sphere[{0, 0, 0}, 
          ReplaceAll[
           ReplaceAll["Radius", {$CellContext`opts}], "Radius" -> 
           0.1]]}, $CellContext`Reference[
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := With[{$CellContext`R = ReplaceAll[
            ReplaceAll["Radius", {$CellContext`opts}], "Radius" -> 
            GoldenRatio]}, {
          Line[{{0, 0, 0}, {$CellContext`R, 0, 0}}], 
          Opacity[0.5], 
          
          Polygon[{{-$CellContext`R, -$CellContext`R, 
             0}, {-$CellContext`R, $CellContext`R, 
             0}, {$CellContext`R, $CellContext`R, 
             0}, {$CellContext`R, -$CellContext`R, 
             0}, {-$CellContext`R, -$CellContext`R, 0}}]}], $CellContext`Body[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`i, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[CapitalOmega], 
           Blank[]], 
          Pattern[$CellContext`M, 
           Blank[]]}, 
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := ({
         $CellContext`Planet[#, $CellContext`opts], 
         $CellContext`Orbit[#, $CellContext`opts], 
         $CellContext`Plane[#, $CellContext`opts], 
         $CellContext`Geometry[#, $CellContext`opts]}& )[{$CellContext`a, \
$CellContext`e, $CellContext`i, $CellContext`\[Omega], $CellContext`\
\[CapitalOmega], $CellContext`M}], $CellContext`Planet[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`i, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[CapitalOmega], 
           Blank[]], 
          Pattern[$CellContext`M, 
           Blank[]]}, 
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := {
         ReplaceAll[
          ReplaceAll["Color", {$CellContext`opts}], "Color" -> Blue], 
         Sphere[
          $CellContext`xyz[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], $CellContext`M], 
          ReplaceAll[
           ReplaceAll["Radius", {$CellContext`opts}], "Radius" -> 
           0.1]]}, $CellContext`xyz = 
       Function[{$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], $CellContext`M}, \
{(($CellContext`a Cos[$CellContext`\[Omega]]) 
            Cos[$CellContext`\[CapitalOmega]]) (-$CellContext`e + 
            Cos[$CellContext`M + $CellContext`e 
               Sin[$CellContext`M + $CellContext`e 
                  Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]]) - ((($CellContext`a 
             Cos[$CellContext`i]) (-$CellContext`e + 
             Cos[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]])) Sin[$CellContext`\[Omega]]) 
          Sin[$CellContext`\[CapitalOmega]] - ((($CellContext`a 
             Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`\[CapitalOmega]]) 
           Sin[$CellContext`\[Omega]]) 
          Sin[$CellContext`M + $CellContext`e 
             Sin[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]] - (((($CellContext`a 
              Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`i]) 
            Cos[$CellContext`\[Omega]]) Sin[$CellContext`\[CapitalOmega]]) 
          Sin[$CellContext`M + $CellContext`e 
             Sin[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]], ((($CellContext`a 
              Cos[$CellContext`i]) 
             Cos[$CellContext`\[CapitalOmega]]) (-$CellContext`e + 
             Cos[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]])) 
           Sin[$CellContext`\[Omega]] + (($CellContext`a 
             Cos[$CellContext`\[Omega]]) (-$CellContext`e + 
             Cos[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]])) 
           Sin[$CellContext`\[CapitalOmega]] + (((($CellContext`a 
               Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`i]) 
             Cos[$CellContext`\[Omega]]) Cos[$CellContext`\[CapitalOmega]]) 
           Sin[$CellContext`M + $CellContext`e 
              Sin[$CellContext`M + $CellContext`e 
                 Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]] - ((($CellContext`a 
             Sqrt[1 - $CellContext`e^2]) Sin[$CellContext`\[Omega]]) 
           Sin[$CellContext`\[CapitalOmega]]) 
          Sin[$CellContext`M + $CellContext`e 
             Sin[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]], (($CellContext`a \
(-$CellContext`e + 
              Cos[$CellContext`M + $CellContext`e 
                 Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]])) Sin[$CellContext`i]) 
           Sin[$CellContext`\[Omega]] + ((($CellContext`a 
              Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`\[Omega]]) 
            Sin[$CellContext`i]) 
           Sin[$CellContext`M + $CellContext`e 
              Sin[$CellContext`M + $CellContext`e 
                 Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]]}], $CellContext`Orbit[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`i, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[CapitalOmega], 
           Blank[]], 
          Pattern[$CellContext`M, 
           Blank[]]}, 
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := {
         Thickness[0.005], 
         Line[
          Table[
           $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], $CellContext`\
\[CapitalEpsilon]], {$CellContext`\[CapitalEpsilon], 0, 2 Pi, 
            2 (Pi/33)}]]}, $CellContext`XYZ = 
       Function[{$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], $CellContext`\
\[CapitalEpsilon]}, {(($CellContext`a (-$CellContext`e + 
              Cos[$CellContext`\[CapitalEpsilon]])) 
            Cos[$CellContext`\[Omega]]) 
           Cos[$CellContext`\[CapitalOmega]] - ((($CellContext`a 
             Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`\[CapitalOmega]]) 
           Sin[$CellContext`\[CapitalEpsilon]]) 
          Sin[$CellContext`\[Omega]] - (((($CellContext`a 
              Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`i]) 
            Cos[$CellContext`\[Omega]]) Sin[$CellContext`\[CapitalEpsilon]]) 
          Sin[$CellContext`\[CapitalOmega]] - ((($CellContext`a 
             Cos[$CellContext`i]) (-$CellContext`e + 
             Cos[$CellContext`\[CapitalEpsilon]])) Sin[$CellContext`\[Omega]])
            Sin[$CellContext`\[CapitalOmega]], (((($CellContext`a 
               Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`i]) 
             Cos[$CellContext`\[Omega]]) Cos[$CellContext`\[CapitalOmega]]) 
           Sin[$CellContext`\[CapitalEpsilon]] + ((($CellContext`a 
              Cos[$CellContext`i]) (-$CellContext`e + 
              Cos[$CellContext`\[CapitalEpsilon]])) 
            Cos[$CellContext`\[CapitalOmega]]) 
           Sin[$CellContext`\[Omega]] + (($CellContext`a (-$CellContext`e + 
              Cos[$CellContext`\[CapitalEpsilon]])) 
            Cos[$CellContext`\[Omega]]) 
           Sin[$CellContext`\[CapitalOmega]] - ((($CellContext`a 
             Sqrt[1 - $CellContext`e^2]) Sin[$CellContext`\[CapitalEpsilon]]) 
           Sin[$CellContext`\[Omega]]) 
          Sin[$CellContext`\[CapitalOmega]], ((($CellContext`a 
              Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`\[Omega]]) 
            Sin[$CellContext`i]) 
           Sin[$CellContext`\[CapitalEpsilon]] + (($CellContext`a \
(-$CellContext`e + Cos[$CellContext`\[CapitalEpsilon]])) Sin[$CellContext`i]) 
           Sin[$CellContext`\[Omega]]}], $CellContext`\[CapitalEpsilon][
         Pattern[$CellContext`M, 
          Blank[]], 
         Pattern[$CellContext`e, 
          Blank[]]] = $CellContext`M + $CellContext`e 
         Sin[$CellContext`M + $CellContext`e 
            Sin[$CellContext`M + $CellContext`e 
               Sin[$CellContext`M + $CellContext`e 
                  Sin[$CellContext`M]]]], $CellContext`Plane[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`i, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[CapitalOmega], 
           Blank[]], 
          Pattern[$CellContext`M, 
           Blank[]]}, 
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := {
         ReplaceAll[
          ReplaceAll["Color", {$CellContext`opts}], "Color" -> Blue], 
         Opacity[0.5], 
         Polygon[
          Table[
           $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], $CellContext`\
\[CapitalEpsilon]], {$CellContext`\[CapitalEpsilon], 0, 2 Pi, 
            2 (Pi/33)}]]}, $CellContext`Geometry[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`i, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[CapitalOmega], 
           Blank[]], 
          Pattern[$CellContext`M, 
           Blank[]]}, 
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := {
         Line[{{
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 0], 
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 180 Degree]}, {
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 90 Degree], 
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 270 Degree]}, {
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 0 Degree], 
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 90 Degree]}}]}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, {2}]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Argument of Perigee", "Subchapter"],

Cell[TextData[{
 "The argument of perigee is fairly straightforward, but some clean \
definitions and a visualization or two will help.  Firstly, what\
\[CloseCurlyQuote]s perigee?  This is the closest point the satellite gets to \
the Earth and is located on the major axis (remember the discussion on major \
and minor axes?).  So imagine a line going from the center of the Earth to \
the perigee of the orbit (part of the \[OpenCurlyDoubleQuote]line of apsides\
\[CloseCurlyDoubleQuote]).  The argument of perigee is the angle measured in \
the plane of the orbit between the equatorial plane and the line extending to \
perigee.  Let\[CloseCurlyQuote]s break it out into pieces:\n\n\t",
 StyleBox["The argument of perigee is measured in the plane of the orbit.\n\t\
The argument of perigee is referenced at the reference plane (the equator in \
our case).\n\tThe argument of perigee identifies the line of apsides relative \
to the reference plane.", "Item"],
 "\n\nWe need pictures, so let\[CloseCurlyQuote]s give the orbit a little \
more character.  Consider the graphic below where the eccentricity is 0.6, \
inclination is 45 degrees.  We\[CloseCurlyQuote]ve put the spacecraft at \
perigee.  Using the slider bar on the left, change the values for argument of \
perigee and observe the impact of the orbit.  What happens when the value is \
zero?"
}], "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Graphics3D", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Star", "[", 
        RowBox[{"\"\<Radius\>\"", "\[Rule]", 
         RowBox[{"1", "/", "10"}]}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Reference", "[", 
        RowBox[{"\"\<Radius\>\"", "\[Rule]", "1.8"}], " ", "]"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Body", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
          "1", ",", "0.6", ",", "45", ",", "\[Omega]", ",", " ", "0", ",", 
           " ", "0"}], "}"}], ",", 
         RowBox[{"\"\<Color\>\"", "\[Rule]", "Red"}], ",", 
         RowBox[{"\"\<Radius\>\"", "\[Rule]", 
          RowBox[{"1", "/", "13"}]}]}], "]"}]}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"ImageSize", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"400", ",", "400"}], "}"}]}], ",", 
     RowBox[{"Boxed", "\[Rule]", "False"}], ",", 
     RowBox[{"Axes", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"True", ",", "False", ",", "False"}], "}"}]}], ",", 
     RowBox[{"ImagePadding", "\[Rule]", "25"}]}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "\[Omega]", ",", "0", ",", "\"\<arg of periapsis \[Omega]\>\""}], "}"}],
      ",", "0", ",", 
     RowBox[{"360", "\[Degree]"}], ",", 
     RowBox[{"ImageSize", "\[Rule]", "Tiny"}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"ControlPlacement", "\[Rule]", "Left"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"SaveDefinitions", "\[Rule]", " ", "True"}]}], "]"}]], "Input"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`\[Omega]$$ = 3.518583772020569, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`\[Omega]$$], 0, "arg of periapsis \[Omega]"}, 0, 360 
      Degree}}, Typeset`size$$ = {400., {198., 202.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`\[Omega]$2425$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`\[Omega]$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`\[Omega]$$, $CellContext`\[Omega]$2425$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Graphics3D[{
         Star["Radius" -> 1/10], 
         $CellContext`Reference["Radius" -> 1.8], 
         $CellContext`Body[{1, 0.6, 45, $CellContext`\[Omega]$$, 0, 0}, 
          "Color" -> Red, "Radius" -> 1/13]}, ImageSize -> {400, 400}, Boxed -> 
        False, Axes -> {True, False, False}, ImagePadding -> 25], 
      "Specifications" :> {{{$CellContext`\[Omega]$$, 0, 
          "arg of periapsis \[Omega]"}, 0, 360 Degree, ImageSize -> Tiny}}, 
      "Options" :> {ControlPlacement -> Left}, "DefaultOptions" :> {}],
     ImageSizeCache->{635., {228., 235.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({Star[
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := {Yellow, 
         Sphere[{0, 0, 0}, 
          ReplaceAll[
           ReplaceAll["Radius", {$CellContext`opts}], "Radius" -> 
           0.1]]}, $CellContext`Reference[
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := With[{$CellContext`R = ReplaceAll[
            ReplaceAll["Radius", {$CellContext`opts}], "Radius" -> 
            GoldenRatio]}, {
          Line[{{0, 0, 0}, {$CellContext`R, 0, 0}}], 
          Opacity[0.5], 
          
          Polygon[{{-$CellContext`R, -$CellContext`R, 
             0}, {-$CellContext`R, $CellContext`R, 
             0}, {$CellContext`R, $CellContext`R, 
             0}, {$CellContext`R, -$CellContext`R, 
             0}, {-$CellContext`R, -$CellContext`R, 0}}]}], $CellContext`Body[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`i, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[CapitalOmega], 
           Blank[]], 
          Pattern[$CellContext`M, 
           Blank[]]}, 
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := ({
         $CellContext`Planet[#, $CellContext`opts], 
         $CellContext`Orbit[#, $CellContext`opts], 
         $CellContext`Plane[#, $CellContext`opts], 
         $CellContext`Geometry[#, $CellContext`opts]}& )[{$CellContext`a, \
$CellContext`e, $CellContext`i, $CellContext`\[Omega], $CellContext`\
\[CapitalOmega], $CellContext`M}], $CellContext`Planet[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`i, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[CapitalOmega], 
           Blank[]], 
          Pattern[$CellContext`M, 
           Blank[]]}, 
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := {
         ReplaceAll[
          ReplaceAll["Color", {$CellContext`opts}], "Color" -> Blue], 
         Sphere[
          $CellContext`xyz[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], $CellContext`M], 
          ReplaceAll[
           ReplaceAll["Radius", {$CellContext`opts}], "Radius" -> 
           0.1]]}, $CellContext`xyz = 
       Function[{$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], $CellContext`M}, \
{(($CellContext`a Cos[$CellContext`\[Omega]]) 
            Cos[$CellContext`\[CapitalOmega]]) (-$CellContext`e + 
            Cos[$CellContext`M + $CellContext`e 
               Sin[$CellContext`M + $CellContext`e 
                  Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]]) - ((($CellContext`a 
             Cos[$CellContext`i]) (-$CellContext`e + 
             Cos[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]])) Sin[$CellContext`\[Omega]]) 
          Sin[$CellContext`\[CapitalOmega]] - ((($CellContext`a 
             Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`\[CapitalOmega]]) 
           Sin[$CellContext`\[Omega]]) 
          Sin[$CellContext`M + $CellContext`e 
             Sin[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]] - (((($CellContext`a 
              Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`i]) 
            Cos[$CellContext`\[Omega]]) Sin[$CellContext`\[CapitalOmega]]) 
          Sin[$CellContext`M + $CellContext`e 
             Sin[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]], ((($CellContext`a 
              Cos[$CellContext`i]) 
             Cos[$CellContext`\[CapitalOmega]]) (-$CellContext`e + 
             Cos[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]])) 
           Sin[$CellContext`\[Omega]] + (($CellContext`a 
             Cos[$CellContext`\[Omega]]) (-$CellContext`e + 
             Cos[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]])) 
           Sin[$CellContext`\[CapitalOmega]] + (((($CellContext`a 
               Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`i]) 
             Cos[$CellContext`\[Omega]]) Cos[$CellContext`\[CapitalOmega]]) 
           Sin[$CellContext`M + $CellContext`e 
              Sin[$CellContext`M + $CellContext`e 
                 Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]] - ((($CellContext`a 
             Sqrt[1 - $CellContext`e^2]) Sin[$CellContext`\[Omega]]) 
           Sin[$CellContext`\[CapitalOmega]]) 
          Sin[$CellContext`M + $CellContext`e 
             Sin[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]], (($CellContext`a \
(-$CellContext`e + 
              Cos[$CellContext`M + $CellContext`e 
                 Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]])) Sin[$CellContext`i]) 
           Sin[$CellContext`\[Omega]] + ((($CellContext`a 
              Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`\[Omega]]) 
            Sin[$CellContext`i]) 
           Sin[$CellContext`M + $CellContext`e 
              Sin[$CellContext`M + $CellContext`e 
                 Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]]}], $CellContext`Orbit[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`i, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[CapitalOmega], 
           Blank[]], 
          Pattern[$CellContext`M, 
           Blank[]]}, 
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := {
         Thickness[0.005], 
         Line[
          Table[
           $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], $CellContext`\
\[CapitalEpsilon]], {$CellContext`\[CapitalEpsilon], 0, 2 Pi, 
            2 (Pi/33)}]]}, $CellContext`XYZ = 
       Function[{$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], $CellContext`\
\[CapitalEpsilon]}, {(($CellContext`a (-$CellContext`e + 
              Cos[$CellContext`\[CapitalEpsilon]])) 
            Cos[$CellContext`\[Omega]]) 
           Cos[$CellContext`\[CapitalOmega]] - ((($CellContext`a 
             Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`\[CapitalOmega]]) 
           Sin[$CellContext`\[CapitalEpsilon]]) 
          Sin[$CellContext`\[Omega]] - (((($CellContext`a 
              Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`i]) 
            Cos[$CellContext`\[Omega]]) Sin[$CellContext`\[CapitalEpsilon]]) 
          Sin[$CellContext`\[CapitalOmega]] - ((($CellContext`a 
             Cos[$CellContext`i]) (-$CellContext`e + 
             Cos[$CellContext`\[CapitalEpsilon]])) Sin[$CellContext`\[Omega]])
            Sin[$CellContext`\[CapitalOmega]], (((($CellContext`a 
               Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`i]) 
             Cos[$CellContext`\[Omega]]) Cos[$CellContext`\[CapitalOmega]]) 
           Sin[$CellContext`\[CapitalEpsilon]] + ((($CellContext`a 
              Cos[$CellContext`i]) (-$CellContext`e + 
              Cos[$CellContext`\[CapitalEpsilon]])) 
            Cos[$CellContext`\[CapitalOmega]]) 
           Sin[$CellContext`\[Omega]] + (($CellContext`a (-$CellContext`e + 
              Cos[$CellContext`\[CapitalEpsilon]])) 
            Cos[$CellContext`\[Omega]]) 
           Sin[$CellContext`\[CapitalOmega]] - ((($CellContext`a 
             Sqrt[1 - $CellContext`e^2]) Sin[$CellContext`\[CapitalEpsilon]]) 
           Sin[$CellContext`\[Omega]]) 
          Sin[$CellContext`\[CapitalOmega]], ((($CellContext`a 
              Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`\[Omega]]) 
            Sin[$CellContext`i]) 
           Sin[$CellContext`\[CapitalEpsilon]] + (($CellContext`a \
(-$CellContext`e + Cos[$CellContext`\[CapitalEpsilon]])) Sin[$CellContext`i]) 
           Sin[$CellContext`\[Omega]]}], $CellContext`\[CapitalEpsilon][
         Pattern[$CellContext`M, 
          Blank[]], 
         Pattern[$CellContext`e, 
          Blank[]]] = $CellContext`M + $CellContext`e 
         Sin[$CellContext`M + $CellContext`e 
            Sin[$CellContext`M + $CellContext`e 
               Sin[$CellContext`M + $CellContext`e 
                  Sin[$CellContext`M]]]], $CellContext`Plane[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`i, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[CapitalOmega], 
           Blank[]], 
          Pattern[$CellContext`M, 
           Blank[]]}, 
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := {
         ReplaceAll[
          ReplaceAll["Color", {$CellContext`opts}], "Color" -> Blue], 
         Opacity[0.5], 
         Polygon[
          Table[
           $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], $CellContext`\
\[CapitalEpsilon]], {$CellContext`\[CapitalEpsilon], 0, 2 Pi, 
            2 (Pi/33)}]]}, $CellContext`Geometry[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`i, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[CapitalOmega], 
           Blank[]], 
          Pattern[$CellContext`M, 
           Blank[]]}, 
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := {
         Line[{{
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 0], 
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 180 Degree]}, {
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 90 Degree], 
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 270 Degree]}, {
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 0 Degree], 
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 90 Degree]}}]}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, {2}]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Right Ascension of the Ascending Node (RAAN)", "Subchapter"],

Cell[TextData[{
 "Similar to the argument of perigee, this part of the orientation of the \
orbital plane (pronounced \[OpenCurlyDoubleQuote]ran\[CloseCurlyDoubleQuote]) \
can be viewed as a rotation of the orbital plane about some axis.  In this \
case\n\n\t",
 StyleBox["RAAN is measured in the reference plane (the equator in our case).\
\n\tRAAN is referenced at an inertial direction (let\[CloseCurlyQuote]s not \
worry about that for now).\n", "Item"],
 "\nBut wait -- we haven\[CloseCurlyQuote]t defined the ascending node.  \
There are two \[OpenCurlyDoubleQuote]nodes\[CloseCurlyDoubleQuote] for an \
orbit.  The ascending node is the point on the orbit where the satellite \
crosses the equatorial plane from the \[OpenCurlyDoubleQuote]south to the \
north\[CloseCurlyDoubleQuote], and the descending node is where the satellite \
crosses the equatorial plane from \[OpenCurlyDoubleQuote]north to south\
\[CloseCurlyDoubleQuote].  As always, pictures help.  So \
let\[CloseCurlyQuote]s go back to our orbit where eccentricity is 0.6, \
inclination is 45 degrees, argument of perigee is 45 degrees, and the \
spacecraft is at the ascending node of the orbit.  Move the slider bar around \
to see how the orbit rotates.  The best perspective is to look directly \
\[OpenCurlyDoubleQuote]down\[CloseCurlyDoubleQuote] at the equatorial plane \
and then change the RAAN value."
}], "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Graphics3D", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Star", "[", 
        RowBox[{"\"\<Radius\>\"", "\[Rule]", 
         RowBox[{"1", "/", "10"}]}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Reference", "[", 
        RowBox[{"\"\<Radius\>\"", "\[Rule]", "1.8"}], " ", "]"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Body", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
          "1", ",", "0.6", ",", "45", ",", "45", ",", " ", "\[CapitalOmega]", 
           ",", " ", "6.03"}], "}"}], ",", 
         RowBox[{"\"\<Color\>\"", "\[Rule]", "Red"}], ",", 
         RowBox[{"\"\<Radius\>\"", "\[Rule]", 
          RowBox[{"1", "/", "13"}]}]}], "]"}]}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"ImageSize", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"400", ",", "400"}], "}"}]}], ",", 
     RowBox[{"Boxed", "\[Rule]", "False"}], ",", 
     RowBox[{"Axes", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"True", ",", "False", ",", "False"}], "}"}]}], ",", 
     RowBox[{"ImagePadding", "\[Rule]", "25"}]}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "\[CapitalOmega]", ",", "0", ",", "\"\<node \[CapitalOmega]\>\""}], 
      "}"}], ",", "0", ",", 
     RowBox[{"360", "\[Degree]"}], ",", 
     RowBox[{"ImageSize", "\[Rule]", "Tiny"}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"ControlPlacement", "\[Rule]", "Left"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"SaveDefinitions", "\[Rule]", " ", "True"}]}], "]"}]], "Input"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`\[CapitalOmega]$$ = 0.25132741228718347`, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`\[CapitalOmega]$$], 0, "node \[CapitalOmega]"}, 0, 
      360 Degree}}, Typeset`size$$ = {400., {198., 202.}}, Typeset`update$$ = 
    0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`\[CapitalOmega]$65705$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`\[CapitalOmega]$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`\[CapitalOmega]$$, \
$CellContext`\[CapitalOmega]$65705$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Graphics3D[{
         Star["Radius" -> 1/10], 
         $CellContext`Reference["Radius" -> 1.8], 
         $CellContext`Body[{
          1, 0.6, 45, 45, $CellContext`\[CapitalOmega]$$, 6.03}, "Color" -> 
          Red, "Radius" -> 1/13]}, ImageSize -> {400, 400}, Boxed -> False, 
        Axes -> {True, False, False}, ImagePadding -> 25], 
      "Specifications" :> {{{$CellContext`\[CapitalOmega]$$, 0, 
          "node \[CapitalOmega]"}, 0, 360 Degree, ImageSize -> Tiny}}, 
      "Options" :> {ControlPlacement -> Left}, "DefaultOptions" :> {}],
     ImageSizeCache->{581., {228., 235.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({Star[
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := {Yellow, 
         Sphere[{0, 0, 0}, 
          ReplaceAll[
           ReplaceAll["Radius", {$CellContext`opts}], "Radius" -> 
           0.1]]}, $CellContext`Reference[
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := With[{$CellContext`R = ReplaceAll[
            ReplaceAll["Radius", {$CellContext`opts}], "Radius" -> 
            GoldenRatio]}, {
          Line[{{0, 0, 0}, {$CellContext`R, 0, 0}}], 
          Opacity[0.5], 
          
          Polygon[{{-$CellContext`R, -$CellContext`R, 
             0}, {-$CellContext`R, $CellContext`R, 
             0}, {$CellContext`R, $CellContext`R, 
             0}, {$CellContext`R, -$CellContext`R, 
             0}, {-$CellContext`R, -$CellContext`R, 0}}]}], $CellContext`Body[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`i, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[CapitalOmega], 
           Blank[]], 
          Pattern[$CellContext`M, 
           Blank[]]}, 
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := ({
         $CellContext`Planet[#, $CellContext`opts], 
         $CellContext`Orbit[#, $CellContext`opts], 
         $CellContext`Plane[#, $CellContext`opts], 
         $CellContext`Geometry[#, $CellContext`opts]}& )[{$CellContext`a, \
$CellContext`e, $CellContext`i, $CellContext`\[Omega], $CellContext`\
\[CapitalOmega], $CellContext`M}], $CellContext`Planet[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`i, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[CapitalOmega], 
           Blank[]], 
          Pattern[$CellContext`M, 
           Blank[]]}, 
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := {
         ReplaceAll[
          ReplaceAll["Color", {$CellContext`opts}], "Color" -> Blue], 
         Sphere[
          $CellContext`xyz[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], $CellContext`M], 
          ReplaceAll[
           ReplaceAll["Radius", {$CellContext`opts}], "Radius" -> 
           0.1]]}, $CellContext`xyz = 
       Function[{$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], $CellContext`M}, \
{(($CellContext`a Cos[$CellContext`\[Omega]]) 
            Cos[$CellContext`\[CapitalOmega]]) (-$CellContext`e + 
            Cos[$CellContext`M + $CellContext`e 
               Sin[$CellContext`M + $CellContext`e 
                  Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]]) - ((($CellContext`a 
             Cos[$CellContext`i]) (-$CellContext`e + 
             Cos[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]])) Sin[$CellContext`\[Omega]]) 
          Sin[$CellContext`\[CapitalOmega]] - ((($CellContext`a 
             Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`\[CapitalOmega]]) 
           Sin[$CellContext`\[Omega]]) 
          Sin[$CellContext`M + $CellContext`e 
             Sin[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]] - (((($CellContext`a 
              Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`i]) 
            Cos[$CellContext`\[Omega]]) Sin[$CellContext`\[CapitalOmega]]) 
          Sin[$CellContext`M + $CellContext`e 
             Sin[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]], ((($CellContext`a 
              Cos[$CellContext`i]) 
             Cos[$CellContext`\[CapitalOmega]]) (-$CellContext`e + 
             Cos[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]])) 
           Sin[$CellContext`\[Omega]] + (($CellContext`a 
             Cos[$CellContext`\[Omega]]) (-$CellContext`e + 
             Cos[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]])) 
           Sin[$CellContext`\[CapitalOmega]] + (((($CellContext`a 
               Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`i]) 
             Cos[$CellContext`\[Omega]]) Cos[$CellContext`\[CapitalOmega]]) 
           Sin[$CellContext`M + $CellContext`e 
              Sin[$CellContext`M + $CellContext`e 
                 Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]] - ((($CellContext`a 
             Sqrt[1 - $CellContext`e^2]) Sin[$CellContext`\[Omega]]) 
           Sin[$CellContext`\[CapitalOmega]]) 
          Sin[$CellContext`M + $CellContext`e 
             Sin[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]], (($CellContext`a \
(-$CellContext`e + 
              Cos[$CellContext`M + $CellContext`e 
                 Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]])) Sin[$CellContext`i]) 
           Sin[$CellContext`\[Omega]] + ((($CellContext`a 
              Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`\[Omega]]) 
            Sin[$CellContext`i]) 
           Sin[$CellContext`M + $CellContext`e 
              Sin[$CellContext`M + $CellContext`e 
                 Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]]}], $CellContext`Orbit[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`i, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[CapitalOmega], 
           Blank[]], 
          Pattern[$CellContext`M, 
           Blank[]]}, 
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := {
         Thickness[0.005], 
         Line[
          Table[
           $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], $CellContext`\
\[CapitalEpsilon]], {$CellContext`\[CapitalEpsilon], 0, 2 Pi, 
            2 (Pi/33)}]]}, $CellContext`XYZ = 
       Function[{$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], $CellContext`\
\[CapitalEpsilon]}, {(($CellContext`a (-$CellContext`e + 
              Cos[$CellContext`\[CapitalEpsilon]])) 
            Cos[$CellContext`\[Omega]]) 
           Cos[$CellContext`\[CapitalOmega]] - ((($CellContext`a 
             Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`\[CapitalOmega]]) 
           Sin[$CellContext`\[CapitalEpsilon]]) 
          Sin[$CellContext`\[Omega]] - (((($CellContext`a 
              Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`i]) 
            Cos[$CellContext`\[Omega]]) Sin[$CellContext`\[CapitalEpsilon]]) 
          Sin[$CellContext`\[CapitalOmega]] - ((($CellContext`a 
             Cos[$CellContext`i]) (-$CellContext`e + 
             Cos[$CellContext`\[CapitalEpsilon]])) Sin[$CellContext`\[Omega]])
            Sin[$CellContext`\[CapitalOmega]], (((($CellContext`a 
               Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`i]) 
             Cos[$CellContext`\[Omega]]) Cos[$CellContext`\[CapitalOmega]]) 
           Sin[$CellContext`\[CapitalEpsilon]] + ((($CellContext`a 
              Cos[$CellContext`i]) (-$CellContext`e + 
              Cos[$CellContext`\[CapitalEpsilon]])) 
            Cos[$CellContext`\[CapitalOmega]]) 
           Sin[$CellContext`\[Omega]] + (($CellContext`a (-$CellContext`e + 
              Cos[$CellContext`\[CapitalEpsilon]])) 
            Cos[$CellContext`\[Omega]]) 
           Sin[$CellContext`\[CapitalOmega]] - ((($CellContext`a 
             Sqrt[1 - $CellContext`e^2]) Sin[$CellContext`\[CapitalEpsilon]]) 
           Sin[$CellContext`\[Omega]]) 
          Sin[$CellContext`\[CapitalOmega]], ((($CellContext`a 
              Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`\[Omega]]) 
            Sin[$CellContext`i]) 
           Sin[$CellContext`\[CapitalEpsilon]] + (($CellContext`a \
(-$CellContext`e + Cos[$CellContext`\[CapitalEpsilon]])) Sin[$CellContext`i]) 
           Sin[$CellContext`\[Omega]]}], $CellContext`\[CapitalEpsilon][
         Pattern[$CellContext`M, 
          Blank[]], 
         Pattern[$CellContext`e, 
          Blank[]]] = $CellContext`M + $CellContext`e 
         Sin[$CellContext`M + $CellContext`e 
            Sin[$CellContext`M + $CellContext`e 
               Sin[$CellContext`M + $CellContext`e 
                  Sin[$CellContext`M]]]], $CellContext`Plane[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`i, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[CapitalOmega], 
           Blank[]], 
          Pattern[$CellContext`M, 
           Blank[]]}, 
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := {
         ReplaceAll[
          ReplaceAll["Color", {$CellContext`opts}], "Color" -> Blue], 
         Opacity[0.5], 
         Polygon[
          Table[
           $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], $CellContext`\
\[CapitalEpsilon]], {$CellContext`\[CapitalEpsilon], 0, 2 Pi, 
            2 (Pi/33)}]]}, $CellContext`Geometry[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`i, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[CapitalOmega], 
           Blank[]], 
          Pattern[$CellContext`M, 
           Blank[]]}, 
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := {
         Line[{{
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 0], 
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 180 Degree]}, {
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 90 Degree], 
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 270 Degree]}, {
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 0 Degree], 
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 90 Degree]}}]}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, {2}]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Mean Anomaly", "Subchapter"],

Cell[TextData[{
 "So we\[CloseCurlyQuote]ve addressed the shape (semi-major axis and \
eccentricity) and the orientation of the orbital plane (inclination, argument \
of perigee, RAAN).  The last piece is where the satellite is in the orbit.  \
This is related to what we learned from Kepler\[CloseCurlyQuote]s Second Law \
of Planetary Motion.  The reference for this angle is the line we defined for \
the argument of perigee.  Specifically:\n\n\t",
 StyleBox["Mean anomaly is measured in the orbital plane.\n\tMean anomaly is \
referenced to the line of apsides.\n\tMean anomaly is zero when the \
spacecraft is at perigee.", "Item"],
 "\n\nTo keep this simple, we won\[CloseCurlyQuote]t dive into any more \
specifics of how this is defined relative to other angles like true anomaly \
and eccentric anomaly.  So let\[CloseCurlyQuote]s return to our most recent \
orbit.  The eccentricity is 0.6, inclination is 45 degrees, argument of \
perigee is 45 degrees, RAAN is 45, and the spacecraft is at perigee (mean \
anomaly is zero)."
}], "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Graphics3D", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Star", "[", 
        RowBox[{"\"\<Radius\>\"", "\[Rule]", 
         RowBox[{"1", "/", "10"}]}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Reference", "[", 
        RowBox[{"\"\<Radius\>\"", "\[Rule]", "1.8"}], " ", "]"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Body", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
          "1", ",", "0.6", ",", "45", ",", "45", ",", " ", "45", ",", " ", 
           "M"}], "}"}], ",", 
         RowBox[{"\"\<Color\>\"", "\[Rule]", "Red"}], ",", 
         RowBox[{"\"\<Radius\>\"", "\[Rule]", 
          RowBox[{"1", "/", "13"}]}]}], "]"}]}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"ImageSize", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"400", ",", "400"}], "}"}]}], ",", 
     RowBox[{"Boxed", "\[Rule]", "False"}], ",", 
     RowBox[{"Axes", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"True", ",", "False", ",", "False"}], "}"}]}], ",", 
     RowBox[{"ImagePadding", "\[Rule]", "25"}]}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"M", ",", "0", ",", "\"\<mean anomaly M\>\""}], "}"}], ",", "0",
      ",", 
     RowBox[{"360", "\[Degree]"}], ",", 
     RowBox[{"ImageSize", "\[Rule]", "Tiny"}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"ControlPlacement", "\[Rule]", "Left"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"SaveDefinitions", "\[Rule]", " ", "True"}]}], "]"}]], "Input"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`M$$ = 0., Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`M$$], 0, "mean anomaly M"}, 0, 360 Degree}}, 
    Typeset`size$$ = {400., {198., 202.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`M$2640$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`M$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`M$$, $CellContext`M$2640$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Graphics3D[{
         Star["Radius" -> 1/10], 
         $CellContext`Reference["Radius" -> 1.8], 
         $CellContext`Body[{1, 0.6, 45, 45, 45, $CellContext`M$$}, "Color" -> 
          Red, "Radius" -> 1/13]}, ImageSize -> {400, 400}, Boxed -> False, 
        Axes -> {True, False, False}, ImagePadding -> 25], 
      "Specifications" :> {{{$CellContext`M$$, 0, "mean anomaly M"}, 0, 360 
         Degree, ImageSize -> Tiny}}, "Options" :> {ControlPlacement -> Left},
       "DefaultOptions" :> {}],
     ImageSizeCache->{630., {228., 235.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({Star[
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := {Yellow, 
         Sphere[{0, 0, 0}, 
          ReplaceAll[
           ReplaceAll["Radius", {$CellContext`opts}], "Radius" -> 
           0.1]]}, $CellContext`Reference[
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := With[{$CellContext`R = ReplaceAll[
            ReplaceAll["Radius", {$CellContext`opts}], "Radius" -> 
            GoldenRatio]}, {
          Line[{{0, 0, 0}, {$CellContext`R, 0, 0}}], 
          Opacity[0.5], 
          
          Polygon[{{-$CellContext`R, -$CellContext`R, 
             0}, {-$CellContext`R, $CellContext`R, 
             0}, {$CellContext`R, $CellContext`R, 
             0}, {$CellContext`R, -$CellContext`R, 
             0}, {-$CellContext`R, -$CellContext`R, 0}}]}], $CellContext`Body[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`i, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[CapitalOmega], 
           Blank[]], 
          Pattern[$CellContext`M, 
           Blank[]]}, 
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := ({
         $CellContext`Planet[#, $CellContext`opts], 
         $CellContext`Orbit[#, $CellContext`opts], 
         $CellContext`Plane[#, $CellContext`opts], 
         $CellContext`Geometry[#, $CellContext`opts]}& )[{$CellContext`a, \
$CellContext`e, $CellContext`i, $CellContext`\[Omega], $CellContext`\
\[CapitalOmega], $CellContext`M}], $CellContext`Planet[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`i, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[CapitalOmega], 
           Blank[]], 
          Pattern[$CellContext`M, 
           Blank[]]}, 
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := {
         ReplaceAll[
          ReplaceAll["Color", {$CellContext`opts}], "Color" -> Blue], 
         Sphere[
          $CellContext`xyz[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], $CellContext`M], 
          ReplaceAll[
           ReplaceAll["Radius", {$CellContext`opts}], "Radius" -> 
           0.1]]}, $CellContext`xyz = 
       Function[{$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], $CellContext`M}, \
{(($CellContext`a Cos[$CellContext`\[Omega]]) 
            Cos[$CellContext`\[CapitalOmega]]) (-$CellContext`e + 
            Cos[$CellContext`M + $CellContext`e 
               Sin[$CellContext`M + $CellContext`e 
                  Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]]) - ((($CellContext`a 
             Cos[$CellContext`i]) (-$CellContext`e + 
             Cos[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]])) Sin[$CellContext`\[Omega]]) 
          Sin[$CellContext`\[CapitalOmega]] - ((($CellContext`a 
             Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`\[CapitalOmega]]) 
           Sin[$CellContext`\[Omega]]) 
          Sin[$CellContext`M + $CellContext`e 
             Sin[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]] - (((($CellContext`a 
              Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`i]) 
            Cos[$CellContext`\[Omega]]) Sin[$CellContext`\[CapitalOmega]]) 
          Sin[$CellContext`M + $CellContext`e 
             Sin[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]], ((($CellContext`a 
              Cos[$CellContext`i]) 
             Cos[$CellContext`\[CapitalOmega]]) (-$CellContext`e + 
             Cos[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]])) 
           Sin[$CellContext`\[Omega]] + (($CellContext`a 
             Cos[$CellContext`\[Omega]]) (-$CellContext`e + 
             Cos[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]])) 
           Sin[$CellContext`\[CapitalOmega]] + (((($CellContext`a 
               Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`i]) 
             Cos[$CellContext`\[Omega]]) Cos[$CellContext`\[CapitalOmega]]) 
           Sin[$CellContext`M + $CellContext`e 
              Sin[$CellContext`M + $CellContext`e 
                 Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]] - ((($CellContext`a 
             Sqrt[1 - $CellContext`e^2]) Sin[$CellContext`\[Omega]]) 
           Sin[$CellContext`\[CapitalOmega]]) 
          Sin[$CellContext`M + $CellContext`e 
             Sin[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]], (($CellContext`a \
(-$CellContext`e + 
              Cos[$CellContext`M + $CellContext`e 
                 Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]])) Sin[$CellContext`i]) 
           Sin[$CellContext`\[Omega]] + ((($CellContext`a 
              Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`\[Omega]]) 
            Sin[$CellContext`i]) 
           Sin[$CellContext`M + $CellContext`e 
              Sin[$CellContext`M + $CellContext`e 
                 Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]]}], $CellContext`Orbit[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`i, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[CapitalOmega], 
           Blank[]], 
          Pattern[$CellContext`M, 
           Blank[]]}, 
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := {
         Thickness[0.005], 
         Line[
          Table[
           $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], $CellContext`\
\[CapitalEpsilon]], {$CellContext`\[CapitalEpsilon], 0, 2 Pi, 
            2 (Pi/33)}]]}, $CellContext`XYZ = 
       Function[{$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], $CellContext`\
\[CapitalEpsilon]}, {(($CellContext`a (-$CellContext`e + 
              Cos[$CellContext`\[CapitalEpsilon]])) 
            Cos[$CellContext`\[Omega]]) 
           Cos[$CellContext`\[CapitalOmega]] - ((($CellContext`a 
             Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`\[CapitalOmega]]) 
           Sin[$CellContext`\[CapitalEpsilon]]) 
          Sin[$CellContext`\[Omega]] - (((($CellContext`a 
              Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`i]) 
            Cos[$CellContext`\[Omega]]) Sin[$CellContext`\[CapitalEpsilon]]) 
          Sin[$CellContext`\[CapitalOmega]] - ((($CellContext`a 
             Cos[$CellContext`i]) (-$CellContext`e + 
             Cos[$CellContext`\[CapitalEpsilon]])) Sin[$CellContext`\[Omega]])
            Sin[$CellContext`\[CapitalOmega]], (((($CellContext`a 
               Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`i]) 
             Cos[$CellContext`\[Omega]]) Cos[$CellContext`\[CapitalOmega]]) 
           Sin[$CellContext`\[CapitalEpsilon]] + ((($CellContext`a 
              Cos[$CellContext`i]) (-$CellContext`e + 
              Cos[$CellContext`\[CapitalEpsilon]])) 
            Cos[$CellContext`\[CapitalOmega]]) 
           Sin[$CellContext`\[Omega]] + (($CellContext`a (-$CellContext`e + 
              Cos[$CellContext`\[CapitalEpsilon]])) 
            Cos[$CellContext`\[Omega]]) 
           Sin[$CellContext`\[CapitalOmega]] - ((($CellContext`a 
             Sqrt[1 - $CellContext`e^2]) Sin[$CellContext`\[CapitalEpsilon]]) 
           Sin[$CellContext`\[Omega]]) 
          Sin[$CellContext`\[CapitalOmega]], ((($CellContext`a 
              Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`\[Omega]]) 
            Sin[$CellContext`i]) 
           Sin[$CellContext`\[CapitalEpsilon]] + (($CellContext`a \
(-$CellContext`e + Cos[$CellContext`\[CapitalEpsilon]])) Sin[$CellContext`i]) 
           Sin[$CellContext`\[Omega]]}], $CellContext`\[CapitalEpsilon][
         Pattern[$CellContext`M, 
          Blank[]], 
         Pattern[$CellContext`e, 
          Blank[]]] = $CellContext`M + $CellContext`e 
         Sin[$CellContext`M + $CellContext`e 
            Sin[$CellContext`M + $CellContext`e 
               Sin[$CellContext`M + $CellContext`e 
                  Sin[$CellContext`M]]]], $CellContext`Plane[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`i, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[CapitalOmega], 
           Blank[]], 
          Pattern[$CellContext`M, 
           Blank[]]}, 
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := {
         ReplaceAll[
          ReplaceAll["Color", {$CellContext`opts}], "Color" -> Blue], 
         Opacity[0.5], 
         Polygon[
          Table[
           $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], $CellContext`\
\[CapitalEpsilon]], {$CellContext`\[CapitalEpsilon], 0, 2 Pi, 
            2 (Pi/33)}]]}, $CellContext`Geometry[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`i, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[CapitalOmega], 
           Blank[]], 
          Pattern[$CellContext`M, 
           Blank[]]}, 
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := {
         Line[{{
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 0], 
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 180 Degree]}, {
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 90 Degree], 
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 270 Degree]}, {
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 0 Degree], 
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 90 Degree]}}]}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, {2}]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Putting it All Together", "Chapter"],

Cell["\<\
We\[CloseCurlyQuote]ve described each of the Keplerian elements that are \
collectively used to uniquely describe any orbit.  The next step is to play \
with the elements and try different combinations yourself.\[LineSeparator]\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Graphics3D", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Star", "[", 
        RowBox[{"\"\<Radius\>\"", "\[Rule]", 
         RowBox[{"1", "/", "10"}]}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Reference", "[", 
        RowBox[{"\"\<Radius\>\"", "\[Rule]", "1.8"}], " ", "]"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Body", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
          "a", ",", "e", ",", "i", ",", "\[Omega]", ",", "\[CapitalOmega]", 
           ",", "M"}], "}"}], ",", 
         RowBox[{"\"\<Color\>\"", "\[Rule]", "Red"}], ",", 
         RowBox[{"\"\<Radius\>\"", "\[Rule]", 
          RowBox[{"1", "/", "13"}]}]}], "]"}]}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"ImageSize", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"400", ",", "400"}], "}"}]}], ",", 
     RowBox[{"Boxed", "\[Rule]", "False"}], ",", 
     RowBox[{"Axes", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"True", ",", "False", ",", "False"}], "}"}]}], ",", 
     RowBox[{"ImagePadding", "\[Rule]", "25"}]}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"a", ",", "0.5", ",", "\"\<semi-major axis a\>\""}], "}"}], ",",
      "0.1", ",", "1", ",", 
     RowBox[{"ImageSize", "\[Rule]", "Tiny"}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"e", ",", "0", ",", "\"\<eccentricity e\>\""}], "}"}], ",", "0",
      ",", "0.99", ",", 
     RowBox[{"ImageSize", "\[Rule]", "Tiny"}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"i", ",", "0", ",", "\"\<inclination i\>\""}], "}"}], ",", 
     RowBox[{
      RowBox[{"-", "180"}], "\[Degree]"}], ",", 
     RowBox[{"180", "\[Degree]"}], ",", 
     RowBox[{"ImageSize", "\[Rule]", "Tiny"}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "\[Omega]", ",", "0", ",", "\"\<arg of periapsis \[Omega]\>\""}], "}"}],
      ",", "0", ",", 
     RowBox[{"360", "\[Degree]"}], ",", 
     RowBox[{"ImageSize", "\[Rule]", "Tiny"}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "\[CapitalOmega]", ",", "0", ",", "\"\<node \[CapitalOmega]\>\""}], 
      "}"}], ",", "0", ",", 
     RowBox[{"360", "\[Degree]"}], ",", 
     RowBox[{"ImageSize", "\[Rule]", "Tiny"}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"M", ",", "0", ",", "\"\<mean anomaly M\>\""}], "}"}], ",", "0",
      ",", 
     RowBox[{"360", "\[Degree]"}], ",", 
     RowBox[{"ImageSize", "\[Rule]", "Tiny"}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"ControlPlacement", "\[Rule]", "Left"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"SaveDefinitions", "\[Rule]", " ", "True"}]}], "]"}]], "Input"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a$$ = 1., $CellContext`e$$ = 
    0, $CellContext`i$$ = 0, $CellContext`M$$ = 0, $CellContext`\[Omega]$$ = 
    0, $CellContext`\[CapitalOmega]$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`a$$], 0.5, "semi-major axis a"}, 0.1, 1}, {{
       Hold[$CellContext`e$$], 0, "eccentricity e"}, 0, 0.99}, {{
       Hold[$CellContext`i$$], 0, "inclination i"}, (-180) Degree, 180 
      Degree}, {{
       Hold[$CellContext`\[Omega]$$], 0, "arg of periapsis \[Omega]"}, 0, 360 
      Degree}, {{
       Hold[$CellContext`\[CapitalOmega]$$], 0, "node \[CapitalOmega]"}, 0, 
      360 Degree}, {{
       Hold[$CellContext`M$$], 0, "mean anomaly M"}, 0, 360 Degree}}, 
    Typeset`size$$ = {400., {198., 202.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`a$5110$$ = 0, $CellContext`e$5111$$ = 
    0, $CellContext`i$5112$$ = 0, $CellContext`\[Omega]$5113$$ = 
    0, $CellContext`\[CapitalOmega]$5114$$ = 0, $CellContext`M$5115$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`a$$ = 0.5, $CellContext`e$$ = 
        0, $CellContext`i$$ = 0, $CellContext`M$$ = 
        0, $CellContext`\[Omega]$$ = 0, $CellContext`\[CapitalOmega]$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`a$$, $CellContext`a$5110$$, 0], 
        Hold[$CellContext`e$$, $CellContext`e$5111$$, 0], 
        Hold[$CellContext`i$$, $CellContext`i$5112$$, 0], 
        Hold[$CellContext`\[Omega]$$, $CellContext`\[Omega]$5113$$, 0], 
        Hold[$CellContext`\[CapitalOmega]$$, \
$CellContext`\[CapitalOmega]$5114$$, 0], 
        Hold[$CellContext`M$$, $CellContext`M$5115$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Graphics3D[{
         Star["Radius" -> 1/10], 
         $CellContext`Reference["Radius" -> 1.8], 
         $CellContext`Body[{$CellContext`a$$, $CellContext`e$$, \
$CellContext`i$$, $CellContext`\[Omega]$$, $CellContext`\[CapitalOmega]$$, \
$CellContext`M$$}, "Color" -> Red, "Radius" -> 1/13]}, 
        ImageSize -> {400, 400}, Boxed -> False, Axes -> {True, False, False},
         ImagePadding -> 25], 
      "Specifications" :> {{{$CellContext`a$$, 0.5, "semi-major axis a"}, 0.1,
          1, ImageSize -> Tiny}, {{$CellContext`e$$, 0, "eccentricity e"}, 0, 
         0.99, ImageSize -> 
         Tiny}, {{$CellContext`i$$, 0, "inclination i"}, (-180) Degree, 180 
         Degree, ImageSize -> 
         Tiny}, {{$CellContext`\[Omega]$$, 0, "arg of periapsis \[Omega]"}, 0,
          360 Degree, ImageSize -> 
         Tiny}, {{$CellContext`\[CapitalOmega]$$, 0, "node \[CapitalOmega]"}, 
         0, 360 Degree, ImageSize -> 
         Tiny}, {{$CellContext`M$$, 0, "mean anomaly M"}, 0, 360 Degree, 
         ImageSize -> Tiny}}, "Options" :> {ControlPlacement -> Left}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{635., {228., 235.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({Star[
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := {Yellow, 
         Sphere[{0, 0, 0}, 
          ReplaceAll[
           ReplaceAll["Radius", {$CellContext`opts}], "Radius" -> 
           0.1]]}, $CellContext`Reference[
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := With[{$CellContext`R = ReplaceAll[
            ReplaceAll["Radius", {$CellContext`opts}], "Radius" -> 
            GoldenRatio]}, {
          Line[{{0, 0, 0}, {$CellContext`R, 0, 0}}], 
          Opacity[0.5], 
          
          Polygon[{{-$CellContext`R, -$CellContext`R, 
             0}, {-$CellContext`R, $CellContext`R, 
             0}, {$CellContext`R, $CellContext`R, 
             0}, {$CellContext`R, -$CellContext`R, 
             0}, {-$CellContext`R, -$CellContext`R, 0}}]}], $CellContext`Body[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`i, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[CapitalOmega], 
           Blank[]], 
          Pattern[$CellContext`M, 
           Blank[]]}, 
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := ({
         $CellContext`Planet[#, $CellContext`opts], 
         $CellContext`Orbit[#, $CellContext`opts], 
         $CellContext`Plane[#, $CellContext`opts], 
         $CellContext`Geometry[#, $CellContext`opts]}& )[{$CellContext`a, \
$CellContext`e, $CellContext`i, $CellContext`\[Omega], $CellContext`\
\[CapitalOmega], $CellContext`M}], $CellContext`Planet[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`i, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[CapitalOmega], 
           Blank[]], 
          Pattern[$CellContext`M, 
           Blank[]]}, 
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := {
         ReplaceAll[
          ReplaceAll["Color", {$CellContext`opts}], "Color" -> Blue], 
         Sphere[
          $CellContext`xyz[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], $CellContext`M], 
          ReplaceAll[
           ReplaceAll["Radius", {$CellContext`opts}], "Radius" -> 
           0.1]]}, $CellContext`xyz = 
       Function[{$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], $CellContext`M}, \
{(($CellContext`a Cos[$CellContext`\[Omega]]) 
            Cos[$CellContext`\[CapitalOmega]]) (-$CellContext`e + 
            Cos[$CellContext`M + $CellContext`e 
               Sin[$CellContext`M + $CellContext`e 
                  Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]]) - ((($CellContext`a 
             Cos[$CellContext`i]) (-$CellContext`e + 
             Cos[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]])) Sin[$CellContext`\[Omega]]) 
          Sin[$CellContext`\[CapitalOmega]] - ((($CellContext`a 
             Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`\[CapitalOmega]]) 
           Sin[$CellContext`\[Omega]]) 
          Sin[$CellContext`M + $CellContext`e 
             Sin[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]] - (((($CellContext`a 
              Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`i]) 
            Cos[$CellContext`\[Omega]]) Sin[$CellContext`\[CapitalOmega]]) 
          Sin[$CellContext`M + $CellContext`e 
             Sin[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]], ((($CellContext`a 
              Cos[$CellContext`i]) 
             Cos[$CellContext`\[CapitalOmega]]) (-$CellContext`e + 
             Cos[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]])) 
           Sin[$CellContext`\[Omega]] + (($CellContext`a 
             Cos[$CellContext`\[Omega]]) (-$CellContext`e + 
             Cos[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]])) 
           Sin[$CellContext`\[CapitalOmega]] + (((($CellContext`a 
               Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`i]) 
             Cos[$CellContext`\[Omega]]) Cos[$CellContext`\[CapitalOmega]]) 
           Sin[$CellContext`M + $CellContext`e 
              Sin[$CellContext`M + $CellContext`e 
                 Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]] - ((($CellContext`a 
             Sqrt[1 - $CellContext`e^2]) Sin[$CellContext`\[Omega]]) 
           Sin[$CellContext`\[CapitalOmega]]) 
          Sin[$CellContext`M + $CellContext`e 
             Sin[$CellContext`M + $CellContext`e 
                Sin[$CellContext`M + $CellContext`e 
                   Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]], (($CellContext`a \
(-$CellContext`e + 
              Cos[$CellContext`M + $CellContext`e 
                 Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]])) Sin[$CellContext`i]) 
           Sin[$CellContext`\[Omega]] + ((($CellContext`a 
              Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`\[Omega]]) 
            Sin[$CellContext`i]) 
           Sin[$CellContext`M + $CellContext`e 
              Sin[$CellContext`M + $CellContext`e 
                 Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M + $CellContext`e 
                    Sin[$CellContext`M]]]]]}], $CellContext`Orbit[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`i, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[CapitalOmega], 
           Blank[]], 
          Pattern[$CellContext`M, 
           Blank[]]}, 
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := {
         Thickness[0.005], 
         Line[
          Table[
           $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], $CellContext`\
\[CapitalEpsilon]], {$CellContext`\[CapitalEpsilon], 0, 2 Pi, 
            2 (Pi/33)}]]}, $CellContext`XYZ = 
       Function[{$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], $CellContext`\
\[CapitalEpsilon]}, {(($CellContext`a (-$CellContext`e + 
              Cos[$CellContext`\[CapitalEpsilon]])) 
            Cos[$CellContext`\[Omega]]) 
           Cos[$CellContext`\[CapitalOmega]] - ((($CellContext`a 
             Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`\[CapitalOmega]]) 
           Sin[$CellContext`\[CapitalEpsilon]]) 
          Sin[$CellContext`\[Omega]] - (((($CellContext`a 
              Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`i]) 
            Cos[$CellContext`\[Omega]]) Sin[$CellContext`\[CapitalEpsilon]]) 
          Sin[$CellContext`\[CapitalOmega]] - ((($CellContext`a 
             Cos[$CellContext`i]) (-$CellContext`e + 
             Cos[$CellContext`\[CapitalEpsilon]])) Sin[$CellContext`\[Omega]])
            Sin[$CellContext`\[CapitalOmega]], (((($CellContext`a 
               Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`i]) 
             Cos[$CellContext`\[Omega]]) Cos[$CellContext`\[CapitalOmega]]) 
           Sin[$CellContext`\[CapitalEpsilon]] + ((($CellContext`a 
              Cos[$CellContext`i]) (-$CellContext`e + 
              Cos[$CellContext`\[CapitalEpsilon]])) 
            Cos[$CellContext`\[CapitalOmega]]) 
           Sin[$CellContext`\[Omega]] + (($CellContext`a (-$CellContext`e + 
              Cos[$CellContext`\[CapitalEpsilon]])) 
            Cos[$CellContext`\[Omega]]) 
           Sin[$CellContext`\[CapitalOmega]] - ((($CellContext`a 
             Sqrt[1 - $CellContext`e^2]) Sin[$CellContext`\[CapitalEpsilon]]) 
           Sin[$CellContext`\[Omega]]) 
          Sin[$CellContext`\[CapitalOmega]], ((($CellContext`a 
              Sqrt[1 - $CellContext`e^2]) Cos[$CellContext`\[Omega]]) 
            Sin[$CellContext`i]) 
           Sin[$CellContext`\[CapitalEpsilon]] + (($CellContext`a \
(-$CellContext`e + Cos[$CellContext`\[CapitalEpsilon]])) Sin[$CellContext`i]) 
           Sin[$CellContext`\[Omega]]}], $CellContext`\[CapitalEpsilon][
         Pattern[$CellContext`M, 
          Blank[]], 
         Pattern[$CellContext`e, 
          Blank[]]] = $CellContext`M + $CellContext`e 
         Sin[$CellContext`M + $CellContext`e 
            Sin[$CellContext`M + $CellContext`e 
               Sin[$CellContext`M + $CellContext`e 
                  Sin[$CellContext`M]]]], $CellContext`Plane[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`i, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[CapitalOmega], 
           Blank[]], 
          Pattern[$CellContext`M, 
           Blank[]]}, 
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := {
         ReplaceAll[
          ReplaceAll["Color", {$CellContext`opts}], "Color" -> Blue], 
         Opacity[0.5], 
         Polygon[
          Table[
           $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], $CellContext`\
\[CapitalEpsilon]], {$CellContext`\[CapitalEpsilon], 0, 2 Pi, 
            2 (Pi/33)}]]}, $CellContext`Geometry[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`i, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[CapitalOmega], 
           Blank[]], 
          Pattern[$CellContext`M, 
           Blank[]]}, 
         Pattern[$CellContext`opts, 
          BlankNullSequence[]]] := {
         Line[{{
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 0], 
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 180 Degree]}, {
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 90 Degree], 
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 270 Degree]}, {
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 0 Degree], 
            $CellContext`XYZ[$CellContext`a, $CellContext`e, $CellContext`i, \
$CellContext`\[Omega], $CellContext`\[CapitalOmega], 90 Degree]}}]}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, {2}]],

Cell[BoxData[""], "Input"]
}, Open  ]]
},
WindowSize->{890, 805},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.3 for Microsoft Windows (64-bit) (October 9, 2015)",
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
Cell[1464, 33, 10482, 312, 599, "Input",
 CellOpen->False,
 InitializationCell->True],
Cell[CellGroupData[{
Cell[11971, 349, 79, 1, 64, "Chapter"],
Cell[12053, 352, 2210, 33, 372, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[14300, 390, 69, 0, 64, "Chapter"],
Cell[14372, 392, 1062, 16, 220, "Text"],
Cell[CellGroupData[{
Cell[15459, 412, 57, 0, 62, "Subchapter"],
Cell[15519, 414, 782, 13, 182, "Text"],
Cell[CellGroupData[{
Cell[16326, 431, 6769, 175, 492, "Input"],
Cell[23098, 608, 4469, 89, 430, "Output"]
}, {2}]]
}, Open  ]],
Cell[CellGroupData[{
Cell[27613, 703, 57, 0, 62, "Subchapter"],
Cell[27673, 705, 1706, 24, 315, "Text"],
Cell[CellGroupData[{
Cell[29404, 733, 7762, 201, 552, "Input"],
Cell[37169, 936, 4830, 95, 430, "Output"]
}, {2}]]
}, Open  ]],
Cell[CellGroupData[{
Cell[42045, 1037, 58, 0, 62, "Subchapter"],
Cell[42106, 1039, 1109, 15, 201, "Text"],
Cell[CellGroupData[{
Cell[43240, 1058, 8349, 212, 604, "Input"],
Cell[51592, 1272, 6071, 116, 430, "Output"]
}, {2}]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[57721, 1395, 51, 0, 64, "Chapter"],
Cell[57775, 1397, 281, 5, 49, "Text"],
Cell[CellGroupData[{
Cell[58081, 1406, 33, 0, 62, "Subchapter"],
Cell[58117, 1408, 883, 13, 125, "Text"],
Cell[CellGroupData[{
Cell[59025, 1425, 1697, 43, 192, "Input"],
Cell[60725, 1470, 13916, 285, 480, "Output"]
}, {2}]]
}, Open  ]],
Cell[CellGroupData[{
Cell[74687, 1761, 41, 0, 62, "Subchapter"],
Cell[74731, 1763, 1370, 20, 258, "Text"],
Cell[CellGroupData[{
Cell[76126, 1787, 1685, 43, 192, "Input"],
Cell[77814, 1832, 13972, 285, 480, "Output"]
}, {2}]]
}, Open  ]],
Cell[CellGroupData[{
Cell[91832, 2123, 66, 0, 62, "Subchapter"],
Cell[91901, 2125, 1394, 21, 239, "Text"],
Cell[CellGroupData[{
Cell[93320, 2150, 1699, 43, 192, "Input"],
Cell[95022, 2195, 14040, 287, 480, "Output"]
}, {2}]]
}, Open  ]],
Cell[CellGroupData[{
Cell[109108, 2488, 34, 0, 62, "Subchapter"],
Cell[109145, 2490, 1048, 16, 239, "Text"],
Cell[CellGroupData[{
Cell[110218, 2510, 1655, 42, 192, "Input"],
Cell[111876, 2554, 13878, 285, 480, "Output"]
}, {2}]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[125812, 2846, 42, 0, 64, "Chapter"],
Cell[125857, 2848, 251, 4, 68, "Text"],
Cell[CellGroupData[{
Cell[126133, 2856, 3058, 83, 292, "Input"],
Cell[129194, 2941, 15713, 317, 480, "Output"]
}, {2}]],
Cell[144919, 3261, 26, 0, 31, "Input"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature JwD23k0jS@C3NCgqcxgeu5UU *)
