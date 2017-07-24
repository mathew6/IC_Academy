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
NotebookDataLength[     97006,       2100]
NotebookOptionsPosition[     94135,       2010]
NotebookOutlinePosition[     94659,       2032]
CellTagsIndexPosition[     94616,       2029]
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
      "Evaluate"}]}], "]"}]}], ";"}]}], "Input", "PluginEmbeddedContent",
 CellOpen->False,
 InitializationCell->
  True,ExpressionUUID->"01dfe16a-aa4a-4630-bb1c-ef705aa0a21e"],

Cell[CellGroupData[{

Cell[TextData[Cell[BoxData[
 FormBox["Preface", 
  TraditionalForm]],ExpressionUUID->"70464b88-6286-4e97-886b-1ae2473a6264"]], \
"Chapter", \
"PluginEmbeddedContent",ExpressionUUID->"dc3af5a6-2d1d-48f5-812b-\
3e22a8e842ee"],

Cell["\<\
On a beautiful October evening in 1601 in Prague, a gentleman by the name of \
Tycho Brahe was attending a banquet of extravagant proportions.  This was \
nothing new for Tycho.  A man of incred\[LineSeparator]ible wealth was known \
to host large gatherings at his castle.  With an unshakeable sense of \
propriety (be it in the banquet hall or in a duel, where he once lost his \
nose by the sword of his cousin), he showed uncommon personal fortitude in \
deciding that a brief pause in the pleasantries to urinate may be a breach of \
etiquette.  Unfortunately for Tycho, the resulting bladder and kidney \
problems led to his death a few days later caused by a burst bladder.  A \
rather ignoble ending for a man of his means and achievements.  In \
anticipation of his death, he wrote his on epitaph: \[OpenCurlyDoubleQuote]He \
lived like a sage and died like a fool.\[CloseCurlyDoubleQuote]  Indeed.

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
\>", "Text", \
"PluginEmbeddedContent",ExpressionUUID->"1ad7f854-e3ef-475c-8981-\
7f77452ae6aa"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Kepler\[CloseCurlyQuote]s Laws of Planetary Motion", "Chapter", "PluginEmbeddedContent",ExpressionUUID->"a7b655f8-c3d8-4ab0-b010-\
bc05d29ae6a3"],

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
}], "Text", \
"PluginEmbeddedContent",ExpressionUUID->"228ca946-1c92-4113-844c-\
a853560fb96b"],

Cell[CellGroupData[{

Cell["Kepler\[CloseCurlyQuote]s First Law", "Subchapter", "PluginEmbeddedContent",ExpressionUUID->"7fe7ceb6-b242-44d4-8ac1-\
7fbaf0b351ba"],

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
orbit around the Sun (0.00167), or a Molniya orbit (0.72), or the Moon around \
the Earth (0..04).", "Item"]
}], "Text", \
"PluginEmbeddedContent",ExpressionUUID->"ee83e286-c5c3-4213-b122-\
237413fa8d25"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Kepler\[CloseCurlyQuote]s Third Law", "Subchapter", "PluginEmbeddedContent",ExpressionUUID->"d09f2a0d-41f9-4b57-af9b-\
317d8be29f39"],

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
}], "Text", \
"PluginEmbeddedContent",ExpressionUUID->"505ff618-c6aa-4f5d-9457-\
32516025f013"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Kepler\[CloseCurlyQuote]s Second Law", "Subchapter", "PluginEmbeddedContent",ExpressionUUID->"6b6fc64e-2170-4da9-afa1-\
49bd4c3a1ab9"],

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
}], "Text", \
"PluginEmbeddedContent",ExpressionUUID->"9d1de409-5641-4c83-a4a1-\
0c168c1f4bad"],

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
   RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "]"}]], "Input", \
"PluginEmbeddedContent",ExpressionUUID->"862cd7e1-fdfa-4f0a-957e-\
e4128aba1907"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`dt$$ = 9.65, $CellContext`e$$ = 
    0.66, $CellContext`P$$ = 29.96, $CellContext`t$$ = 29.96, Typeset`show$$ =
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
    350., {172., 178.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
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
"PluginEmbeddedContent",ExpressionUUID->"917df7c4-2425-49c2-9315-\
0683559546f2"]
}, Open  ]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Orientation of the Orbital Plane", "Chapter", "PluginEmbeddedContent",ExpressionUUID->"d42025f0-4ab1-4daf-9a5a-\
e0e73ec88607"],

Cell["\<\
In the last section, we looked at the shape of the orbit (semi-major axis and \
eccentricity) as well as what the motion looks like along the ellipse.  In \
this section, we\[CloseCurlyQuote]ll look at the orientation of the orbit and \
put it all together.\
\>", "Text", \
"PluginEmbeddedContent",ExpressionUUID->"a85f7261-8f84-4fcb-a45b-\
4747c631e4c4"],

Cell[CellGroupData[{

Cell["Inclination", "Subchapter", "PluginEmbeddedContent",ExpressionUUID->"825a1553-8619-4001-98c0-\
f116e6a6ff98"],

Cell[TextData[{
 "Orbital inclination is the angle between the plane of the orbit and some \
other reference plane.  In the last section, we were thinking about planetary \
orbits, but in this section we\[CloseCurlyQuote]ll start thinking a little \
closer to home.  For a satellite orbiting the Earth, the typical reference \
plane is the equatorial plane.  The motion of a satellite that has an \
inclination of 0 degrees will be in equatorial plane like the below graphic.  \
The eccentricity of this orbit is zero (circular), and the tan square \
represents the equatorial plane.  Rotate the picture a bit and you\
\[CloseCurlyQuote]ll see how plane of the orbit is completely in the plane of \
the equator.\n\n",
 Cell[BoxData[
  Graphics3DBox[{
    {RGBColor[1, 1, 0], SphereBox[{0, 0, 0}, 0.1]}, {
     Line3DBox[{{0, 0, 0}, {1.8, 0, 0}}], 
     {Opacity[0.5], 
      Polygon3DBox[{{-1.8, -1.8, 0}, {-1.8, 1.8, 0}, {1.8, 1.8, 0}, {
        1.8, -1.8, 0}, {-1.8, -1.8, 0}}]}}, {
     {RGBColor[1, 0, 0], SphereBox[{1., 0., 0.}, 0.07692307692307693]}, 
     {Thickness[0.005], Line3DBox[CompressedData["
1:eJxTTMoPSmViYGBQAmJmBhj4YM+ABlRfmu/+mv3efsKaBQ1Jlifg8rEb760y
2PrW/tdk3uDAk9fh4rs+pLT3vH5lzx2x+8dbn4dw8a2Wop5XNJ7b/xe3n6Ig
+gwuzryat+ly/yP7aY6u0xgFXyHUCx2/qTHtlr2Izru+LdJv4eJdUQ+8InXP
2d+P+zVJRPI9XLxZYYPGipgV9s1rohbv+IYQv+3CnxJvfmj/eycLlnlrEOI2
io3l695d2X80OCm6yPYdmr8f7F/lE/GiattruHhbRHn9vC9P9i/SsNotqf8C
Lq724NbFCPWX+z9VbIz6evwxXPzQp/ec4YVv9n9YYRc6NfguXDw84OxsrS3v
9u/vLfv7nP0SXDzO5OO757fe738T7H50eugOXOL7cZizH4e9cHE0d8LF0fwF
F0cLB7g4WrjBxdHCGS6OFi9wcbR4hIujxTtcHC2dINSjpiu4OFo6hIujpVu4
OFo6RwsHzHwBALcOF0I=
       "]]}, 
     {RGBColor[1, 0, 0], Opacity[0.5], Polygon3DBox[CompressedData["
1:eJxTTMoPSmViYGBQAmJmBhj4YM+ABlRfmu/+mv3efsKaBQ1Jlifg8rEb760y
2PrW/tdk3uDAk9fh4rs+pLT3vH5lzx2x+8dbn4dw8a2Wop5XNJ7b/xe3n6Ig
+gwuzryat+ly/yP7aY6u0xgFXyHUCx2/qTHtlr2Izru+LdJv4eJdUQ+8InXP
2d+P+zVJRPI9XLxZYYPGipgV9s1rohbv+IYQv+3CnxJvfmj/eycLlnlrEOI2
io3l695d2X80OCm6yPYdmr8f7F/lE/GiattruHhbRHn9vC9P9i/SsNotqf8C
Lq724NbFCPWX+z9VbIz6evwxXPzQp/ec4YVv9n9YYRc6NfguXDw84OxsrS3v
9u/vLfv7nP0SXDzO5OO757fe738T7H50eugOXOL7cZizH4e9cHE0d8LF0fwF
F0cLB7g4WrjBxdHCGS6OFi9wcbR4hIujxTtcHC2dINSjpiu4OFo6hIujpVu4
OFo6RwsHzHwBALcOF0I=
       "]]}, 
     Line3DBox[{{{1., 0., 0.}, {-1., 0., 0.}}, {{0., 1., 0.}, {0., -1., 
      0.}}, {{1., 0., 0.}, {0., 1., 0.}}}]}},
   Axes->{True, False, False},
   Boxed->False,
   ImagePadding->25,
   ImageSize->{400, 400},
   ViewPoint->{-1.0389029072552751`, -0.5274129309719616, 3.1768721015395163`},
   ViewVertical->{0.285700018638014, 0.514625051102183, 14.551489414681015`}]],
  CellChangeTimes->{
   3.655508141970215*^9, 3.655508592987759*^9, {3.6555086287409134`*^9, 
    3.6555086400267153`*^9}, 3.6555089583728657`*^9, 3.6555090359341145`*^9, {
    3.655509407557883*^9, 3.6555094195270576`*^9}, 3.6555094977722006`*^9, 
    3.6555095448464584`*^9, {3.655509580105398*^9, 3.6555096028730326`*^9}, {
    3.6555096347392063`*^9, 3.6555096672057047`*^9}},ExpressionUUID->
  "c7001093-4efd-4681-a7ff-5c0f1fac93f2"],
 "\nBut what happens when the inclination is, say, 90 degrees?  This is what\
\[CloseCurlyQuote]s called a polar orbit.  The graphic below shows what this \
orbital plane would look like.\n",
 Cell[BoxData[
  Graphics3DBox[{
    {RGBColor[1, 1, 0], SphereBox[{0, 0, 0}, NCache[Rational[1, 10], 0.1]]}, {
     Line3DBox[{{0, 0, 0}, {1.8, 0, 0}}], 
     {Opacity[0.5], 
      Polygon3DBox[{{-1.8, -1.8, 0}, {-1.8, 1.8, 0}, {1.8, 1.8, 0}, {
        1.8, -1.8, 0}, {-1.8, -1.8, 0}}]}}, {
     {RGBColor[1, 0, 0], 
      SphereBox[{1., 0., 0.}, NCache[Rational[1, 13], 0.07692307692307693]]}, 
     {Thickness[0.005], Line3DBox[CompressedData["
1:eJx1k19IU2EYxk9aYwVr5goKIpvhzoiEDFGU4jUqwsUid+O0/IMpRLuQijAw
sFxYiiVKFDTKrJynwmXRqazgwQWW4ITZqNwwZg11znPOGkp3UhdfNx/0wnfz
Xrzv+zzP7zPXNToa0gRByP770oV/lSSBq5x44btll0avllp/Z2W4YY1eFGfy
PlHV8+9PdssKVX/wHtJe92Dszo0XqZGv9DZZf7UzsUDnXWHL3WIP2nTto92H
Z0gu2lQass6R7Do+NFjbh31K5ebS9bOU/tTQ+rnrBzl72msOuB9Bc9i3qfoF
kjM/Tllvhcl+6YhsmPeid4MYepapUEdl1FaRO0HxPfg2e0GC5lZ0Z40aubcP
WaUTEu34siVZJj7GVMeoK7ioUeSgsb6m0I9+aXLXKkXCmnXF/sADjfaaLzf5
1BBOig1ZGeMDKBqXIqZ8lemP4pp9pSA50Y+S/asjscEEtTmbWu4txVBw+opZ
r3+IvJtj3R5xnizRcNApxpG4vmIyZffi/vvUqdDIT/KntLXlZxYRLKkY1m28
Da++2dZim6byYwHPzpcqAlu7+mK1najLzZkuS5uk6vxf6lxYw0Cj0eewnEPz
csBnOPqG7xPrg5tDbA64vcT2gruT2J3gdBHTBc4HYj6A842Yb+B8JuYzuFyI
5QIuR2I5gsudWO7gOCHGCTiuiHEFjkNiHILjlhi34Dgnxjn+9y/+AOOElOQ=

       "]]}, 
     {RGBColor[1, 0, 0], Opacity[0.5], Polygon3DBox[CompressedData["
1:eJx1k19IU2EYxk9aYwVr5goKIpvhzoiEDFGU4jUqwsUid+O0/IMpRLuQijAw
sFxYiiVKFDTKrJynwmXRqazgwQWW4ITZqNwwZg11znPOGkp3UhdfNx/0wnfz
Xrzv+zzP7zPXNToa0gRByP770oV/lSSBq5x44btll0avllp/Z2W4YY1eFGfy
PlHV8+9PdssKVX/wHtJe92Dszo0XqZGv9DZZf7UzsUDnXWHL3WIP2nTto92H
Z0gu2lQass6R7Do+NFjbh31K5ebS9bOU/tTQ+rnrBzl72msOuB9Bc9i3qfoF
kjM/Tllvhcl+6YhsmPeid4MYepapUEdl1FaRO0HxPfg2e0GC5lZ0Z40aubcP
WaUTEu34siVZJj7GVMeoK7ioUeSgsb6m0I9+aXLXKkXCmnXF/sADjfaaLzf5
1BBOig1ZGeMDKBqXIqZ8lemP4pp9pSA50Y+S/asjscEEtTmbWu4txVBw+opZ
r3+IvJtj3R5xnizRcNApxpG4vmIyZffi/vvUqdDIT/KntLXlZxYRLKkY1m28
Da++2dZim6byYwHPzpcqAlu7+mK1najLzZkuS5uk6vxf6lxYw0Cj0eewnEPz
csBnOPqG7xPrg5tDbA64vcT2gruT2J3gdBHTBc4HYj6A842Yb+B8JuYzuFyI
5QIuR2I5gsudWO7gOCHGCTiuiHEFjkNiHILjlhi34Dgnxjn+9y/+AOOElOQ=

       "]]}, 
     Line3DBox[{{{1., 0., 0.}, {-1., 0., 0.}}, {{0., -0.049183821914170554`, 
      0.998789743470524}, {0., 0.049183821914170554`, -0.998789743470524}}, {{
      1., 0., 0.}, {0., -0.049183821914170554`, 0.998789743470524}}}]}},
   Axes->{True, False, False},
   Boxed->False,
   ImagePadding->25,
   ImageSize->{400, 400},
   ViewPoint->{0.05694014325895683, -3.366847975357869, 0.33330546187285015`},
   ViewVertical->{-0.1321197707243688, -0.4944189554297376, 
    1.5482972624355447`}]],
  CellChangeTimes->{
   3.655508141970215*^9, 3.655508592987759*^9, {3.6555086287409134`*^9, 
    3.6555086400267153`*^9}, 3.6555089583728657`*^9, 3.6555090359341145`*^9, {
    3.655509407557883*^9, 3.6555094195270576`*^9}, 3.6555094977722006`*^9, 
    3.6555095448464584`*^9, {3.655509580105398*^9, 3.6555096028730326`*^9}, {
    3.6555096347392063`*^9, 3.6555096672057047`*^9}},ExpressionUUID->
  "dd6f2468-ed00-42b1-9368-4dc7ae819e32"],
 "\nSpin this around and notice how the orbital plane is perpendicular to the \
equatorial plane."
}], "Text", \
"PluginEmbeddedContent",ExpressionUUID->"b9316d8f-48c1-4f12-bdde-\
f7b073fc115f"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Argument of Perigee", "Subchapter", "PluginEmbeddedContent",ExpressionUUID->"a35df9b1-bb38-45e1-821d-\
953fe170be97"],

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
more character.  Consider the graphic below where the eccentricity is 0.5, \
inclination is 45 degrees.  We\[CloseCurlyQuote]ve put the spacecraft at \
perigee, and for the first picture, that happens to be in the equator.  This \
means the argument of perigee is 0 degrees.\n\n",
 Cell[BoxData[
  Graphics3DBox[{
    {RGBColor[1, 1, 0], SphereBox[{0, 0, 0}, NCache[Rational[1, 10], 0.1]]}, {
     Line3DBox[{{0, 0, 0}, {1.8, 0, 0}}], 
     {Opacity[0.5], 
      Polygon3DBox[{{-1.8, -1.8, 0}, {-1.8, 1.8, 0}, {1.8, 1.8, 0}, {
        1.8, -1.8, 0}, {-1.8, -1.8, 0}}]}}, {
     {RGBColor[1, 0, 0], 
      SphereBox[{0.5, 0., 0.}, NCache[Rational[1, 13], 0.07692307692307693]]}, 
     {Thickness[0.005], Line3DBox[CompressedData["
1:eJx1k19IU2EYxg9JgiCaxJouCpZ2N+imljboDYUiobT/Ofp3ZoaYYpBYFARJ
NAP7YyGOyhOUaOk2qjmhVj7eNIgp6JgdyzG3c2S4Yjhy7FAuqouvmw964bt5
L973fZ7n9xltrQcbVgmCsOnvyxH+VZQErqqDre3f5AjtzNZtXEm+o/VFnt6B
+jF6a3t/RGyao8XOM6bNjROUlZAulCepLfaxoESeoVqqfGR5ESKp1l1kGJmh
UPxw2YFnE1RiFjMVp7/QNmN2b9gzR8XHW9Y8vjZC1pb2LrNxngbtdzoG6qJk
8qqOE4NeLC++0nrEGOUHejboKxXyBe9aDyWm4HPQp7FuhRK+30OO6yqlVhI/
m9JhpO739+vXqeQNiEtS/gJtn875LN9eQN6uq7NyQqFz87d6SyMqSffGLccu
fcVJc3XYUaCQq7liNKQpTH8KTw1nq/Z0RSmmqeWrbTGqcvqo5sp3OJO/Uq9j
YdLpbvpxNEJrLyQbnQ/S6LP4DX1PZKpZ8mzF1CyJP7Qbw+UZdMdz3csd0xTY
rZssbQiS6Xl8n86q4U3G0mzv/EA7XLnFQ5Kftjy8rF1MajhVdl4/XOii/ea2
l3l2N98H64ObAzYH3F6wveDuBLsTnC4wXeB8APMBnG9gvoHzGcxncLmA5QIu
R7AcweUOljs4TsA4AccVGFfgOATjEBy3YNyC4xyMc/zvX/wBDlGuAg==
       "]]}, 
     {RGBColor[1, 0, 0], Opacity[0.5], Polygon3DBox[CompressedData["
1:eJx1k19IU2EYxg9JgiCaxJouCpZ2N+imljboDYUiobT/Ofp3ZoaYYpBYFARJ
NAP7YyGOyhOUaOk2qjmhVj7eNIgp6JgdyzG3c2S4Yjhy7FAuqouvmw964bt5
L973fZ7n9xltrQcbVgmCsOnvyxH+VZQErqqDre3f5AjtzNZtXEm+o/VFnt6B
+jF6a3t/RGyao8XOM6bNjROUlZAulCepLfaxoESeoVqqfGR5ESKp1l1kGJmh
UPxw2YFnE1RiFjMVp7/QNmN2b9gzR8XHW9Y8vjZC1pb2LrNxngbtdzoG6qJk
8qqOE4NeLC++0nrEGOUHejboKxXyBe9aDyWm4HPQp7FuhRK+30OO6yqlVhI/
m9JhpO739+vXqeQNiEtS/gJtn875LN9eQN6uq7NyQqFz87d6SyMqSffGLccu
fcVJc3XYUaCQq7liNKQpTH8KTw1nq/Z0RSmmqeWrbTGqcvqo5sp3OJO/Uq9j
YdLpbvpxNEJrLyQbnQ/S6LP4DX1PZKpZ8mzF1CyJP7Qbw+UZdMdz3csd0xTY
rZssbQiS6Xl8n86q4U3G0mzv/EA7XLnFQ5Kftjy8rF1MajhVdl4/XOii/ea2
l3l2N98H64ObAzYH3F6wveDuBLsTnC4wXeB8APMBnG9gvoHzGcxncLmA5QIu
R7AcweUOljs4TsA4AccVGFfgOATjEBy3YNyC4xyMc/zvX/wBDlGuAg==
       "]]}, 
     Line3DBox[{{{0.5, 0., 0.}, {-1.5, 0., 0.}}, {{-0.5, 0.5971231588057743, 
      0.6272510926397928}, {-0.5, -0.5971231588057743, -0.6272510926397928}}, \
{{0.5, 0., 0.}, {-0.5, 0.5971231588057743, 0.6272510926397928}}}]}},
   Axes->{True, False, False},
   Boxed->False,
   ImagePadding->25,
   ImageSize->{400, 400},
   ViewPoint->{0.04609298132516357, -3.2767339658805454`, 0.843142902429544},
   ViewVertical->{-0.3909195872298432, -0.5445059629899631, 
    2.1295443912403496`}]],
  CellChangeTimes->{
   3.655508141970215*^9, 3.655508592987759*^9, {3.6555086287409134`*^9, 
    3.6555086400267153`*^9}, 3.6555089583728657`*^9, 3.6555090359341145`*^9, {
    3.655509407557883*^9, 3.6555094195270576`*^9}, 3.6555094977722006`*^9, 
    3.6555095448464584`*^9, {3.655509580105398*^9, 3.6555096028730326`*^9}, {
    3.6555096347392063`*^9, 3.6555096672057047`*^9}},ExpressionUUID->
  "f2c90f45-0412-4edb-afc6-74988c304f88"],
 "\n\nNow let\[CloseCurlyQuote]s make the argument of perigee 45 degrees but \
leave everything else the same.\n\n",
 Cell[BoxData[
  Graphics3DBox[{
    {RGBColor[1, 1, 0], SphereBox[{0, 0, 0}, NCache[Rational[1, 10], 0.1]]}, {
     Line3DBox[{{0, 0, 0}, {1.8, 0, 0}}], 
     {Opacity[0.5], 
      Polygon3DBox[{{-1.8, -1.8, 0}, {-1.8, 1.8, 0}, {1.8, 1.8, 0}, {
        1.8, -1.8, 0}, {-1.8, -1.8, 0}}]}}, {
     {RGBColor[1, 0, 0], 
      SphereBox[{0.3447492164758735, 0.249697435867631, 0.2622959554785427}, 
       NCache[Rational[1, 13], 0.07692307692307693]]}, 
     {Thickness[0.005], Line3DBox[CompressedData["
1:eJwBQQO+/CFib1JlAgAAACIAAAADAAAA2XiFBF8Q1j/6J3noFfbPP4TRqfl0
ydA/Sv4zjZ9Wyz8kAZHvyGPUP6tif18ma9U/sPtuRwzdrz90+EtrAnzXP5TC
PaNYq9g/pgRPxTGUur+cY0NXFSfZPzNp2d33a9o/KnzDDGXU0b9L0VgyklXZ
PyQjiC7NnNo/hg4XKOsq3b9g2svbygXYP3pgyMAUPNk/NC8Aktsf5L8pI/0e
4kPVP2He8CCOVtY/wWSBwiBW6b+2MstpWynRP5L/L0gGB9I/jGo7zQsI7r9T
rPR4XbjHP2gar0a/6sg/xqFU+BUF8b+4v09tpTW2PxSlVCuEVLc/Uvx5eLWb
8r/AeMW4gImYv+ADF9tvxpm/Xbi0HjK587+CxO+9ikjCvxqK8QmzNMO/yArK
cjpT9L/P86m5Of/Qv0W0imbE2tG/IdDURD1k9L/FGb68xtDYv87zBHpOEdq/
x0DTL53r87/5rKGFSijgvy1GZ/78+OC/IUXySbbt8r/RvmLQoJzjv3GTEtfx
meS/cwr0zbVz8b/lN9/ob6XmvwC4/Znyyee/HY7ZZYoW77/xxudgpCbpvyJb
aTSBa+q/pjPhhxeM6r8h4KB3EQnrv2Nz+I5FZuy/wjqRkhZy5b9xRFqGRzvs
v6EYKMzup+2/5WHrqXbv37+4nIVUNbLsvxPGEcDcJO6/9QAcPmqf1L829Rt+
jmnsvyKEd4GL2O2/4AOGLme5wr/aNv0482Prv4JA1zC9xey/4Bbcb88Hlz+l
ZE4J2Krpv3gR+XJg9uq/Au2p+WzIxj9TzaFFLk7nv6ghG4s0e+i/u1kQI2Qi
1D/Q4lqU0GPkv7EoBGcua+W/Iib8JiFa2z/RhyS3uAbhv2Y4sDak4uG/5GYr
qVJk4D+NJsPmC6zavwVlynmOBNy/C4gRcdcd4j8+UeM5uufSv6qcG6Xq29O/
IGOaw6nJ4j/aXH6ushDGv6gaeS60Lce/CXAE2ZNh4j/0SdxjBLaqv9iDJsAH
D6y/Ob/Wvljp4D9QbAyIAy+vP1S5QyHmYLA/s4dzEiPd3D8FDB1WKNXEP+4H
Ric+4sU/2XiFBF8Q1j/6J3noFfbPP4TRqfl0ydA/N7S7Bw==
       "]]}, 
     {RGBColor[1, 0, 0], Opacity[0.5], Polygon3DBox[CompressedData["
1:eJwBQQO+/CFib1JlAgAAACIAAAADAAAA2XiFBF8Q1j/6J3noFfbPP4TRqfl0
ydA/Sv4zjZ9Wyz8kAZHvyGPUP6tif18ma9U/sPtuRwzdrz90+EtrAnzXP5TC
PaNYq9g/pgRPxTGUur+cY0NXFSfZPzNp2d33a9o/KnzDDGXU0b9L0VgyklXZ
PyQjiC7NnNo/hg4XKOsq3b9g2svbygXYP3pgyMAUPNk/NC8Aktsf5L8pI/0e
4kPVP2He8CCOVtY/wWSBwiBW6b+2MstpWynRP5L/L0gGB9I/jGo7zQsI7r9T
rPR4XbjHP2gar0a/6sg/xqFU+BUF8b+4v09tpTW2PxSlVCuEVLc/Uvx5eLWb
8r/AeMW4gImYv+ADF9tvxpm/Xbi0HjK587+CxO+9ikjCvxqK8QmzNMO/yArK
cjpT9L/P86m5Of/Qv0W0imbE2tG/IdDURD1k9L/FGb68xtDYv87zBHpOEdq/
x0DTL53r87/5rKGFSijgvy1GZ/78+OC/IUXySbbt8r/RvmLQoJzjv3GTEtfx
meS/cwr0zbVz8b/lN9/ob6XmvwC4/Znyyee/HY7ZZYoW77/xxudgpCbpvyJb
aTSBa+q/pjPhhxeM6r8h4KB3EQnrv2Nz+I5FZuy/wjqRkhZy5b9xRFqGRzvs
v6EYKMzup+2/5WHrqXbv37+4nIVUNbLsvxPGEcDcJO6/9QAcPmqf1L829Rt+
jmnsvyKEd4GL2O2/4AOGLme5wr/aNv0482Prv4JA1zC9xey/4Bbcb88Hlz+l
ZE4J2Krpv3gR+XJg9uq/Au2p+WzIxj9TzaFFLk7nv6ghG4s0e+i/u1kQI2Qi
1D/Q4lqU0GPkv7EoBGcua+W/Iib8JiFa2z/RhyS3uAbhv2Y4sDak4uG/5GYr
qVJk4D+NJsPmC6zavwVlynmOBNy/C4gRcdcd4j8+UeM5uufSv6qcG6Xq29O/
IGOaw6nJ4j/aXH6ushDGv6gaeS60Lce/CXAE2ZNh4j/0SdxjBLaqv9iDJsAH
D6y/Ob/Wvljp4D9QbAyIAy+vP1S5QyHmYLA/s4dzEiPd3D8FDB1WKNXEP+4H
Ric+4sU/2XiFBF8Q1j/6J3noFfbPP4TRqfl0ydA/N7S7Bw==
       "]]}, 
     Line3DBox[{{{0.3447492164758735, 0.249697435867631, 
      0.2622959554785427}, {-1.0342476494276205`, -0.749092307602893, \
-0.7868878664356279}}, {{-0.9720003091156664, 0.1620180464081475, 
      0.1701926899638655}, {
      0.28250187616391936`, -0.6614129181434094, -0.6947846009209508}}, {{
      0.3447492164758735, 0.249697435867631, 
      0.2622959554785427}, {-0.9720003091156664, 0.1620180464081475, 
      0.1701926899638655}}}]}},
   Axes->{True, False, False},
   Boxed->False,
   ImagePadding->25,
   ImageSize->{400, 400},
   ViewPoint->{1.4491335328327013`, -2.9204965556895566`, 0.9059314942230761},
   ViewVertical->{0.20529274174576062`, -0.4144702317137282, 
    2.350664555623899}]],
  CellChangeTimes->{
   3.655508141970215*^9, 3.655508592987759*^9, {3.6555086287409134`*^9, 
    3.6555086400267153`*^9}, 3.6555089583728657`*^9, 3.6555090359341145`*^9, {
    3.655509407557883*^9, 3.6555094195270576`*^9}, 3.6555094977722006`*^9, 
    3.6555095448464584`*^9, {3.655509580105398*^9, 3.6555096028730326`*^9}, {
    3.6555096347392063`*^9, 3.6555096672057047`*^9}},ExpressionUUID->
  "359f824c-1901-4dfb-9685-3e41b4c1dd33"],
 "\nSee the difference?  Now let\[CloseCurlyQuote]s make the argument of \
perigee 225 degrees -- 180 degrees different from above.\n",
 Cell[BoxData[
  Graphics3DBox[{
    {RGBColor[1, 1, 0], SphereBox[{0, 0, 0}, NCache[Rational[1, 10], 0.1]]}, {
     Line3DBox[{{0, 0, 0}, {1.8, 0, 0}}], 
     {Opacity[0.5], 
      Polygon3DBox[{{-1.8, -1.8, 0}, {-1.8, 1.8, 0}, {1.8, 1.8, 0}, {
        1.8, -1.8, 0}, {-1.8, -1.8, 0}}]}}, {
     {RGBColor[1, 0, 0], 
      SphereBox[{-0.34532554828025375`, -0.24931853914348182`, \
-0.26189794146633194`}, NCache[Rational[1, 13], 0.07692307692307693]]}, 
     {Thickness[0.005], Line3DBox[CompressedData["
1:eJx10/tPEggcAHA0jqGmOzMbFjgzaVBdSRqly/vaQ5frqbOyplF0YuthVlsP
THfZZWVX4Yy0hMqyVqmplHa58msIuJtU4BPJGi+VlwLKWKLW9Q/cD58/4bOQ
ezwt25dAIET+NOunt4LQdFVYHzJZ7oIayyeMXMUROqQqDB/z8ltyO3Gau7LI
welBSVp/3IKcXkyubJoTvLgBd9oed+v5/ZhFnM5nPtfg4SO8qMaMFjCflpxy
MQbQIvf+sB3Toi7+93OH5GqY6/choWzvAEYR7w8GPdTiMush1ivqFzjTeH1y
KlCD0qHJuvqNA6j0OncJwkzQTnowEb29F3UbXxGPc/twLa1VEpBqAYWHJK9Y
rca88TeCqdAuTBE4xZeJY/AjRlAZoe3Ad7SCP9lB/2KDdvzoeqILRK3zi1lF
zbjMfWzGXv0aO3GNZ7RyHATzNOSX8eVAOCWsfcerAM+ZvJMlLRPAjvin+Teq
FCSbzs9QSO2goSz1fbvTDWmZij1ZZhWUcTJb26Rq0PlmvR7OccONiOvCvjca
2D0rOIA9OQCH96Xmc50TQFBx3KE0HRivQOPqUR1s+cW88MLEOPh96W72lhrh
O+0DS3rDBCTPyAke3wUkEmvevcphsIrPuapwBNzfshk5dAcUhkd/M9EsoLqd
/nEH1wpteRXOYJEVktJdDRU+NpCc1Scd3WeHjwwfvqJoCAxT5Z0Jq+wg97pD
yqtGoaP4IFFC1gFTm9/ZVGcHvjmWtihiDCjs+irf9z3wec7WwCc8O3xfMvdC
Qe8oxCoYgSu8UqAyk399wLUBJYNjy5DZoa3KOEaNFOJKRp3Er8YCG1KU4lse
K3hNAXGbSxW4vuRigmL7CLB3/EXRnzfDNm54fJJ/D6YJnAcf8Uwge6Z8Qc8d
gkGxmDid9BkPKK8W3/TXQ0dMqah2WA9k8h+FuZk6XOoI81/XpIVdKVHX4oMG
ofou2wcoBrwUsjzR7OqCp80Mhmi4G/SxbHq2woDuFfRENV0BpkRmiXFDB8xw
1HeE+w2o5MSI6sk1oJKXtn/NroXZRsb+QqsO8/pDZQ7DC5zdJbU51zRg8MXU
whTjIL5vOUm1y2T494KncdFqOf7fi/8A5Bez2g==
       "]]}, 
     {RGBColor[1, 0, 0], Opacity[0.5], Polygon3DBox[CompressedData["
1:eJx10/tPEggcAHA0jqGmOzMbFjgzaVBdSRqly/vaQ5frqbOyplF0YuthVlsP
THfZZWVX4Yy0hMqyVqmplHa58msIuJtU4BPJGi+VlwLKWKLW9Q/cD58/4bOQ
ezwt25dAIET+NOunt4LQdFVYHzJZ7oIayyeMXMUROqQqDB/z8ltyO3Gau7LI
welBSVp/3IKcXkyubJoTvLgBd9oed+v5/ZhFnM5nPtfg4SO8qMaMFjCflpxy
MQbQIvf+sB3Toi7+93OH5GqY6/choWzvAEYR7w8GPdTiMush1ivqFzjTeH1y
KlCD0qHJuvqNA6j0OncJwkzQTnowEb29F3UbXxGPc/twLa1VEpBqAYWHJK9Y
rca88TeCqdAuTBE4xZeJY/AjRlAZoe3Ad7SCP9lB/2KDdvzoeqILRK3zi1lF
zbjMfWzGXv0aO3GNZ7RyHATzNOSX8eVAOCWsfcerAM+ZvJMlLRPAjvin+Teq
FCSbzs9QSO2goSz1fbvTDWmZij1ZZhWUcTJb26Rq0PlmvR7OccONiOvCvjca
2D0rOIA9OQCH96Xmc50TQFBx3KE0HRivQOPqUR1s+cW88MLEOPh96W72lhrh
O+0DS3rDBCTPyAke3wUkEmvevcphsIrPuapwBNzfshk5dAcUhkd/M9EsoLqd
/nEH1wpteRXOYJEVktJdDRU+NpCc1Scd3WeHjwwfvqJoCAxT5Z0Jq+wg97pD
yqtGoaP4IFFC1gFTm9/ZVGcHvjmWtihiDCjs+irf9z3wec7WwCc8O3xfMvdC
Qe8oxCoYgSu8UqAyk399wLUBJYNjy5DZoa3KOEaNFOJKRp3Er8YCG1KU4lse
K3hNAXGbSxW4vuRigmL7CLB3/EXRnzfDNm54fJJ/D6YJnAcf8Uwge6Z8Qc8d
gkGxmDid9BkPKK8W3/TXQ0dMqah2WA9k8h+FuZk6XOoI81/XpIVdKVHX4oMG
ofou2wcoBrwUsjzR7OqCp80Mhmi4G/SxbHq2woDuFfRENV0BpkRmiXFDB8xw
1HeE+w2o5MSI6sk1oJKXtn/NroXZRsb+QqsO8/pDZQ7DC5zdJbU51zRg8MXU
whTjIL5vOUm1y2T494KncdFqOf7fi/8A5Bez2g==
       "]]}, 
     Line3DBox[{{{-0.34532554828025375`, -0.24931853914348182`, \
-0.26189794146633194`}, {1.0359766448407612`, 0.7479556174304455, 
      0.7856938243989958}}, {{
      0.971624835454386, -0.16308522526740024`, -0.1713137134841174}, \
{-0.28097373889387856`, 0.6617223035543639, 
      0.6951095964167813}}, {{-0.34532554828025375`, -0.24931853914348182`, \
-0.26189794146633194`}, {
      0.971624835454386, -0.16308522526740024`, -0.1713137134841174}}}]}},
   Axes->{True, False, False},
   Boxed->False,
   ImagePadding->25,
   ImageSize->{400, 400},
   ViewPoint->{1.4491335328327013`, -2.9204965556895566`, 0.9059314942230761},
   ViewVertical->{0.20532316651341034`, -0.4145316569759677, 
    2.3510129285002077`}]],
  CellChangeTimes->{
   3.655508141970215*^9, 3.655508592987759*^9, {3.6555086287409134`*^9, 
    3.6555086400267153`*^9}, 3.6555089583728657`*^9, 3.6555090359341145`*^9, {
    3.655509407557883*^9, 3.6555094195270576`*^9}, 3.6555094977722006`*^9, 
    3.6555095448464584`*^9, {3.655509580105398*^9, 3.6555096028730326`*^9}, {
    3.6555096347392063`*^9, 3.6555096672057047`*^9}},ExpressionUUID->
  "e9b4c2b3-9ac7-49d2-a8dc-a82c7a209f6f"],
 "\nSee how this works?  Think of an axis that perpendicular to the plane of \
the orbit and is centered at the center of the Earth.  The argument of \
perigee is the angle of rotation about that axis -- one part of the \
orientation of the orbit.\n"
}], "Text", \
"PluginEmbeddedContent",ExpressionUUID->"689ddad3-e1c2-4ba0-b5ba-\
769e088089ad"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Right Ascension of the Ascending Node (RAAN)", "Subchapter", "PluginEmbeddedContent",ExpressionUUID->"6dfcf3eb-2605-4059-b122-\
58e5e90c37cd"],

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
let\[CloseCurlyQuote]s go back to our orbit where eccentricity is 0.5, \
inclination is 45 degrees, argument of perigee is 45 degrees, and the \
spacecraft is at the ascending node of the orbit.\n\n",
 Cell[BoxData[
  Graphics3DBox[{
    {RGBColor[1, 1, 0], SphereBox[{0, 0, 0}, NCache[Rational[1, 10], 0.1]]}, {
     Line3DBox[{{0, 0, 0}, {1.8, 0, 0}}], 
     {Opacity[0.5], 
      Polygon3DBox[{{-1.8, -1.8, 0}, {-1.8, 1.8, 0}, {1.8, 1.8, 0}, {
        1.8, -1.8, 0}, {-1.8, -1.8, 0}}]}}, {
     {RGBColor[1, 0, 0], 
      SphereBox[{0.555884075766079, 0.004635461110275962, 
       0.00486934395933486}, NCache[Rational[1, 13], 0.07692307692307693]]}, 
     {Thickness[0.005], Line3DBox[CompressedData["
1:eJwBQQO+/CFib1JlAgAAACIAAAADAAAA2XiFBF8Q1j/6J3noFfbPP4TRqfl0
ydA/Sv4zjZ9Wyz8kAZHvyGPUP6tif18ma9U/sPtuRwzdrz90+EtrAnzXP5TC
PaNYq9g/pgRPxTGUur+cY0NXFSfZPzNp2d33a9o/KnzDDGXU0b9L0VgyklXZ
PyQjiC7NnNo/hg4XKOsq3b9g2svbygXYP3pgyMAUPNk/NC8Aktsf5L8pI/0e
4kPVP2He8CCOVtY/wWSBwiBW6b+2MstpWynRP5L/L0gGB9I/jGo7zQsI7r9T
rPR4XbjHP2gar0a/6sg/xqFU+BUF8b+4v09tpTW2PxSlVCuEVLc/Uvx5eLWb
8r/AeMW4gImYv+ADF9tvxpm/Xbi0HjK587+CxO+9ikjCvxqK8QmzNMO/yArK
cjpT9L/P86m5Of/Qv0W0imbE2tG/IdDURD1k9L/FGb68xtDYv87zBHpOEdq/
x0DTL53r87/5rKGFSijgvy1GZ/78+OC/IUXySbbt8r/RvmLQoJzjv3GTEtfx
meS/cwr0zbVz8b/lN9/ob6XmvwC4/Znyyee/HY7ZZYoW77/xxudgpCbpvyJb
aTSBa+q/pjPhhxeM6r8h4KB3EQnrv2Nz+I5FZuy/wjqRkhZy5b9xRFqGRzvs
v6EYKMzup+2/5WHrqXbv37+4nIVUNbLsvxPGEcDcJO6/9QAcPmqf1L829Rt+
jmnsvyKEd4GL2O2/4AOGLme5wr/aNv0482Prv4JA1zC9xey/4Bbcb88Hlz+l
ZE4J2Krpv3gR+XJg9uq/Au2p+WzIxj9TzaFFLk7nv6ghG4s0e+i/u1kQI2Qi
1D/Q4lqU0GPkv7EoBGcua+W/Iib8JiFa2z/RhyS3uAbhv2Y4sDak4uG/5GYr
qVJk4D+NJsPmC6zavwVlynmOBNy/C4gRcdcd4j8+UeM5uufSv6qcG6Xq29O/
IGOaw6nJ4j/aXH6ushDGv6gaeS60Lce/CXAE2ZNh4j/0SdxjBLaqv9iDJsAH
D6y/Ob/Wvljp4D9QbAyIAy+vP1S5QyHmYLA/s4dzEiPd3D8FDB1WKNXEP+4H
Ric+4sU/2XiFBF8Q1j/6J3noFfbPP4TRqfl0ydA/N7S7Bw==
       "]]}, 
     {RGBColor[1, 0, 0], Opacity[0.5], Polygon3DBox[CompressedData["
1:eJwBQQO+/CFib1JlAgAAACIAAAADAAAA2XiFBF8Q1j/6J3noFfbPP4TRqfl0
ydA/Sv4zjZ9Wyz8kAZHvyGPUP6tif18ma9U/sPtuRwzdrz90+EtrAnzXP5TC
PaNYq9g/pgRPxTGUur+cY0NXFSfZPzNp2d33a9o/KnzDDGXU0b9L0VgyklXZ
PyQjiC7NnNo/hg4XKOsq3b9g2svbygXYP3pgyMAUPNk/NC8Aktsf5L8pI/0e
4kPVP2He8CCOVtY/wWSBwiBW6b+2MstpWynRP5L/L0gGB9I/jGo7zQsI7r9T
rPR4XbjHP2gar0a/6sg/xqFU+BUF8b+4v09tpTW2PxSlVCuEVLc/Uvx5eLWb
8r/AeMW4gImYv+ADF9tvxpm/Xbi0HjK587+CxO+9ikjCvxqK8QmzNMO/yArK
cjpT9L/P86m5Of/Qv0W0imbE2tG/IdDURD1k9L/FGb68xtDYv87zBHpOEdq/
x0DTL53r87/5rKGFSijgvy1GZ/78+OC/IUXySbbt8r/RvmLQoJzjv3GTEtfx
meS/cwr0zbVz8b/lN9/ob6XmvwC4/Znyyee/HY7ZZYoW77/xxudgpCbpvyJb
aTSBa+q/pjPhhxeM6r8h4KB3EQnrv2Nz+I5FZuy/wjqRkhZy5b9xRFqGRzvs
v6EYKMzup+2/5WHrqXbv37+4nIVUNbLsvxPGEcDcJO6/9QAcPmqf1L829Rt+
jmnsvyKEd4GL2O2/4AOGLme5wr/aNv0482Prv4JA1zC9xey/4Bbcb88Hlz+l
ZE4J2Krpv3gR+XJg9uq/Au2p+WzIxj9TzaFFLk7nv6ghG4s0e+i/u1kQI2Qi
1D/Q4lqU0GPkv7EoBGcua+W/Iib8JiFa2z/RhyS3uAbhv2Y4sDak4uG/5GYr
qVJk4D+NJsPmC6zavwVlynmOBNy/C4gRcdcd4j8+UeM5uufSv6qcG6Xq29O/
IGOaw6nJ4j/aXH6ushDGv6gaeS60Lce/CXAE2ZNh4j/0SdxjBLaqv9iDJsAH
D6y/Ob/Wvljp4D9QbAyIAy+vP1S5QyHmYLA/s4dzEiPd3D8FDB1WKNXEP+4H
Ric+4sU/2XiFBF8Q1j/6J3noFfbPP4TRqfl0ydA/N7S7Bw==
       "]]}, 
     Line3DBox[{{{0.3447492164758735, 0.249697435867631, 
      0.2622959554785427}, {-1.0342476494276205`, -0.749092307602893, \
-0.7868878664356279}}, {{-0.9720003091156664, 0.1620180464081475, 
      0.1701926899638655}, {
      0.28250187616391936`, -0.6614129181434094, -0.6947846009209508}}, {{
      0.3447492164758735, 0.249697435867631, 
      0.2622959554785427}, {-0.9720003091156664, 0.1620180464081475, 
      0.1701926899638655}}}]}},
   Axes->{True, False, False},
   Boxed->False,
   ImagePadding->25,
   ImageSize->{400, 400},
   ViewPoint->{1.4491335328327013`, -2.9204965556895566`, 0.9059314942230761},
   ViewVertical->{0.20529274174576062`, -0.4144702317137282, 
    2.350664555623899}]],
  CellChangeTimes->{
   3.655508141970215*^9, 3.655508592987759*^9, {3.6555086287409134`*^9, 
    3.6555086400267153`*^9}, 3.6555089583728657`*^9, 3.6555090359341145`*^9, {
    3.655509407557883*^9, 3.6555094195270576`*^9}, 3.6555094977722006`*^9, 
    3.6555095448464584`*^9, {3.655509580105398*^9, 3.6555096028730326`*^9}, {
    3.6555096347392063`*^9, 3.6555096672057047`*^9}},ExpressionUUID->
  "bea3b04d-e986-4ccc-a520-256d75c64dad"],
 "\n\nNotice the line in the equatorial plane (had you noticed that before?). \
 Let\[CloseCurlyQuote]s consider that our inertial reference.  So now let\
\[CloseCurlyQuote]s change the RAAN to 90 degrees.\n",
 Cell[BoxData[
  Graphics3DBox[{
    {RGBColor[1, 1, 0], SphereBox[{0, 0, 0}, NCache[Rational[1, 10], 0.1]]}, {
     Line3DBox[{{0, 0, 0}, {1.8, 0, 0}}], 
     {Opacity[0.5], 
      Polygon3DBox[{{-1.8, -1.8, 0}, {-1.8, 1.8, 0}, {1.8, 1.8, 0}, {
        1.8, -1.8, 0}, {-1.8, -1.8, 0}}]}}, {
     {RGBColor[1, 0, 0], 
      SphereBox[{-0.004192794302914998, 0.5558875908544336, 
       0.00486934395933486}, NCache[Rational[1, 13], 0.07692307692307693]]}, 
     {Thickness[0.005], Line3DBox[CompressedData["
1:eJx10/tTCwAcAPDR6OI8phSNs5LMqzpWXOKrqc6dysWuuI6tuZUMnULMuSk5
Vq5DKSmOI60tlRJh+s5qqxG1VHv0sKaHzbashVKJf8APnz/h48FO2suZSSAQ
PP9x+KcwOHK3q6UF24UN2fedOyFDVTp+StkK+yXvvKZZ7chJR7/hQ+9BzOYz
vbkdsFnRTNp4Xo0pcGtr2YxKyJVte7hfrIFF9sH8JKoW5RxhZjn/FW5K1Pb8
4urg7orLa2kHtBgl4F8NbFGh18qrPh+KdKDImX9dMleDvu+9u4jePchjNUld
grTgy+z2cw3vwMdkZ3rl8n6M6/1OyY7uhAPfU3MqNqnw0mgUl8Uw4s1p312z
HdsgmKsh61obkfE0sLpjthWPuFeEoakJ5p1l1VCPP8fAzqL1H4g2dClmrMtg
vIAsi3BWbV4+1EWI3ZSFI6h3cOtKUhTgwqnLdUyqDILPxEwIX9rRPdPmVE2r
x5LqK6cfW1shheejdGOMYuizzPgGnQrrBy1Jq6QayNu48u5Fzih+tBN5kSQd
Bo2Wj6+l6CFCzGLTLXbcEJbwZ3JMj6X8gy++5n6BgS1VxTXDI3gyZ5HaVtCP
IyTX3qh7g6B1e8gknrEhoXaqYEQ5hA0f6SciKEagCOoZIvIwesYm0tK4JhS7
GE+VOHyDjMmOoYIbJjycMpYdGm/GEPri10MBZoi2BPLUqQP4YAm12VpiQQHM
S7SXm2HOZI/fmonP6KwgSbu9rDjOk8hTEsygOubBnha1o2dGalqWxoIxsrLY
P+xvcDs3sVDSIsP0HWq/N3IzXvNftnBKZITqPhnhECsPzpLGk1k/TWihHHWK
2TMEE9NVydwaBQg9yFm0818xLQAzezj9sLq5l+/s3g5PqcQEH+4Axr5luqY7
9cGR5N/Jvvu6IH5LZcAjQx+Gt6lDXlXpYO7tqug7cXqYxXl3LpvYjQu8wuXL
httAUFIhNZINICoiF5u6PqF2b4A/kaKARjvhgqDJAEL3cz7PNjTi0qLa0DGb
CI49iIwJijOA5pK31HFBGdJ+JNzT/irHoCdp5DqjHhgvd3oMsiqhPkTif1jZ
gJGlF13on7vB6hi2ertBDv978RfYhrqy
       "]]}, 
     {RGBColor[1, 0, 0], Opacity[0.5], Polygon3DBox[CompressedData["
1:eJx10/tTCwAcAPDR6OI8phSNs5LMqzpWXOKrqc6dysWuuI6tuZUMnULMuSk5
Vq5DKSmOI60tlRJh+s5qqxG1VHv0sKaHzbashVKJf8APnz/h48FO2suZSSAQ
PP9x+KcwOHK3q6UF24UN2fedOyFDVTp+StkK+yXvvKZZ7chJR7/hQ+9BzOYz
vbkdsFnRTNp4Xo0pcGtr2YxKyJVte7hfrIFF9sH8JKoW5RxhZjn/FW5K1Pb8
4urg7orLa2kHtBgl4F8NbFGh18qrPh+KdKDImX9dMleDvu+9u4jePchjNUld
grTgy+z2cw3vwMdkZ3rl8n6M6/1OyY7uhAPfU3MqNqnw0mgUl8Uw4s1p312z
HdsgmKsh61obkfE0sLpjthWPuFeEoakJ5p1l1VCPP8fAzqL1H4g2dClmrMtg
vIAsi3BWbV4+1EWI3ZSFI6h3cOtKUhTgwqnLdUyqDILPxEwIX9rRPdPmVE2r
x5LqK6cfW1shheejdGOMYuizzPgGnQrrBy1Jq6QayNu48u5Fzih+tBN5kSQd
Bo2Wj6+l6CFCzGLTLXbcEJbwZ3JMj6X8gy++5n6BgS1VxTXDI3gyZ5HaVtCP
IyTX3qh7g6B1e8gknrEhoXaqYEQ5hA0f6SciKEagCOoZIvIwesYm0tK4JhS7
GE+VOHyDjMmOoYIbJjycMpYdGm/GEPri10MBZoi2BPLUqQP4YAm12VpiQQHM
S7SXm2HOZI/fmonP6KwgSbu9rDjOk8hTEsygOubBnha1o2dGalqWxoIxsrLY
P+xvcDs3sVDSIsP0HWq/N3IzXvNftnBKZITqPhnhECsPzpLGk1k/TWihHHWK
2TMEE9NVydwaBQg9yFm0818xLQAzezj9sLq5l+/s3g5PqcQEH+4Axr5luqY7
9cGR5N/Jvvu6IH5LZcAjQx+Gt6lDXlXpYO7tqug7cXqYxXl3LpvYjQu8wuXL
httAUFIhNZINICoiF5u6PqF2b4A/kaKARjvhgqDJAEL3cz7PNjTi0qLa0DGb
CI49iIwJijOA5pK31HFBGdJ+JNzT/irHoCdp5DqjHhgvd3oMsiqhPkTif1jZ
gJGlF13on7vB6hi2ertBDv978RfYhrqy
       "]]}, 
     Line3DBox[{{{-0.249422823686939, 0.3449479479046549, 
      0.2622959554785427}, {
      0.7482684710608171, -1.0348438437139649`, -0.7868878664356279}}, \
{{-0.1627920248463726, -0.9718709816273359, 0.1701926899638655}, {
      0.6616376722202506, 
      0.28197508581802605`, -0.6947846009209508}}, {{-0.249422823686939, 
      0.3449479479046549, 
      0.2622959554785427}, {-0.1627920248463726, -0.9718709816273359, 
      0.1701926899638655}}}]}},
   Axes->{True, False, False},
   Boxed->False,
   ImagePadding->25,
   ImageSize->{400, 400},
   ViewPoint->{1.4491335328327013`, -2.9204965556895566`, 0.9059314942230761},
   ViewVertical->{0.20529274174576062`, -0.4144702317137282, 
    2.350664555623899}]],
  CellChangeTimes->{
   3.655508141970215*^9, 3.655508592987759*^9, {3.6555086287409134`*^9, 
    3.6555086400267153`*^9}, 3.6555089583728657`*^9, 3.6555090359341145`*^9, {
    3.655509407557883*^9, 3.6555094195270576`*^9}, 3.6555094977722006`*^9, 
    3.6555095448464584`*^9, {3.655509580105398*^9, 3.6555096028730326`*^9}, {
    3.6555096347392063`*^9, 3.6555096672057047`*^9}},ExpressionUUID->
  "beaf25e8-5ece-43a5-b69c-d65b2f9432f9"],
 "\nSee how that worked?  Again, it\[CloseCurlyQuote]s a rotation about an \
axis that\[CloseCurlyQuote]s perpendicular to the equatorial plane.\n"
}], "Text", \
"PluginEmbeddedContent",ExpressionUUID->"17659e0b-f916-4c5e-87d3-\
1ea7426a22fd"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Mean Anomaly", "Subchapter", "PluginEmbeddedContent",ExpressionUUID->"6392bd59-a14f-4629-ba7c-\
0444048a8acf"],

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
orbit.  The eccentricity is 0.5, inclination is 45 degrees, argument of \
perigee is 45 degrees, RAAN is zero, and the spacecraft is at perigee (mean \
anomaly is zero).\n",
 Cell[BoxData[
  Graphics3DBox[{
    {RGBColor[1, 1, 0], SphereBox[{0, 0, 0}, 0.1]}, {
     Line3DBox[{{0, 0, 0}, {1.8, 0, 0}}], 
     {Opacity[0.5], 
      Polygon3DBox[{{-1.8, -1.8, 0}, {-1.8, 1.8, 0}, {1.8, 1.8, 0}, {
        1.8, -1.8, 0}, {-1.8, -1.8, 0}}]}}, {
     {RGBColor[1, 0, 0], 
      SphereBox[{0.3447492164758735, 0.249697435867631, 0.2622959554785427}, 
       0.07692307692307693]}, 
     {Thickness[0.005], Line3DBox[CompressedData["
1:eJwBQQO+/CFib1JlAgAAACIAAAADAAAA2XiFBF8Q1j/6J3noFfbPP4TRqfl0
ydA/Sv4zjZ9Wyz8kAZHvyGPUP6tif18ma9U/sPtuRwzdrz90+EtrAnzXP5TC
PaNYq9g/pgRPxTGUur+cY0NXFSfZPzNp2d33a9o/KnzDDGXU0b9L0VgyklXZ
PyQjiC7NnNo/hg4XKOsq3b9g2svbygXYP3pgyMAUPNk/NC8Aktsf5L8pI/0e
4kPVP2He8CCOVtY/wWSBwiBW6b+2MstpWynRP5L/L0gGB9I/jGo7zQsI7r9T
rPR4XbjHP2gar0a/6sg/xqFU+BUF8b+4v09tpTW2PxSlVCuEVLc/Uvx5eLWb
8r/AeMW4gImYv+ADF9tvxpm/Xbi0HjK587+CxO+9ikjCvxqK8QmzNMO/yArK
cjpT9L/P86m5Of/Qv0W0imbE2tG/IdDURD1k9L/FGb68xtDYv87zBHpOEdq/
x0DTL53r87/5rKGFSijgvy1GZ/78+OC/IUXySbbt8r/RvmLQoJzjv3GTEtfx
meS/cwr0zbVz8b/lN9/ob6XmvwC4/Znyyee/HY7ZZYoW77/xxudgpCbpvyJb
aTSBa+q/pjPhhxeM6r8h4KB3EQnrv2Nz+I5FZuy/wjqRkhZy5b9xRFqGRzvs
v6EYKMzup+2/5WHrqXbv37+4nIVUNbLsvxPGEcDcJO6/9QAcPmqf1L829Rt+
jmnsvyKEd4GL2O2/4AOGLme5wr/aNv0482Prv4JA1zC9xey/4Bbcb88Hlz+l
ZE4J2Krpv3gR+XJg9uq/Au2p+WzIxj9TzaFFLk7nv6ghG4s0e+i/u1kQI2Qi
1D/Q4lqU0GPkv7EoBGcua+W/Iib8JiFa2z/RhyS3uAbhv2Y4sDak4uG/5GYr
qVJk4D+NJsPmC6zavwVlynmOBNy/C4gRcdcd4j8+UeM5uufSv6qcG6Xq29O/
IGOaw6nJ4j/aXH6ushDGv6gaeS60Lce/CXAE2ZNh4j/0SdxjBLaqv9iDJsAH
D6y/Ob/Wvljp4D9QbAyIAy+vP1S5QyHmYLA/s4dzEiPd3D8FDB1WKNXEP+4H
Ric+4sU/2XiFBF8Q1j/6J3noFfbPP4TRqfl0ydA/N7S7Bw==
       "]]}, 
     {RGBColor[1, 0, 0], Opacity[0.5], Polygon3DBox[CompressedData["
1:eJwBQQO+/CFib1JlAgAAACIAAAADAAAA2XiFBF8Q1j/6J3noFfbPP4TRqfl0
ydA/Sv4zjZ9Wyz8kAZHvyGPUP6tif18ma9U/sPtuRwzdrz90+EtrAnzXP5TC
PaNYq9g/pgRPxTGUur+cY0NXFSfZPzNp2d33a9o/KnzDDGXU0b9L0VgyklXZ
PyQjiC7NnNo/hg4XKOsq3b9g2svbygXYP3pgyMAUPNk/NC8Aktsf5L8pI/0e
4kPVP2He8CCOVtY/wWSBwiBW6b+2MstpWynRP5L/L0gGB9I/jGo7zQsI7r9T
rPR4XbjHP2gar0a/6sg/xqFU+BUF8b+4v09tpTW2PxSlVCuEVLc/Uvx5eLWb
8r/AeMW4gImYv+ADF9tvxpm/Xbi0HjK587+CxO+9ikjCvxqK8QmzNMO/yArK
cjpT9L/P86m5Of/Qv0W0imbE2tG/IdDURD1k9L/FGb68xtDYv87zBHpOEdq/
x0DTL53r87/5rKGFSijgvy1GZ/78+OC/IUXySbbt8r/RvmLQoJzjv3GTEtfx
meS/cwr0zbVz8b/lN9/ob6XmvwC4/Znyyee/HY7ZZYoW77/xxudgpCbpvyJb
aTSBa+q/pjPhhxeM6r8h4KB3EQnrv2Nz+I5FZuy/wjqRkhZy5b9xRFqGRzvs
v6EYKMzup+2/5WHrqXbv37+4nIVUNbLsvxPGEcDcJO6/9QAcPmqf1L829Rt+
jmnsvyKEd4GL2O2/4AOGLme5wr/aNv0482Prv4JA1zC9xey/4Bbcb88Hlz+l
ZE4J2Krpv3gR+XJg9uq/Au2p+WzIxj9TzaFFLk7nv6ghG4s0e+i/u1kQI2Qi
1D/Q4lqU0GPkv7EoBGcua+W/Iib8JiFa2z/RhyS3uAbhv2Y4sDak4uG/5GYr
qVJk4D+NJsPmC6zavwVlynmOBNy/C4gRcdcd4j8+UeM5uufSv6qcG6Xq29O/
IGOaw6nJ4j/aXH6ushDGv6gaeS60Lce/CXAE2ZNh4j/0SdxjBLaqv9iDJsAH
D6y/Ob/Wvljp4D9QbAyIAy+vP1S5QyHmYLA/s4dzEiPd3D8FDB1WKNXEP+4H
Ric+4sU/2XiFBF8Q1j/6J3noFfbPP4TRqfl0ydA/N7S7Bw==
       "]]}, 
     Line3DBox[{{{0.3447492164758735, 0.249697435867631, 
      0.2622959554785427}, {-1.0342476494276205`, -0.749092307602893, \
-0.7868878664356279}}, {{-0.9720003091156664, 0.1620180464081475, 
      0.1701926899638655}, {
      0.28250187616391936`, -0.6614129181434094, -0.6947846009209508}}, {{
      0.3447492164758735, 0.249697435867631, 
      0.2622959554785427}, {-0.9720003091156664, 0.1620180464081475, 
      0.1701926899638655}}}]}},
   Axes->{True, False, False},
   Boxed->False,
   ImagePadding->25,
   ImageSize->{400, 400},
   ViewPoint->{1.4491335328327013`, -2.9204965556895566`, 0.9059314942230761},
   ViewVertical->{0.20529274174576062`, -0.4144702317137282, 
    2.350664555623899}]],
  CellChangeTimes->{
   3.655508141970215*^9, 3.655508592987759*^9, {3.6555086287409134`*^9, 
    3.6555086400267153`*^9}, 3.6555089583728657`*^9, 3.6555090359341145`*^9, {
    3.655509407557883*^9, 3.6555094195270576`*^9}, 3.6555094977722006`*^9, 
    3.6555095448464584`*^9, {3.655509580105398*^9, 3.6555096028730326`*^9}, {
    3.6555096347392063`*^9, 3.6555096672057047`*^9}},ExpressionUUID->
  "2b0a6b35-acac-4fb5-b785-4cd052ff36ec"],
 "\nIf mean anomaly is zero at perigee, it must be 180 degrees at apogee \
(farthest point in the orbit from Earth).\n",
 Cell[BoxData[
  Graphics3DBox[{
    {RGBColor[1, 1, 0], SphereBox[{0, 0, 0}, NCache[Rational[1, 10], 0.1]]}, {
     Line3DBox[{{0, 0, 0}, {1.8, 0, 0}}], 
     {Opacity[0.5], 
      Polygon3DBox[{{-1.8, -1.8, 0}, {-1.8, 1.8, 0}, {1.8, 1.8, 0}, {
        1.8, -1.8, 0}, {-1.8, -1.8, 0}}]}}, {
     {RGBColor[1, 0, 0], 
      SphereBox[{-1.0349340441247414`, -0.7486412007388249, \
-0.786413998910627}, NCache[Rational[1, 13], 0.07692307692307693]]}, 
     {Thickness[0.005], Line3DBox[CompressedData["
1:eJwBQQO+/CFib1JlAgAAACIAAAADAAAA2XiFBF8Q1j/6J3noFfbPP4TRqfl0
ydA/Sv4zjZ9Wyz8kAZHvyGPUP6tif18ma9U/sPtuRwzdrz90+EtrAnzXP5TC
PaNYq9g/pgRPxTGUur+cY0NXFSfZPzNp2d33a9o/KnzDDGXU0b9L0VgyklXZ
PyQjiC7NnNo/hg4XKOsq3b9g2svbygXYP3pgyMAUPNk/NC8Aktsf5L8pI/0e
4kPVP2He8CCOVtY/wWSBwiBW6b+2MstpWynRP5L/L0gGB9I/jGo7zQsI7r9T
rPR4XbjHP2gar0a/6sg/xqFU+BUF8b+4v09tpTW2PxSlVCuEVLc/Uvx5eLWb
8r/AeMW4gImYv+ADF9tvxpm/Xbi0HjK587+CxO+9ikjCvxqK8QmzNMO/yArK
cjpT9L/P86m5Of/Qv0W0imbE2tG/IdDURD1k9L/FGb68xtDYv87zBHpOEdq/
x0DTL53r87/5rKGFSijgvy1GZ/78+OC/IUXySbbt8r/RvmLQoJzjv3GTEtfx
meS/cwr0zbVz8b/lN9/ob6XmvwC4/Znyyee/HY7ZZYoW77/xxudgpCbpvyJb
aTSBa+q/pjPhhxeM6r8h4KB3EQnrv2Nz+I5FZuy/wjqRkhZy5b9xRFqGRzvs
v6EYKMzup+2/5WHrqXbv37+4nIVUNbLsvxPGEcDcJO6/9QAcPmqf1L829Rt+
jmnsvyKEd4GL2O2/4AOGLme5wr/aNv0482Prv4JA1zC9xey/4Bbcb88Hlz+l
ZE4J2Krpv3gR+XJg9uq/Au2p+WzIxj9TzaFFLk7nv6ghG4s0e+i/u1kQI2Qi
1D/Q4lqU0GPkv7EoBGcua+W/Iib8JiFa2z/RhyS3uAbhv2Y4sDak4uG/5GYr
qVJk4D+NJsPmC6zavwVlynmOBNy/C4gRcdcd4j8+UeM5uufSv6qcG6Xq29O/
IGOaw6nJ4j/aXH6ushDGv6gaeS60Lce/CXAE2ZNh4j/0SdxjBLaqv9iDJsAH
D6y/Ob/Wvljp4D9QbAyIAy+vP1S5QyHmYLA/s4dzEiPd3D8FDB1WKNXEP+4H
Ric+4sU/2XiFBF8Q1j/6J3noFfbPP4TRqfl0ydA/N7S7Bw==
       "]]}, 
     {RGBColor[1, 0, 0], Opacity[0.5], Polygon3DBox[CompressedData["
1:eJwBQQO+/CFib1JlAgAAACIAAAADAAAA2XiFBF8Q1j/6J3noFfbPP4TRqfl0
ydA/Sv4zjZ9Wyz8kAZHvyGPUP6tif18ma9U/sPtuRwzdrz90+EtrAnzXP5TC
PaNYq9g/pgRPxTGUur+cY0NXFSfZPzNp2d33a9o/KnzDDGXU0b9L0VgyklXZ
PyQjiC7NnNo/hg4XKOsq3b9g2svbygXYP3pgyMAUPNk/NC8Aktsf5L8pI/0e
4kPVP2He8CCOVtY/wWSBwiBW6b+2MstpWynRP5L/L0gGB9I/jGo7zQsI7r9T
rPR4XbjHP2gar0a/6sg/xqFU+BUF8b+4v09tpTW2PxSlVCuEVLc/Uvx5eLWb
8r/AeMW4gImYv+ADF9tvxpm/Xbi0HjK587+CxO+9ikjCvxqK8QmzNMO/yArK
cjpT9L/P86m5Of/Qv0W0imbE2tG/IdDURD1k9L/FGb68xtDYv87zBHpOEdq/
x0DTL53r87/5rKGFSijgvy1GZ/78+OC/IUXySbbt8r/RvmLQoJzjv3GTEtfx
meS/cwr0zbVz8b/lN9/ob6XmvwC4/Znyyee/HY7ZZYoW77/xxudgpCbpvyJb
aTSBa+q/pjPhhxeM6r8h4KB3EQnrv2Nz+I5FZuy/wjqRkhZy5b9xRFqGRzvs
v6EYKMzup+2/5WHrqXbv37+4nIVUNbLsvxPGEcDcJO6/9QAcPmqf1L829Rt+
jmnsvyKEd4GL2O2/4AOGLme5wr/aNv0482Prv4JA1zC9xey/4Bbcb88Hlz+l
ZE4J2Krpv3gR+XJg9uq/Au2p+WzIxj9TzaFFLk7nv6ghG4s0e+i/u1kQI2Qi
1D/Q4lqU0GPkv7EoBGcua+W/Iib8JiFa2z/RhyS3uAbhv2Y4sDak4uG/5GYr
qVJk4D+NJsPmC6zavwVlynmOBNy/C4gRcdcd4j8+UeM5uufSv6qcG6Xq29O/
IGOaw6nJ4j/aXH6ushDGv6gaeS60Lce/CXAE2ZNh4j/0SdxjBLaqv9iDJsAH
D6y/Ob/Wvljp4D9QbAyIAy+vP1S5QyHmYLA/s4dzEiPd3D8FDB1WKNXEP+4H
Ric+4sU/2XiFBF8Q1j/6J3noFfbPP4TRqfl0ydA/N7S7Bw==
       "]]}, 
     Line3DBox[{{{0.3447492164758735, 0.249697435867631, 
      0.2622959554785427}, {-1.0342476494276205`, -0.749092307602893, \
-0.7868878664356279}}, {{-0.9720003091156664, 0.1620180464081475, 
      0.1701926899638655}, {
      0.28250187616391936`, -0.6614129181434094, -0.6947846009209508}}, {{
      0.3447492164758735, 0.249697435867631, 
      0.2622959554785427}, {-0.9720003091156664, 0.1620180464081475, 
      0.1701926899638655}}}]}},
   Axes->{True, False, False},
   Boxed->False,
   ImagePadding->25,
   ImageSize->{400, 400},
   ViewPoint->{1.4491335328327013`, -2.9204965556895566`, 0.9059314942230761},
   ViewVertical->{0.20529274174576062`, -0.4144702317137282, 
    2.350664555623899}]],
  CellChangeTimes->{
   3.655508141970215*^9, 3.655508592987759*^9, {3.6555086287409134`*^9, 
    3.6555086400267153`*^9}, 3.6555089583728657`*^9, 3.6555090359341145`*^9, {
    3.655509407557883*^9, 3.6555094195270576`*^9}, 3.6555094977722006`*^9, 
    3.6555095448464584`*^9, {3.655509580105398*^9, 3.6555096028730326`*^9}, {
    3.6555096347392063`*^9, 3.6555096672057047`*^9}},ExpressionUUID->
  "c647a2b4-f176-4625-a64c-c92178733e51"],
 "\n"
}], "Text", \
"PluginEmbeddedContent",ExpressionUUID->"9004cef8-b7b3-4694-8117-\
ba4b9473188d"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Wrapping It Up", "Chapter", "PluginEmbeddedContent",ExpressionUUID->"d308281c-8d1b-436f-a4c7-\
4c1661b488be"],

Cell["\<\
We\[CloseCurlyQuote]ve described each of the Keplerian elements that are \
collectively used to uniquely describe any orbit.  The next step is to play \
with the elements and try different combinations yourself.\[LineSeparator]\
\>", "Text", \
"PluginEmbeddedContent",ExpressionUUID->"0d2c995e-f8ca-467c-a155-\
732de488f460"],

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
      RowBox[{"\[Omega]", ",", "0", ",", "\"\<periapsis \[Omega]\>\""}], 
      "}"}], ",", "0", ",", 
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
   RowBox[{"SaveDefinitions", "\[Rule]", " ", "True"}]}], "]"}]], "Input", \
"PluginEmbeddedContent",ExpressionUUID->"5b5da2a9-baf3-4426-8f09-\
d2675ba09a04"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a$$ = 0.635, $CellContext`e$$ = 
    0.655, $CellContext`i$$ = -2.5761059759436304`, $CellContext`M$$ = 
    2.1991148575128556`, $CellContext`\[Omega]$$ = 
    6.283185307179586, $CellContext`\[CapitalOmega]$$ = 6.283185307179586, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`a$$], 0.5, "semi-major axis a"}, 0.1, 1}, {{
       Hold[$CellContext`e$$], 0, "eccentricity e"}, 0, 0.99}, {{
       Hold[$CellContext`i$$], 0, "inclination i"}, (-180) Degree, 180 
      Degree}, {{
       Hold[$CellContext`\[Omega]$$], 0, "periapsis \[Omega]"}, 0, 360 
      Degree}, {{
       Hold[$CellContext`\[CapitalOmega]$$], 0, "node \[CapitalOmega]"}, 0, 
      360 Degree}, {{
       Hold[$CellContext`M$$], 0, "mean anomaly M"}, 0, 360 Degree}}, 
    Typeset`size$$ = {400., {197., 203.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = False, $CellContext`a$733$$ =
     0, $CellContext`e$734$$ = 0, $CellContext`i$735$$ = 
    0, $CellContext`\[Omega]$736$$ = 0, $CellContext`\[CapitalOmega]$737$$ = 
    0, $CellContext`M$738$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`a$$ = 0.5, $CellContext`e$$ = 
        0, $CellContext`i$$ = 0, $CellContext`M$$ = 
        0, $CellContext`\[Omega]$$ = 0, $CellContext`\[CapitalOmega]$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`a$$, $CellContext`a$733$$, 0], 
        Hold[$CellContext`e$$, $CellContext`e$734$$, 0], 
        Hold[$CellContext`i$$, $CellContext`i$735$$, 0], 
        Hold[$CellContext`\[Omega]$$, $CellContext`\[Omega]$736$$, 0], 
        Hold[$CellContext`\[CapitalOmega]$$, \
$CellContext`\[CapitalOmega]$737$$, 0], 
        Hold[$CellContext`M$$, $CellContext`M$738$$, 0]}, 
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
         Tiny}, {{$CellContext`\[Omega]$$, 0, "periapsis \[Omega]"}, 0, 360 
         Degree, ImageSize -> 
         Tiny}, {{$CellContext`\[CapitalOmega]$$, 0, "node \[CapitalOmega]"}, 
         0, 360 Degree, ImageSize -> 
         Tiny}, {{$CellContext`M$$, 0, "mean anomaly M"}, 0, 360 Degree, 
         ImageSize -> Tiny}}, "Options" :> {ControlPlacement -> Left}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{654., {228., 235.}},
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
  Manipulate`InterpretManipulate[1]]], "Output", \
"PluginEmbeddedContent",ExpressionUUID->"b2640b30-1b8f-4e28-84b2-\
79bb4ef1fe88"]
}, {2}]],

Cell[BoxData[""], "Input", "PluginEmbeddedContent",ExpressionUUID->"c9c000a9-f3ae-49e1-8f6a-\
58fd4f4a08c5"]
}, Open  ]]
},
WindowSize->{1908.2833333333333`, 7711.4},
Visible->True,
AuthoredSize->{1908, 7711},
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
Cell[1464, 33, 10565, 313, 19, "Input", "ExpressionUUID" -> \
"01dfe16a-aa4a-4630-bb1c-ef705aa0a21e",
 CellOpen->False,
 InitializationCell->True],
Cell[CellGroupData[{
Cell[12054, 350, 223, 5, 47, "Chapter", "ExpressionUUID" -> \
"dc3af5a6-2d1d-48f5-812b-3e22a8e842ee"],
Cell[12280, 357, 2310, 35, 206, "Text", "ExpressionUUID" -> \
"1ad7f854-e3ef-475c-8981-7f77452ae6aa"]
}, Open  ]],
Cell[CellGroupData[{
Cell[14627, 397, 151, 1, 47, "Chapter", "ExpressionUUID" -> \
"a7b655f8-c3d8-4ab0-b010-bc05d29ae6a3"],
Cell[14781, 400, 1146, 18, 149, "Text", "ExpressionUUID" -> \
"228ca946-1c92-4113-844c-a853560fb96b"],
Cell[CellGroupData[{
Cell[15952, 422, 139, 1, 39, "Subchapter", "ExpressionUUID" -> \
"7fe7ceb6-b242-44d4-8ac1-7fbaf0b351ba"],
Cell[16094, 425, 867, 15, 111, "Text", "ExpressionUUID" -> \
"ee83e286-c5c3-4213-b122-237413fa8d25"]
}, Open  ]],
Cell[CellGroupData[{
Cell[16998, 445, 139, 1, 39, "Subchapter", "ExpressionUUID" -> \
"d09f2a0d-41f9-4b57-af9b-317d8be29f39"],
Cell[17140, 448, 1790, 26, 187, "Text", "ExpressionUUID" -> \
"505ff618-c6aa-4f5d-9457-32516025f013"]
}, Open  ]],
Cell[CellGroupData[{
Cell[18967, 479, 140, 1, 39, "Subchapter", "ExpressionUUID" -> \
"6b6fc64e-2170-4da9-afa1-49bd4c3a1ab9"],
Cell[19110, 482, 1193, 17, 130, "Text", "ExpressionUUID" -> \
"9d1de409-5641-4c83-a4a1-0c168c1f4bad"],
Cell[CellGroupData[{
Cell[20328, 503, 8433, 214, 426, "Input", "ExpressionUUID" -> \
"862cd7e1-fdfa-4f0a-957e-e4128aba1907"],
Cell[28764, 719, 6160, 118, 415, "Output", "ExpressionUUID" -> \
"917df7c4-2425-49c2-9315-0683559546f2"]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[34985, 844, 133, 1, 47, "Chapter", "ExpressionUUID" -> \
"d42025f0-4ab1-4daf-9a5a-e0e73ec88607"],
Cell[35121, 847, 365, 7, 16, "Text", "ExpressionUUID" -> \
"a85f7261-8f84-4fcb-a45b-4747c631e4c4"],
Cell[CellGroupData[{
Cell[35511, 858, 115, 1, 39, "Subchapter", "ExpressionUUID" -> \
"825a1553-8619-4001-98c0-f116e6a6ff98"],
Cell[35629, 861, 6376, 119, 911, "Text", "ExpressionUUID" -> \
"b9316d8f-48c1-4f12-bdde-f7b073fc115f"]
}, Open  ]],
Cell[CellGroupData[{
Cell[42042, 985, 123, 1, 39, "Subchapter", "ExpressionUUID" -> \
"a35df9b1-bb38-45e1-821d-953fe170be97"],
Cell[42168, 988, 12955, 231, 1482, "Text", "ExpressionUUID" -> \
"689ddad3-e1c2-4ba0-b5ba-769e088089ad"]
}, Open  ]],
Cell[CellGroupData[{
Cell[55160, 1224, 148, 1, 39, "Subchapter", "ExpressionUUID" -> \
"6dfcf3eb-2605-4059-b122-58e5e90c37cd"],
Cell[55311, 1227, 9711, 174, 1025, "Text", "ExpressionUUID" -> \
"17659e0b-f916-4c5e-87d3-1ea7426a22fd"]
}, Open  ]],
Cell[CellGroupData[{
Cell[65059, 1406, 116, 1, 39, "Subchapter", "ExpressionUUID" -> \
"6392bd59-a14f-4629-ba7c-0444048a8acf"],
Cell[65178, 1409, 9310, 169, 1006, "Text", "ExpressionUUID" -> \
"9004cef8-b7b3-4694-8117-ba4b9473188d"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[74537, 1584, 115, 1, 47, "Chapter", "ExpressionUUID" -> \
"d308281c-8d1b-436f-a4c7-4c1661b488be"],
Cell[74655, 1587, 335, 6, 35, "Text", "ExpressionUUID" -> \
"0d2c995e-f8ca-467c-a155-732de488f460"],
Cell[CellGroupData[{
Cell[75015, 1597, 3129, 84, 263, "Input", "ExpressionUUID" -> \
"5b5da2a9-baf3-4426-8f09-d2675ba09a04"],
Cell[78147, 1683, 15852, 320, 465, "Output", "ExpressionUUID" -> \
"b2640b30-1b8f-4e28-84b2-79bb4ef1fe88"]
}, {2}]],
Cell[94011, 2006, 108, 1, 15, "Input", "ExpressionUUID" -> \
"c9c000a9-f3ae-49e1-8f6a-58fd4f4a08c5"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature @vDpE1UiO9gPNDwSxzzynYNT *)
