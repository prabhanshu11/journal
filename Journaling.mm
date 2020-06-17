<map version="freeplane 1.7.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Journaling" FOLDED="false" ID="ID_303293361" CREATED="1589325442482" MODIFIED="1589640647100">
<font SIZE="18"/>
<hook NAME="MapStyle" zoom="0.685">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" fit_to_viewport="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="15" RULE="ON_BRANCH_CREATION"/>
<node TEXT="App Design" POSITION="right" ID="ID_1543399624" CREATED="1589325504109" MODIFIED="1589946198702">
<edge COLOR="#ff0000"/>
<font NAME="Noto Sans"/>
<node TEXT="Terminal pops automatically" ID="ID_973335019" CREATED="1589325535816" MODIFIED="1589946198703">
<font NAME="Noto Sans"/>
</node>
<node TEXT="Questions are asked, skipped if &lt;CR&gt; is pressed twice" ID="ID_1857258188" CREATED="1589325577533" MODIFIED="1589946198706">
<font NAME="Noto Sans" STRIKETHROUGH="true"/>
</node>
<node TEXT="There should also be a method to correct a previously answered questioned" ID="ID_1365764535" CREATED="1589331895895" MODIFIED="1589946198708">
<font NAME="Noto Sans"/>
</node>
<node TEXT="Skipped questions are asked the next day. A list of all the previously skipped questions is showed everyday." FOLDED="true" ID="ID_1398966182" CREATED="1589325603136" MODIFIED="1589946198710">
<font NAME="Noto Sans"/>
<node TEXT="There is an option to answer them" ID="ID_775757074" CREATED="1589325667504" MODIFIED="1589640647105"/>
</node>
<node TEXT="A text file is generated which looks like a Journal Entry. Some pretty progress bars are also made." ID="ID_1822688880" CREATED="1589325688322" MODIFIED="1589946198710">
<font NAME="Noto Sans"/>
</node>
<node TEXT="Cumulative progress graphic" FOLDED="true" ID="ID_327838902" CREATED="1589325746594" MODIFIED="1589946198711">
<font NAME="Noto Sans"/>
<node TEXT="Graphic is overlayed on the wallpaper" ID="ID_445767103" CREATED="1589325807216" MODIFIED="1589946198711">
<font NAME="Noto Sans"/>
</node>
</node>
<node TEXT="Use dateutil library later to parse datetimes to include better support for timedeltas" ID="ID_1277565481" CREATED="1590869790806" MODIFIED="1590869838228"/>
<node TEXT="Task class and functions" ID="ID_1214645388" CREATED="1591144754182" MODIFIED="1591144781843">
<node TEXT="Task scheduler func" ID="ID_651416275" CREATED="1591144781852" MODIFIED="1591144854804"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Asks for the date of task to be done. Gives option between, today, relative and date
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="In case task not done on that day" ID="ID_877841382" CREATED="1591144854938" MODIFIED="1591144886430"><richcontent TYPE="DETAILS">

<html>
  

  <head>

  </head>
  <body>
  </body>
</html>
</richcontent>
<node TEXT="" ID="ID_723886689" CREATED="1591144909014" MODIFIED="1591144909014"/>
</node>
</node>
</node>
<node TEXT="Design" POSITION="right" ID="ID_1403098823" CREATED="1589325515902" MODIFIED="1589946198711">
<edge COLOR="#0000ff"/>
<font NAME="Noto Sans"/>
<node TEXT="Questions which are asked everyday" ID="ID_1569789849" CREATED="1589325942320" MODIFIED="1589946198711">
<font NAME="Noto Sans"/>
<node TEXT="Questions about previous day" ID="ID_1343911160" CREATED="1589499137338" MODIFIED="1589946198711">
<font NAME="Noto Sans"/>
<node TEXT="Essentials" ID="ID_1036088411" CREATED="1589325954410" MODIFIED="1589946198711">
<font NAME="Noto Sans"/>
<node TEXT="1. When did you slept and woke up" ID="ID_1468040040" CREATED="1589325963577" MODIFIED="1589946198711"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Answer to be given in military time.
    </p>
    <p>
      &quot;
    </p>
    <p>
      0800
    </p>
    <p>
      1500
    </p>
    <p>
      &quot;
    </p>
  </body>
</html>
</richcontent>
<font NAME="Noto Sans" STRIKETHROUGH="true"/>
</node>
<node TEXT="2. When did you eat and for how long" ID="ID_347249110" CREATED="1589325990910" MODIFIED="1589946198711"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      0630, 30m
    </p>
    <p>
      1530, 30m
    </p>
    <p>
      
    </p>
    <p>
      **two &lt;CR&gt;s make the question go away
    </p>
  </body>
</html>
</richcontent>
<font NAME="Noto Sans" STRIKETHROUGH="true"/>
</node>
<node TEXT="3. If and when did you meditate and for how long ?" ID="ID_1958144355" CREATED="1589326018169" MODIFIED="1589946198711">
<font NAME="Noto Sans" STRIKETHROUGH="true"/>
</node>
<node TEXT="4. If and when did you exercise and for how long ?" ID="ID_537621437" CREATED="1589326047901" MODIFIED="1589946198712">
<font NAME="Noto Sans" STRIKETHROUGH="true"/>
</node>
</node>
<node TEXT="Deep Work" ID="ID_1378833173" CREATED="1589326399510" MODIFIED="1589946198712">
<font NAME="Noto Sans"/>
<node TEXT="On a scale of 1-10 how much satisfied with your work in Slot 1 ?" ID="ID_1364679362" CREATED="1589326521588" MODIFIED="1589946198712">
<font NAME="Noto Sans"/>
</node>
<node TEXT="Same for slot 2" ID="ID_1959496371" CREATED="1589326661573" MODIFIED="1589946198712">
<font NAME="Noto Sans"/>
</node>
<node TEXT="Did you finish &lt;Task 1&gt;" ID="ID_744929533" CREATED="1589326699762" MODIFIED="1589946198712">
<font NAME="Noto Sans"/>
<node TEXT="If yes" ID="ID_1710344565" CREATED="1589326738542" MODIFIED="1589946198712">
<font NAME="Noto Sans"/>
<node TEXT="You thought it would take &lt;from previous day&gt; hours. How much time did it take ?" ID="ID_1867894938" CREATED="1589326758166" MODIFIED="1589946198712">
<font NAME="Noto Sans"/>
</node>
<node TEXT="How satisfied do you feel about it ?" ID="ID_1821815332" CREATED="1589326828497" MODIFIED="1589946198713">
<font NAME="Noto Sans"/>
</node>
</node>
<node TEXT="If no" ID="ID_1754079208" CREATED="1589326913331" MODIFIED="1589946198713">
<font NAME="Noto Sans"/>
<node TEXT="Did you atleast start ?" ID="ID_205052030" CREATED="1589326922972" MODIFIED="1589946198713">
<font NAME="Noto Sans"/>
<node TEXT="Yes" ID="ID_984702400" CREATED="1589326951431" MODIFIED="1589946198713">
<font NAME="Noto Sans"/>
<node TEXT="You thought it would take &lt;from previous day&gt; hours. How much time did you spend on it ?" ID="ID_1439063788" CREATED="1589326956280" MODIFIED="1589946198713">
<font NAME="Noto Sans"/>
</node>
<node TEXT="Where did you go wrong ? or&#xa;Any notes to remember for future reference." ID="ID_1282478680" CREATED="1589327027592" MODIFIED="1589946198713">
<font NAME="Noto Sans"/>
</node>
<node TEXT="Continue working on it today or some other day ?" ID="ID_1216216371" CREATED="1589498983414" MODIFIED="1589946198714">
<font NAME="Noto Sans"/>
<node TEXT="If today" ID="ID_1140356455" CREATED="1589499107919" MODIFIED="1589946198714">
<font NAME="Noto Sans"/>
<node TEXT="" ID="ID_1422893253" CREATED="1589499112055" MODIFIED="1589946198714">
<font NAME="Noto Sans"/>
</node>
</node>
</node>
</node>
<node TEXT="No" ID="ID_119562474" CREATED="1589327162704" MODIFIED="1589946198714">
<font NAME="Noto Sans"/>
<node TEXT="Why ?" ID="ID_199862206" CREATED="1589327175505" MODIFIED="1589946198714">
<font NAME="Noto Sans"/>
</node>
</node>
</node>
<node TEXT="Do you want to postpone it to morrow." ID="ID_631837096" CREATED="1589460366903" MODIFIED="1589946198714">
<font NAME="Noto Sans"/>
</node>
</node>
</node>
</node>
<node TEXT="Gratitude" ID="ID_172680260" CREATED="1589499448229" MODIFIED="1589946198714">
<font NAME="Noto Sans"/>
<node TEXT="Amazing things that happened today [recommended: three points]" ID="ID_1880014270" CREATED="1589499466985" MODIFIED="1589946198714"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      This is the time to review your day, but there is no need to be harsh. Be honest but kind to yourself. What actions could you have taken today that would have made your day even better. This is a personal reminder that you have the power to change your perception of the past and influence the future.
    </p>
  </body>
</html>
</richcontent>
<font NAME="Noto Sans"/>
<node TEXT="Is one of those things completing one of the tasks ?" ID="ID_1477001957" CREATED="1589500434695" MODIFIED="1589946198715">
<font NAME="Noto Sans"/>
<node TEXT="Which one" ID="ID_1912858387" CREATED="1589500463272" MODIFIED="1589946198715">
<font NAME="Noto Sans"/>
</node>
</node>
</node>
<node TEXT="How could I have made yesterday even better ? or&#xa;What would a better yesterday look like ?&#xa;[minimum two points]" ID="ID_1953577873" CREATED="1589500052866" MODIFIED="1589946198715"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Eg:
    </p>
    <p>
      &gt; If I had woken up when I alarm. I should set two alarms.
    </p>
    <p>
      &gt; If I were cautious while peeling onions. Skin under the nail hurts very much. Remember to microwave it for 10secs and use a knife.
    </p>
  </body>
</html>
</richcontent>
<font NAME="Noto Sans"/>
</node>
</node>
</node>
<node TEXT="Schedule for today" ID="ID_67458448" CREATED="1589499181398" MODIFIED="1591157870657">
<font NAME="Noto Sans"/>
<node TEXT="You have following tasks pending from previous days, which ones do you want to do today" ID="ID_1950976785" CREATED="1589499202945" MODIFIED="1589946198715">
<font NAME="Noto Sans"/>
<node TEXT="If yes: add it to task list" ID="ID_397380541" CREATED="1589499340305" MODIFIED="1589946198716">
<font NAME="Noto Sans"/>
</node>
</node>
<node TEXT="Gratitude" ID="ID_797596777" CREATED="1589499291627" MODIFIED="1591157884397">
<font NAME="Noto Sans"/>
<node TEXT="I am grateful for" ID="ID_423808846" CREATED="1591157884414" MODIFIED="1591157900332"/>
<node TEXT="What would make today great" ID="ID_515898355" CREATED="1591157900435" MODIFIED="1591157907154"/>
<node TEXT="daily affirmations" ID="ID_599590245" CREATED="1591157907260" MODIFIED="1591157921718"/>
</node>
</node>
</node>
<node TEXT="Distraction Journal" ID="ID_340603421" CREATED="1590644406875" MODIFIED="1590644418299">
<node TEXT="Open a text file after the morning questions are opened." ID="ID_1875031460" CREATED="1590644418312" MODIFIED="1590646005046"/>
</node>
<node TEXT="Journal Entry" ID="ID_1062335446" CREATED="1589600777511" MODIFIED="1589946198716">
<font NAME="Noto Sans"/>
<node TEXT="Daily" ID="ID_1624132510" CREATED="1589600787822" MODIFIED="1589946198716">
<font NAME="Noto Sans"/>
</node>
<node TEXT="Weekly, Monthly, ..." ID="ID_1925834843" CREATED="1589600793802" MODIFIED="1589946198716">
<font NAME="Noto Sans"/>
</node>
<node TEXT="Text that is to be sent on to evernote" ID="ID_495167177" CREATED="1589600835595" MODIFIED="1589946198716">
<font NAME="Noto Sans"/>
<node TEXT="Requirements" ID="ID_519212621" CREATED="1589600920418" MODIFIED="1589946198716">
<font NAME="Noto Sans"/>
<node TEXT="Should have a hand written aspect." ID="ID_1472124961" CREATED="1589600947831" MODIFIED="1589946198716">
<font NAME="Noto Sans"/>
</node>
</node>
<node TEXT="There should be a system to write the tasks such that, I can jump from per-date mode to per-project mode" ID="ID_727376018" CREATED="1589946263412" MODIFIED="1589946322549"/>
</node>
</node>
<node TEXT="Summary Picture" ID="ID_1643759968" CREATED="1590443558883" MODIFIED="1590443577509">
<node TEXT="Daily" ID="ID_1899885546" CREATED="1590443639404" MODIFIED="1590443641360">
<node TEXT="Chapter from tao of seneca" ID="ID_772941766" CREATED="1590443642812" MODIFIED="1590443657043"/>
<node TEXT="Today&apos;s distraction points" ID="ID_182153129" CREATED="1590443701635" MODIFIED="1590443714673"/>
<node TEXT="Today&apos;s TODO" ID="ID_1638076159" CREATED="1590607486897" MODIFIED="1590607492077"/>
<node TEXT="Graph about meditation, exercise, sleep n food" ID="ID_490639720" CREATED="1590607492300" MODIFIED="1590607508264">
<node TEXT="Meditation" ID="ID_829832897" CREATED="1590607508983" MODIFIED="1590607532594"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      x: day, y: min_meditated
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Exercise" ID="ID_1574605161" CREATED="1590607533011" MODIFIED="1590607574816"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Use a bar graph in which the bar is multicolored. Each colour representing areas&#160;&#160;Legs, Back, Chest, . . .
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Sleep" ID="ID_404559560" CREATED="1590607575610" MODIFIED="1590607613647"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Colour code the bars which are utilized for sleeping(optional: meditating, exercise,... if it does not look too much congested)
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Picture Design" POSITION="right" ID="ID_1554165987" CREATED="1590443593782" MODIFIED="1590443599853">
<edge COLOR="#ff00ff"/>
<node TEXT="Use pywall to automaticall generate colour schemes" ID="ID_564951369" CREATED="1590443664359" MODIFIED="1590443778081"/>
<node TEXT="Make texture using" ID="ID_1399481261" CREATED="1590443778949" MODIFIED="1590607793072"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      https://www.youtube.com/watch?v=XSgerkCVbFc&amp;t=2419s
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="TODO list for the project" POSITION="left" ID="ID_290466094" CREATED="1589598297720" MODIFIED="1589946198716">
<edge COLOR="#00007c"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Ideas which are finalised are to be added on this list
    </p>
  </body>
</html>
</richcontent>
<font NAME="Noto Sans"/>
</node>
<node TEXT="Ideas" POSITION="left" ID="ID_456760199" CREATED="1589598283167" MODIFIED="1589946198716">
<edge COLOR="#7c0000"/>
<font NAME="Noto Sans"/>
<node TEXT="Ability to convert some tasks into projects." ID="ID_1900552439" CREATED="1589598354935" MODIFIED="1589946198716"><richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Or if a series of tasks keeps coming make a project and track time on it.
    </p>
    <p>
      Or if a task is taking too long to complete, as to break it or convert it into project.
    </p>
    <p>
      Maybe make a class such that all the tasks are projects but with just a single task. (for later, don't waste time on this now)
    </p>
  </body>
</html>
</richcontent>
<font NAME="Noto Sans"/>
</node>
<node TEXT="Make categories or tags which can be assigned to tasks." FOLDED="true" ID="ID_1965546477" CREATED="1589598647410" MODIFIED="1589946198717">
<font NAME="Noto Sans"/>
<node TEXT="Summary of the time spent on tags also to be presented." ID="ID_1673617164" CREATED="1589598835368" MODIFIED="1589598840675"/>
<node TEXT="Have a category for shallow work which can be batched." ID="ID_296234753" CREATED="1589598853090" MODIFIED="1589598855196"/>
</node>
<node TEXT="Distraction Journal" FOLDED="true" ID="ID_93354043" CREATED="1589598875562" MODIFIED="1589946198717">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="3" TRANSPARENCY="200" DASH="3 3" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1850840233" STARTINCLINATION="215;0;" ENDINCLINATION="215;0;" STARTARROW="NONE" ENDARROW="NONE"/>
<font NAME="Noto Sans"/>
<node TEXT="Test out the different mediums for now" ID="ID_1218739016" CREATED="1589599019893" MODIFIED="1589599030273"/>
</node>
<node TEXT="Gratitude Journal" ID="ID_1638441658" CREATED="1589598888635" MODIFIED="1589946198718">
<font NAME="Noto Sans"/>
</node>
<node TEXT="Ideas which would help:&#xa;To cutoff distractions&#xa;AND / OR&#xa;To start doing the task" ID="ID_1850840233" CREATED="1589599060105" MODIFIED="1589946198718">
<font NAME="Noto Sans"/>
<node TEXT="Reducing the speed of internet during DW hours" ID="ID_1517771566" CREATED="1589599393111" MODIFIED="1589946198718">
<font NAME="Noto Sans"/>
</node>
<node TEXT="Leveraging the 20 second rule" ID="ID_1456903740" CREATED="1589599406873" MODIFIED="1589946198719">
<font NAME="Noto Sans"/>
<node TEXT="Keeping sim out of jiofi" ID="ID_1047709381" CREATED="1589599459094" MODIFIED="1589946198719">
<font NAME="Noto Sans"/>
</node>
<node TEXT="Keep a list of things which require internet access in distraction journal and turning on the internet after the session" ID="ID_1293461219" CREATED="1589599481136" MODIFIED="1589946198719">
<font NAME="Noto Sans"/>
</node>
</node>
</node>
<node TEXT="When str--&gt;Task, show matches from previous times with their stats of time n satisfaction. Matches could be done by tokenizing the strings and percentaging the same words." ID="ID_1552057060" CREATED="1589946127851" MODIFIED="1591068359288"/>
</node>
<node TEXT="Design decisions" POSITION="left" ID="ID_1251525478" CREATED="1589599900020" MODIFIED="1589946198719">
<edge COLOR="#7c007c"/>
<font NAME="Noto Sans"/>
<node TEXT="GTD vs gratitude" ID="ID_1283092605" CREATED="1589599911501" MODIFIED="1589946198719"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Do I want to make an app which is intrusive such that it pops up on me for every task ? or
    </p>
    <p>
      It presents as a gratitude journal at the end of the day (or during the day) to evaluate my life.
    </p>
  </body>
</html>
</richcontent>
<font NAME="Noto Sans"/>
<node TEXT="Aspects of GTD" ID="ID_224795923" CREATED="1589600433949" MODIFIED="1589946198720">
<font NAME="Noto Sans"/>
</node>
<node TEXT="Aspects of gratitude" ID="ID_209281602" CREATED="1589600439127" MODIFIED="1589946198720">
<font NAME="Noto Sans"/>
</node>
<node TEXT="Conflicting ideas" ID="ID_378112462" CREATED="1589600456289" MODIFIED="1589946198720">
<font NAME="Noto Sans"/>
</node>
</node>
<node TEXT="M-E vs middle of the day" ID="ID_498691268" CREATED="1589600105730" MODIFIED="1589946198720">
<font NAME="Noto Sans"/>
<node TEXT="For Middle" ID="ID_28783633" CREATED="1589600122180" MODIFIED="1589946198720">
<font NAME="Noto Sans"/>
<node TEXT="If the pop-up is between two DW sessions, the 5MJ aspect of it can persuade me to work in the 2nd session in case I haven&apos;t worked in the time slot for the first." ID="ID_1808308457" CREATED="1589600129133" MODIFIED="1589946198720">
<font NAME="Noto Sans"/>
</node>
</node>
<node TEXT="For Morning n Evenings" ID="ID_1263145063" CREATED="1589600309433" MODIFIED="1589946198721">
<font NAME="Noto Sans"/>
</node>
<node ID="ID_1081396506" CREATED="1589600320242" MODIFIED="1589946198721"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#008000">middle ground </font></b>
    </p>
    <p>
      <b><font color="#008000">[ work towards this ]</font></b>
    </p>
  </body>
</html>
</richcontent>
<font NAME="Noto Sans" BOLD="true"/>
</node>
</node>
<node TEXT="Personal vs for the market" ID="ID_789484025" CREATED="1589600565286" MODIFIED="1589946198721">
<font NAME="Noto Sans" BOLD="true"/>
<node ID="ID_1466227372" CREATED="1589600581671" MODIFIED="1589946198721"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#ff0000">Definately personal. </font>
    </p>
    <p>
      <font color="#ff0000">Keep reminding yourself this. </font>
    </p>
    <p>
      <font color="#ff0000">Don't even think from friends' perspective.</font>
    </p>
  </body>
</html>
</richcontent>
<font NAME="Noto Sans" BOLD="true"/>
</node>
</node>
<node TEXT="CLI is a passive journal entry maker OR&#xa;It works both ways Evernote &lt;~~~&gt; CLI" ID="ID_1350291113" CREATED="1589600992688" MODIFIED="1590607907559">
<font NAME="Noto Sans"/>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Going with passive as of 28/05/20
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</map>
