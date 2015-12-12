function [y1] = neuralNet2(x1)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 07-Dec-2015 23:36:53.
%
% [y1] = myNeuralNetworkFunction(x1) takes these arguments:
%   x = 13xQ matrix, input #1
% and returns:
%   y = 1xQ matrix, output #1
% where Q is the number of samples.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [144.721905219789;39.2307944291299;46.6111224462346;47.9031766019409;53.1805196288206;59.4144654833501;57.6235118892368;61.5849219128994;63.2870959926237;63.4422386149534;61.6689653498049;62.4172885669624;58.7363666625959];
x1_step1_gain = [0.0160239425839273;0.0756637023711745;0.0360376111539706;0.0560273146332221;0.0838290520205331;0.0437756743861684;0.0487869989313677;0.102181577718808;0.074704841107347;0.117160093613522;0.0818233849085239;0.0728607108963873;0.0546040570363917];
x1_step1_ymin = -1;

% Layer 1
b1 = [-2.0676311131694564693;1.8919771126454245636;2.0005940601154166281;-1.8939922291024293699;-1.8704883764334740981;1.7960321990214545007;-1.805181618193631321;-1.6961069079110180358;-1.5066784518396987291;1.71502859837732613;1.4495019155699337965;1.5398600935555177838;-1.3294809861220691083;1.6526337354650453282;1.4226237911331680586;-1.2230979677023756658;-1.3726684176470567156;1.3827948887877552497;1.0038438338493154145;0.91392857206386146629;-1.2143640154830956934;1.1367079981840679803;0.97560566810917903613;-1.0662644231110030013;0.96698107513656517131;-1.0993996837392794319;-1.0962318703958202626;0.98607029537202350866;0.81069613562670761464;-0.75020914942978489393;-0.84294004326673843686;-0.89777523817562376873;-0.62358713579082047929;0.77411093940291864079;-0.62655347077424761171;0.64874892553065510725;0.59422791825592269355;0.25277465930862386134;-0.47573085700152129007;-0.44154753851118638819;-0.86947584193228633076;-0.34532813803044576373;0.2941749802639399558;-0.31316507095897994084;0.37715502421040708603;-0.16477210686652798977;-0.41422178662405606531;-0.26364059064329192772;0.10547845250273893414;-0.0040956860294547167353;0.051434627695861385999;0.085159605982280298098;0.10123975098599992395;0.3620459062143578377;0.30828393208137494508;0.53941587429489312733;0.24585473968233506614;-0.31529024687858447917;0.47129248359787551115;-0.34734077235257804217;-0.40046516427293454843;0.73452242008363599624;-0.78161436651405458154;-0.34088379736555296518;0.61066402503492234199;-0.87580289917275766509;-0.61927242470511389971;-0.7061360694205376376;-0.6148978496766975832;-0.25628674416875540931;0.98404704896886185939;-0.65033237864140081008;-0.87257166300342858811;-0.93601364653791230275;-1.0163951350641455829;0.95129540143493895865;-1.1044704873297515046;0.98131201083540664509;1.3356280962462825368;1.1494459259582645583;1.526216448303683082;-1.164489436423680857;-1.3394962088481174867;1.2588732524824515213;-1.2653622044775523214;1.2982808607437554826;1.5314107359300757061;1.5710476554904946322;-1.5543421521568927535;1.4580932045021610666;-1.6480475599561923428;-1.7346807147966205598;-1.6998516315938110299;1.5798849422882730309;1.8926552913112710819;1.8242184378773764752;1.9598979134063325702;-1.7426213073124336983;1.9777519713896052345;-1.7262484713098737998];
IW1_1 = [0.41148585759382255711 0.3306298518585689683 -0.61984624048054670631 -0.80869367345070897191 -0.90031846303133822307 -0.61124597965812643707 -0.15259987725972612438 0.49434534661400081346 -0.74175715747020609658 -0.8392308110581838676 -0.54541935062221669206 -0.54130476128682136761 -0.50609953798622031584;-0.24513524947664785958 0.10933983306353713127 0.20880987966800221289 -0.69399539562465628606 1.0114744953815912876 -1.0951733898696827119 -0.14489489675703107197 0.16497937590969563582 -0.50222073384345988778 -0.99491642376754596544 -0.17645040887559340637 0.069109415505250557099 -0.15393101054963007068;-0.72144874466526420775 0.77540496795227298321 0.22826711501768298662 -0.0729153428409138743 -0.83670426359769289881 -0.45621437570465955824 0.53572838111203413547 -0.1428120164707070705 1.0346254269703551998 -0.21665060362671981209 0.26560959623086016768 -0.34221917782070937486 0.30851090087965904463;0.24198453322734592152 0.83490842246226049106 0.79649179919404011763 0.77334715269717779762 -0.27525810180608112354 0.093686862142380547547 -0.74013054776772746468 -0.44705101627887072757 0.47981628534471182368 -0.66196212887786920476 0.10409315107799110844 -0.31147881048943948379 0.56174817157132472811;0.22165659107265275884 0.81631089040281168412 -0.77799691165570539209 0.54102541400692705231 0.75109438443118370365 0.70033662804046392658 0.66060201719700628598 -0.1284664798930636731 -0.044891349453177034623 -0.087652023893951255817 -0.68161330156094734889 0.42814733301111806973 -0.33909071900805165534;-0.37543668636085170132 -0.20314884700022606268 0.0052294496658569968733 -0.1020963915089819346 0.0025200650189375834245 -0.99380042503473831061 0.39552352118931505265 -1.0731585966560537315 0.38965934083099212915 0.86884114339053730713 -0.72305222740778241075 0.034779999456900065335 -0.21775988597150908177;0.48811534207994833334 -0.90585327306575369466 0.0067435567192991804908 -0.29720414154061991496 0.16991893490257745092 0.69911887662339911031 -0.67883615703582778078 0.2207254056706729195 -0.10541619144135390418 -0.23830814350991244566 -0.88209499108141986579 0.50834722328960402216 0.72542870635119249823;0.95138462529015210833 0.047848435850086981636 -0.66093521204738081565 -0.80579789709624316529 0.22802108486934330456 -0.62657180692749037121 0.64347552690219833593 0.70589109262730753702 -0.22829987764558870578 -0.62332682178700538067 -0.12439697091048870781 -0.49792602928153906205 0.30078344175581772646;0.91071671582383373345 -0.63067284092156161712 0.8175150884829047726 0.52493507148576012966 0.34045956221295808897 0.69863031792345775539 -0.55786818257348536054 -0.77047541483787218564 -0.65098823825317742031 0.039028257411171850266 -0.079321407200343932442 0.30440030990377842102 -0.57929422476309511136;-0.59856040211599570444 -0.44838284408195089314 0.63035972846021881555 0.0095940064981850023407 -0.76560675264276112362 0.47101175691922275712 0.1541630689637683016 -0.78600884713410423821 -0.21746583084713955181 0.59948325434693527924 -0.58887785907737610902 -0.72120473545063101817 0.42522648441473642755;-0.55215007505196800341 -0.35156467615980036001 -0.015891600173041427191 -0.65162905826302641721 0.045474303205285275531 0.99484714149232300606 0.18143204359787898361 0.87215396615516194156 -0.99713475575807475337 -0.2935296657832283107 0.39915060653605421992 0.68306876607620925501 -0.3663363681647567871;-0.76936333036439996658 -0.69702629846654762247 0.41814562746980027397 -0.15002983939934572133 -0.7118418326155702136 -0.58507221579273016587 -0.54300720583135186903 -0.41991718849954251525 -0.026264775451625182318 -0.74607294728927331384 -0.77477170238517256706 0.28293229522968954548 -0.38301594683132322849;0.2607189469551081662 0.45466572674945210375 -0.51379790365542321595 -0.46616907150293668272 0.53823548438011126205 -0.033123553440193645447 -0.79247392478095202151 -0.86779024452347153229 -0.32189746700853716366 -0.5768837825910303474 -0.64238855079425372097 0.72923718292926176243 -0.84054770564676373201;-0.64735376946534040066 0.37548458817358576489 0.17085475700716945546 0.39483110300604090659 -0.28499927593350010691 -0.20005563978643101097 0.42376661172204105332 0.52876218865875013186 0.75702649710521940918 -0.81183059318027983586 0.72887428257616027061 -0.73274114370908771665 -0.28523090821063645794;-0.089939973782341559039 -0.08784643871062719489 -0.47842411431305859049 -0.20601019282769528207 0.9695014897361694528 -0.5944658348186743213 0.59299292765532585214 -0.96612128903844496364 0.013713827490044148971 0.40232053945013301899 1.0281957747167604911 0.78754415964283286389 -0.26158508286482523575;0.62333718571957774657 -0.20059928667173029804 -0.020956098164316552812 0.9523600355592398703 -0.87882681138511498098 0.16937736771014436088 -0.2218439177653862282 1.0154449550411432934 0.62099604029289223739 -0.056218502692889416039 -1.0442087504523787089 -0.034475126260014643531 -0.26777699827015599698;0.09738035729556331066 0.70340130504884890161 0.72658033150855061422 -0.97981595548097977222 0.16363016981714548215 0.23000989566469909331 -0.90202171324081947823 -0.82231028988771981414 -0.18644863996770610903 0.36181929120868960847 -0.0080294862173273806594 0.23900850503992196461 -0.41249685665265611867;-0.35114571068679956145 0.14566981779895657456 -0.68955813650800357184 0.77138425670931110023 0.87217572812238264301 -0.67172708000905512193 0.1502712640363324248 -0.27246641431591922533 -0.088818687018739989059 0.45568337582482687509 0.76912661464787812626 -0.45537624257022968344 -0.55865231632485556901;-0.50871618038745081147 0.90463472191874572115 -0.45661410094233967349 0.15582735576159689739 -0.73736412653430549735 -0.037266591550905787955 -0.58547256428993033062 0.1513365111753083303 0.72695823555905536573 0.16917696396609308018 -0.39408004114113565075 -0.72471689160571550747 0.90434232956070037535;-0.17643792714938164035 0.64773227477466477353 -0.26915359506335184703 -0.15591500919522829904 -0.90628762421131758842 0.78405490074288364255 0.33227397666056973646 0.32370161968650279505 1.0206083660562521587 0.10165958381438269797 0.60752357379348609356 0.69904942230241351453 0.75131607053088234061;1.010236486057916494 -0.40766673465866309911 -0.36037569329160706877 0.24772013805364079264 -0.87249862616650175617 -0.026571990900436708027 0.11125526650778883031 0.25737262864634141701 0.080995939654268753194 0.80776411725119989793 0.69675236579547850102 -0.77664109974394512914 -0.30007681068821911996;-0.98069244533532806685 0.06856795639103041573 0.64470494147419132869 0.49520626226090475042 0.36704246057622080812 0.44064565605382688407 -0.65158843360070806128 0.43716973792396007781 1.0613212592342617935 0.38301579533679291911 0.29463300592999530636 -0.3380139781675011168 -0.043073754852834322815;-0.14210083657482822095 -0.3772796633610935868 0.83698701205558723171 -0.97006699967921061756 -0.01365114776830377713 -0.16936739843600462363 0.79765537639255890134 0.12468360957767712915 0.61617164131147272865 0.70236019003901595248 -1.0122437242448230066 0.20913099468005669213 0.15974136700289015556;0.61573511499507360689 0.2323903449384139841 -0.60259843574540872257 0.69147703886716094246 -0.72242740836889685063 -0.83133558482709524196 0.46053793583896956987 -0.62254180986180451818 0.12061812640429422916 -0.044806995536877052 -0.22030852695041497347 0.88450010194906558691 -0.0012070465001259044792;-0.79474888299222790078 0.53997291386411327974 -0.37924784219573337563 -0.79258960705326930718 0.41454592882297497392 -0.31815040828709650889 0.64705340003398581494 0.49159004482224960553 0.79517426385808065437 -0.51554314782158128239 0.67614329700623243546 0.04484728307208366016 -0.29894975658090156001;0.29748399893136101557 0.44871885488814489129 0.40244693647429702343 -0.32257801137373537381 0.17178647904738161833 0.55963365455184765906 -0.6982346506761759608 -0.3803851837880379283 0.59619405932718516627 -0.60592698134796385556 0.34544622021679111112 0.77498207592941836808 0.88464934599530187231;0.7031668623393630968 -0.79309556000976089152 -0.33607449164239844297 -0.74788603392034669337 -0.96070113934441681014 -0.31019813804223356213 -0.6221482076683191309 0.42801222145053419155 0.88082209214984663603 0.28663112758909475852 -0.19515840896085623335 -0.51118822572276767513 -0.51664233082576083156;-0.37381472182703107121 0.53282461073622588987 0.80818970469935380585 0.70755233905796743876 -0.74454264796332747522 -0.74762350912028263661 0.39750166754241045286 0.6149782262747698347 0.24054719441593708229 -0.34199179974168802953 0.21082350951507902725 -0.1868406514542546859 0.60169267172548124289;-0.48568859603350766907 -1.0089148819370570287 0.35149266731324102508 -0.83658344142921459152 -0.21830600235935196385 -0.21574953213075170888 0.17513713780927764319 -0.97033882340155264146 -0.11516011293456387965 0.019910993977831997759 -0.40450441354586613718 0.32189023409232292439 -0.90896864023168233437;0.44101861791735019747 -0.36491945404626185967 0.31184726603822066071 0.14239073834925472517 0.73403813697280406725 -0.3038753931876007619 0.66088453755923581845 1.0648035642442383875 -0.072316164527960150044 0.34066890032605307015 0.16530146406686735405 -1.0954924218165800198 -0.51687775460706542052;0.74456682501333570912 0.25480574847326087351 0.49418162985525082576 0.12216603675734438728 -0.60593823029356497223 0.38101949121634315354 -0.0107896344092019425 -0.88563021028120780809 0.75057164952715904604 -0.082671847158713909764 0.8547323738412633265 0.45911567952338827592 0.34417364668503119818;0.18329931937239538065 0.68479204607161103802 -0.34503376362596843707 0.038197099279137620986 -0.97260717813628916328 -0.026738141060328977916 -0.18865968022617940481 1.1146341185648502847 -0.89248490455876650085 0.44888772938500998144 0.72201153157019504203 -0.14802021375966628591 0.44299399076590828539;0.62757215755612572039 -0.33681035832135797214 0.20980994551162687745 0.60705654682927645549 -1.1032065076324082398 0.62261097986528002313 0.13138259218361414415 1.1587028835214663314 -0.66345781526546487861 -0.22952957936952383955 -0.64724832297610701559 0.60303341293374068677 -0.59995566199753580516;-0.42533740535097658286 0.42788398967595314693 0.86854037248830706641 -0.70067340251007881324 -0.54798394718024279193 0.52230519344313830477 0.62932949283673056406 -0.84572180931387441749 -0.063398719096127043038 0.03521278261422142869 0.30225693497823008515 -0.1936661451577932902 0.68725125773635720172;0.63512503201368630812 0.98843636626021746938 0.15933953616777890572 0.79049236769427977389 0.89442662210997070371 -0.77154438085068799413 0.43169051914835160355 0.12310020301947119381 0.10719378598767696775 0.0037251409597360007897 -0.35233657789583111564 -0.4478081819070623415 0.11421736262171729159;-0.15905355218094943681 -0.41488333584622760775 0.67878937049006782267 0.078190373432826171252 0.43706687474989691644 -0.64959368075028167677 0.051113989367884866966 0.5522438460585595843 -0.69684059344055493401 0.69583523851154815976 0.77800479566238245344 0.75030844892034920246 -0.47220228109620210333;-0.24541542167827229415 -0.80960342721818534528 0.5662224233337841417 0.53346998420989022449 0.36383317196322129128 0.79813767978790028934 -0.48511851549165863062 -0.28881260779441675357 0.33481439943332236275 -0.281958462617002803 -1.0513421862790650607 0.49704385111159493649 0.22721392189015673924;-0.74521856189063395703 -0.30105947652382047952 0.043571923019752038797 -0.57825802717327257074 0.15068863487423003744 0.28171868197961608127 0.43417715974664872203 0.82037976922887556608 0.87994615567943246237 -0.60279207529687850453 -0.45847989125645211006 -0.10672987588285048899 1.0921936773307243662;0.64600774339632427434 -0.3064375392605573345 0.27479510132801587829 0.088386903539358713244 0.080484703470061091934 -0.94254321258680084927 -0.22033399559497704456 0.16358050060625825561 -0.76652058391613031585 -0.51277628828349786083 0.62400157644402176604 -0.77724046235419474993 0.75987283879649913931;0.24030410842509170033 -0.50730975686787926904 0.84240620440698255056 0.40325442600840882834 -0.44772739952067636127 0.8855941532798615734 0.13584618964850739276 0.71919022008761979148 -0.121905953918535509 0.40676271780863326732 -0.93648664401446057859 0.52400585727057724661 -0.029588316475714110387;0.50294750408059674118 1.0871482901807429933 -0.42684712146598335902 0.70016438541585934718 0.17605802874258047463 0.09318824705307930667 0.92721808698841534646 0.75938901744878462008 -0.32136609427025664143 0.87596178358936693797 0.23490370239610461334 0.36672418201350903688 0.19852399287583019638;0.49353487609829033156 -0.71140861742454053473 -0.16601822103162369726 -0.070138723464410870911 -0.6254807876165401348 0.066672384103711429537 0.54219831520224170962 -0.72911112028265412377 0.76623475857963818658 0.751536979285408413 0.48106621466367815998 -0.69493665311652785821 -0.29160143429464358;-0.84138787296852857178 0.21961017751177458468 0.89060205337787978763 -0.68938927945279615539 -0.80834052985206095165 0.19066085706635726993 0.64863774645456484524 -0.19398024000056623972 0.17912498761003975423 -0.41720326080833258775 0.38955758329557332864 -0.65760085108726284986 -0.64163908827819038372;0.53899703154214961831 -0.058228276531896383528 -0.17197845328453389979 -0.60632725893516892235 -1.3756519088538885498 0.33992324554104613732 0.52488708705996545145 0.73663288380469571504 -0.30869632880797776009 0.45011827892328326595 -0.7572622841509580871 0.77809138078122497273 0.77023969455109853044;0.00031484027722008796433 0.734632596564602669 0.28106536828393746674 0.33451240495072342984 0.96309075371962649115 0.6813031116653803787 0.59813952254744406911 -0.077995213801491908301 -0.81734812761626707278 0.13176123084521781936 -0.19668782283695601665 -0.05447066381307284072 -0.82565243203520244375;0.33777086233481590227 -0.44026340797963964269 0.73307165196618473413 0.58014556593473654011 0.54694444551063547966 -0.17812812254278947988 -0.86760045319482181903 0.97167402972365801705 0.051672662226395695007 -0.14923684346086471542 -0.30580411901535736741 -0.80938937940780342206 -0.12775059617614170637;0.37487738003403064946 0.11190215529508074077 0.82474087708075305425 0.21221973020126863596 -0.74979275053646532445 -0.79406172103396555073 -0.88204603214714305537 0.59990393837580269221 0.73102424194297799254 0.13186041834943632023 0.030035373791399734567 -0.73705071706935521014 -0.0027926173285938394805;0.25979968192904878688 1.0108018914696925705 0.22600851469175012309 -0.48774718275801459688 -0.73012923292121789665 0.45197436992185435756 -0.94642823645037843505 0.71704803998791899478 0.72416376174691310386 -0.031314593095072340567 0.11538859956183497579 -0.69511575954454341009 1.0185409986190729903;-0.4909806009238895097 -0.43389906348666734681 -0.6486061178439559427 0.78811621759841121726 0.47713666595771614398 -0.20756313113078744825 -0.34700811324611169351 -0.53238770000919799497 0.47969977878288644346 0.17079628814796191105 -0.58611138386359418195 0.67416171542194280875 -0.98913630274919761565;-0.10300425552823999631 -0.70774195312887366871 -0.78843589276363956753 0.061007449887804092448 -0.52064840518410515635 0.5970713295402246823 -0.84752115538643235659 -0.31328188411602769792 -0.52240472696686701681 0.41264349435212960282 0.67322290514641591752 -0.057876852643727577652 0.69036939698152721689;0.11536740106125553673 -0.54423479771522276227 0.41885934584603962128 1.2720886464625114076 0.17799347304294141359 -0.26351235396982131132 -0.21916302854508920572 1.3081143967011448215 0.075461762895103243198 -0.49197211059812651079 0.2404518421050149124 0.13298773559674523237 -0.33452969501302670663;0.88993830713791244325 -0.18664700529126893036 0.19302070678087393518 -0.77906013072448609957 0.18163752027698948366 0.67704138598748486721 -0.27579695365232398396 -0.16552879438478640406 0.71631454888541723491 -0.79253949677869695023 -0.65044150366364927862 -0.0031298069462923666824 -0.50819569642570905366;0.64090874751760340544 -0.32237456957126969792 0.88346552182658399932 -0.57114790875112031454 -0.13028053807362444116 -0.61449346114263625473 0.083054209675895343534 0.60566197059995618979 -0.72219507601012133957 0.62430981803279084197 0.1285933158520868036 -0.82066922203247705259 -0.021666771525740424753;0.79967314061798255853 -0.72784187631470564916 0.21468030632335569075 0.34652918354865747119 -0.14392475570612531244 -0.75903118807776503996 0.65980956656119038595 -0.9661312789415824609 0.59811302608233374301 -0.33113479062702172451 0.68448999478504901628 0.5821890813767687245 0.075967870555091507323;0.16267089756186514649 0.79192113922418760907 0.32699223617439021616 0.8162417077765967699 0.45921145918097089345 0.67698550380674027416 -0.36806506791568177617 0.59372952314433979915 0.67853943409184080959 0.4788013276039066457 0.48417825280683579603 -0.41557874496539964904 -0.58114031581607261678;0.38410549823740069986 -0.20633555432736347401 0.10634213114384727383 0.52533887931931888549 1.492058196027323147 -0.70034311820721772968 -0.15483811409715922403 -1.435899862408824168 -0.61837733076818679478 -0.59289492494355688912 0.43790825566895114074 -0.46153424323429553811 -1.1697929130732700465;0.6157623308633949355 0.76137423517277402762 -0.40779065724967478168 -0.35826149410120722294 0.43888718571325258111 0.32904332103638089801 0.62522263853042758797 0.65196788734380783925 -0.71786386976674454452 -0.66106432796399261509 -0.040441461748236526286 0.17024033756926185146 0.79610569391818963858;-1.0471118591167551948 -0.11358611581901652265 0.89229591163372168339 -0.74648320895662478858 -0.44163102402125881119 0.49928076584646025049 -0.36040219448369420485 1.0322239970125690611 -0.070089101566408920641 0.71806123602725224764 -0.52798661439171123977 -0.017096696562208784503 0.27249115413458152579;0.74451604783152758316 0.71163379371439516863 0.094810595803023922645 0.65363177909692538048 0.86841072288815301938 -0.099073946580776034443 -0.67357481011185560416 -0.031756571890699226979 0.56923868273502531423 0.65480428288597269937 0.12135749288479084906 -0.30790467614646427341 -0.47663062886535090268;-0.25929134889477795101 -0.52423274447245138408 -0.71981853687045826984 0.6105469997386416825 -0.89850962368570119754 -0.18987266553445442119 -0.057814711232479693015 -0.28505600711821449389 -0.050357193508559126849 0.86643220183691760372 -0.60092179745042717531 0.29160734789751063811 1.043387089532027634;-0.80845222316609699487 0.36786503594770364467 0.47989946019115559128 -0.31312463570603715768 -0.059922240969023723989 0.86232151020761604876 0.6538209837107066269 -0.46920281971367450158 -0.15668946189784893619 0.76132867609041288137 -0.33781528435597063531 0.76589773611177780488 0.78559042119672495286;0.59784570738588138639 0.53177700603857913642 0.12817064958382129447 -0.34891750530885407011 1.179534769987088394 -0.23824739045925469316 -0.19116736747712659295 0.090890605010591249413 -0.067215681029062238072 -0.85924187778052263376 0.8442743422861621605 0.17497693629723634623 -0.84600944781107456638;-0.6164136855035267093 -0.43283371424900829449 -0.9304921018539221711 -0.44799020287985347188 -0.49498381954527614912 -0.2079794375250847982 0.34188752017599977062 0.69464515208954480396 -0.49810188547941158799 0.043048106883052647542 0.72783036998388062067 -0.34669008094801712083 -0.81151702055343033493;-0.57245678474251238121 0.68524987814144577847 0.67105039921842368766 0.62655215039923772835 -0.40080613749642690635 -0.55359595314988907511 0.19412277826571952555 -0.77083234017572099805 -0.64287307159980311422 0.79450455471656911133 0.4305163478656741094 -0.48674741796767911906 0.27707128914272682874;0.17360040347786520609 0.63237137163734491452 -0.32208973202640134303 0.67766888646659950712 0.72949925814273608449 -0.36731167018172289351 -0.13924116467949854137 0.63925570292872346823 0.75937008472701472694 0.062420188029089392068 0.82728731314579606604 -0.12113650634547488971 0.8105065990125951414;-0.51455190068202860676 0.82584089105552427323 -0.37529711768122259175 0.091200602076430770104 -0.90386062077838646989 -0.29562575435109345046 -0.01006168863036280281 1.025005749304227054 0.30290263959349583711 0.79292091608455184115 -0.50432932840634092653 -0.66930670855728324753 -0.424933864832749697;-0.22971234137504562001 0.029691451150036324291 -0.53143465884070395511 0.23392053002002605178 -0.13450160787215992286 0.88234098918886383345 0.94243342700174181914 -0.45174635151967540425 -0.55856880255566598859 -0.76364426802111728954 0.10783286715204283557 0.70855046275061572825 -0.95615474165500879966;-0.20934324679586827078 0.63621504417483609739 -0.42576714559612699462 -0.46267800101245754041 0.21979792471576237167 -0.56787768328603960288 -0.90974551920624369128 0.27710325780176070509 0.81048778483331440636 1.0735316947068367366 0.27750801328782348509 0.23503302733797695745 0.19815112306802881714;-0.27072750317664229236 0.002613786186574591601 -0.51112938904313820476 0.4912770064674818471 -1.1895225726813647427 -0.42384013419842475612 -0.56139980498411679033 0.06150254485138501731 -0.92354105722709456394 0.82159824522024271776 0.59277010900843896124 -0.68302086241226633856 0.45656423341760327128;-0.42301699682930243851 -1.1673671303311838887 0.32227100418029358542 1.1392772568595230798 0.53362325632293727828 -0.54983712955080066287 -0.34977469810317735055 -1.2547174727100951497 -0.25509884259984122457 0.040150966779414064278 0.44845209917214529094 -0.11399928025254414676 -0.22715872230048600455;0.18356555932865320502 -0.4814395502270021332 -0.96772758851149542902 -0.030628958312585788382 0.64858764041660876831 0.37624006187064351625 0.090088405714521438417 0.46116446240662029021 0.36345634300785667481 -0.27073653345775167134 -0.26190738119735429423 -0.94162430204142821832 -1.103809944086879602;-0.89514959627568913003 0.17026265695902051411 -0.56514252987193502875 -0.16189793776649619161 -0.45870220971688285827 -0.82651979425247168454 0.74577365848418430971 0.83101080361318191425 -0.40497644606244159737 -0.44572032637481984185 0.33555536218877718424 0.6604436124710683087 0.44478220575768101508;-0.72840595667625895882 0.62901358218818936852 -0.54533094959135108848 -0.11791542061651141826 0.40210111982177076939 0.80397489658927356881 -0.10396160648922660175 -0.52687252876580503713 -0.23821780544602738638 0.4620856754401631572 0.71573304517571312289 -0.14455395155050368428 0.94232419272303435953;-0.76531043657325370511 -0.40150067810366563137 0.79694503258469251428 -0.40069628378709565286 0.6499380566019758998 -0.78467351457926803882 -0.083905138819662855587 0.088041733609650993375 0.030248115186331834409 -0.91609009005049968355 0.24211509890912508158 0.12010448799130238329 0.70712350507658483512;-0.4768143607511634019 -0.22010677835559239179 -0.14054676709798483158 0.37636322179582992753 -0.72189290166995190301 -0.093870078669428813622 0.55975479005050521319 -0.10508167657968028874 0.9409573528532698683 -0.28692987710309542093 -0.98218811012462803323 0.14333264377385127042 -0.8600174201434424015;0.46732988500638744656 0.66496446293891009471 0.43524695767165710869 0.72326519354618634683 0.14818541743246835263 -0.81214135856946734204 -0.054044157538211359815 -0.68872162007433745945 0.52116157655570027885 0.73238872336229332571 0.73173464441743885089 0.31575964567776226843 -0.22334690832185485898;-0.52121521921771118979 0.21685759403832097214 0.19157680861093917546 0.68392025575915627034 -0.77654613765502145117 0.44446927817364884072 0.62126974111589350347 -0.74416583002106873046 -0.73614665308379123587 0.081145412878418490821 -0.78155415129501892846 -0.21973112878310188667 -0.39783000310928962051;0.68415681063455602295 1.2360451300585599821 0.80803990091209909608 0.61669170657120242485 0.27755949856577366575 0.54530534480418346721 0.038457075867150511406 -0.16958459298730518827 -0.53714531948535004791 0.079056212755674357129 0.19289557841195728582 -0.89717495844321526466 0.16233899692799008685;0.43844946230308690094 -0.85662083279154122017 -0.8906793633163218038 -0.4299769080462264581 0.86840790991934124765 -0.60242199772752424991 -0.005089236189104330739 -0.62821415400184776878 -0.38853556531077637626 -0.18141906776330726792 -0.91389552658145079 -0.11478691627552993493 0.087389713130948426523;0.66498940705565379172 0.62760497332992692954 0.97076234076734213563 0.37141549409455265618 0.94081176947648981201 0.35499834435206345518 0.038898431475670507129 -0.42428849384294453628 0.69383116148103218812 -0.24609235564642448213 -0.14850269211854547069 -0.82515151698271849146 -0.40869938031622166097;0.7943251937929867168 0.38362019602439878518 0.8804825682494521466 -0.58047598712346393235 0.068110248520914407067 0.13343621024192636737 -0.47407897602244608581 -0.60963045380284475172 -0.25248441853755954067 0.94786529882352810183 0.57413620258679687325 0.43143353731569938914 0.43576716174552510008;-0.2879210613148008302 -0.43254771567351291139 -0.5742335735982349032 -0.57212720460002619571 -0.12427745479236915194 0.61086831800563701211 -0.57887791666057530904 -0.71921645427655200855 -0.49117331660517149494 0.96876552526028059109 -0.3157472137296578607 -0.81083094620074724901 0.4092813203719129489;-0.41736564788097019196 -0.050527285195023155517 -0.073771595787154226054 -0.68652791055748330074 0.33436425069808761723 0.14549135652211542258 -0.95388470178070694505 -0.2118589341025219619 0.22278927089142169793 0.033231087437381470751 0.85016849069390687532 1.0012901388070825082 0.63091195261321930676;0.2768231545014915862 -0.45965711886829102584 -0.54389588342137973331 -0.81343432477693655702 1.2077251468938916545 0.71694003189436128487 0.75302415704093084159 0.05497423749689503425 -0.036202811683088191586 0.80685988268693054071 0.48507196503790961373 0.47354804925463678256 -0.51647787546408319148;-0.39022475905489439896 0.24153414814536827704 0.2782901962923208794 0.22512371849413681524 0.014794347153480465543 -0.23187763993143481467 -0.62926490631777598495 -0.70706995018123086627 0.90348448526032654193 -0.1054932626171591753 -0.3097566219841784152 0.98419556830666954372 -1.0591648758370317829;0.94963492176432784397 0.51588991157213381911 -0.56303041014431121081 -0.65615756758447396635 1.5291411850018072904 -0.3919894717963246511 0.75817250493240451181 -0.30130813780957937942 0.79998292975513607406 -0.14595209005614059872 -0.2540436483192763939 0.091778188302547664135 0.23237727003035230089;0.57832658860582941696 -0.78572272225655115374 0.14760393728469969887 0.62432211094359280068 -0.57677512402898301058 -0.031335187839668342258 0.39094443756248264954 -0.1216277381583686229 0.60108717416515600185 -0.55226201705950417331 -0.48071584617981655274 -0.50452312676459609708 0.9354324444783896908;0.10168059192834190407 0.65520971111205772441 0.23567546954180643159 0.47955995570263415528 -0.79545483680142881067 -0.49669286985622385089 0.78175011798899940452 -0.14552585232376111235 0.40979487784664836436 -0.62786984066843654073 0.55617658429494498673 -0.50677897143240224764 -0.72150809149937211728;-0.38946234668783485944 0.51563542622991298536 0.14206247601535210157 0.6748463326641501725 -0.29766336685664390727 0.71819842297844671553 0.72651917078494088198 -0.54384707128702181045 0.40942752236196722215 0.5349739847963840278 -0.73802353043196899929 0.42537799197503067816 -0.66683663000032744606;0.26419244820324239154 -0.13138191599247017738 -0.20494257998438616952 -0.066974421774731382473 -0.35129877175055024274 -0.19855029304445001581 -0.82479904950860727375 -0.47890060476943913104 0.96879419965872037857 0.53609305429382458907 0.38209984703453891974 1.0856859113196226652 1.016540565124365969;-0.69948186876295193048 -0.26108227001511680188 -1.2367493197339323174 0.28317818129949579031 -0.30021383939457135792 -0.62703689340291235421 -0.28369808253673695075 0.39622598651256873969 -1.0541460620907583401 -0.018035958541461817595 0.26214035284291398176 -0.35857058996999063849 -0.060772798130991338705;-0.092008032122372990225 0.073787607008588745883 -0.032502533873782074592 0.76879482661032327862 -0.3427610945944150056 -0.15190540377555208917 1.0266409260054860653 -0.52237926055112327006 -0.32968060691063449941 0.66645810003263916688 0.55696474710580567979 0.54934420985156162676 0.72657733343401431636;-0.25291666547194224801 0.40997654440484637695 -0.19223190390623801083 0.083712730644017477322 0.41516113876621685286 0.43630111804242371898 0.30390561757039902258 0.12259791352266741216 -1.0642181496065241664 0.022294339306729117622 1.0124010173787478806 -0.83351363189576554991 0.65046993276127773598;0.14787301389055976242 0.55672026620078307602 -0.83737728534048916362 -0.51248947358119745221 -0.78892187368696209404 -0.25445327726667021917 0.80567197053555794639 0.90040207157917317993 0.7924480136109218753 0.13013698776229401521 -0.21699180040254323343 0.25531620480676481266 -0.5726273687771745724;0.98512831768902964225 0.5007048841269082784 -0.06245609497973998725 0.99581257704376024975 -0.20430113651509465567 -0.6607604609951128749 -0.049245714423490162537 0.45209288038115813535 -0.01978666960815711473 -0.58257052235478801183 -0.50188629015541164069 -0.15474732551262257441 -0.55296422952679213925;0.46651489334016615906 -0.16146059014101044049 -0.027583175847661151048 -0.84926309317103509944 -0.42492713438506446444 0.69894357137770091182 -0.88301753085556888845 0.37667678190201120403 -0.2596787665557122593 0.21341540813408554911 0.70740126140178671843 0.44114335691573708376 -0.79950954964547760184;0.97903651360370291812 -0.13784750022654052026 0.076982205838440814771 -0.33559477837775891773 -0.40236767317085997409 0.14149372222789760589 0.22215660544190996006 0.95062026602762361716 -0.56257709868111827056 -0.72495666618489196242 0.61557322493323674006 -0.51419607189428440108 0.20002417214755158215;-0.62197520198036049255 0.77119604465520852354 0.52551079915505161111 0.60180311307656519926 -1.21945843595294523 -0.23760717588536578448 -0.51152410914571555534 0.8953377063501847255 0.12939277606164276135 -0.79813094895940606133 -0.24003062190716636937 -0.73255938390752117773 0.50972035018962635888;0.0818203148486448123 0.22307781571267840115 0.63697388265844023802 -0.40909627360042999378 0.29753196836815293258 -0.86112958849282517093 0.087964793760143114576 0.32126120092893800662 -0.66482387865187808629 0.56867641463727125473 -1.2649742321508214982 -0.14732880354292682279 0.023359820252602230689;-0.7956389370730971855 1.0402576041187765465 0.81245234564817048195 -0.16908936169789581805 -0.8452246791026735151 -0.587410998169989651 0.34695148364030226062 1.0483941067352902099 -0.73286362155882889269 0.34938585427706175812 -0.088704776395932147248 0.1792385766971447969 -0.60572890467043472018];

% Layer 2
b2 = -0.29106675423209116271;
LW2_1 = [1.3153945754343523422 -0.43795099368366552373 -0.206224805176121323 0.20880819470448452879 0.23185305792002919301 -0.10620193527807830769 0.40642721272695825352 -0.22088546695685806753 -0.52991221893794837605 -0.5292951984313767344 0.47128643640508288692 -0.45990136700660810831 -0.53660980560253968008 -0.57875889100069377591 -1.1236212106299847679 0.80120825414552132582 0.1487617491907131384 -0.15392926175438254033 0.49345907819938544803 0.77850836923141641943 -0.19460937545982490149 0.27909029869259177614 0.56614327136141484598 -0.12990780775045687734 0.20645549370637064635 0.57863621381702412538 1.1943650938899281755 0.081493877131981182216 -0.93255135668373156932 -0.40768641577519421082 -0.033117627817620794162 1.2733184467186453581 1.353538699359917441 -0.14911227650913952414 0.03080626912828540731 -0.31879526262230212241 0.093150661237477963561 0.84470616258188446768 -0.090329371592556148562 0.48104673428072625141 1.2656243571040513007 -0.25373835360757646118 0.58851937307533397359 1.5072625358705378229 -0.43465060460380200436 0.20601998106450583603 0.91807376291063813589 1.6802561090238816721 -0.71319326127276905236 0.17735177690613168622 0.62514963232244025182 -0.20327577395026111273 0.15274974632558924181 -1.0208890668553232128 -0.25286795853970578385 -2.4740881460930985725 0.11140767933191912664 1.1941716332715011095 -0.37269868055237287408 0.82284580625789249808 0.69800348962863345559 -1.1079405416656260552 0.65191293771189218198 -0.29818222354920415063 0.32024415418234430941 1.3404885766401917202 -0.78448602046977622404 -0.2794165166866346417 1.1039630411979219904 -1.4092896475763787567 -0.89996337400831905029 0.95233769431682324669 -0.145911014596265598 -0.12629585263347453683 0.29638185096475511138 -0.30347008426797689173 0.24341010230404933057 -0.76806993307183246689 -1.2630292408945082983 -0.84466989056737806774 -0.92126925627720268608 -0.5020150604243881487 0.27098996796299928969 -1.2391963383670421273 -0.34198623191424321055 -1.4995815726682644176 -0.23700074216470662369 -0.37036402004315127634 0.20594493513174971788 0.62613297853290206252 0.53986849522586122241 0.16565588029797367886 -0.026625062140777658315 0.4832429636639130055 -0.49727707406404320079 0.16902313742222216386 -0.25497383520980904104 1.4606010395463258078 -0.56503585777575571214 1.3536861516938727412];

% ===== SIMULATION ========

% Dimensions
Q = size(x1,2); % samples

% Input 1
xp1 = mapminmax_apply(x1,x1_step1_gain,x1_step1_xoffset,x1_step1_ymin);

% Layer 1
a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*xp1);

% Layer 2
a2 = logsig_apply(repmat(b2,1,Q) + LW2_1*a1);

% Output 1
y1 = a2;
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings_gain,settings_xoffset,settings_ymin)
y = bsxfun(@minus,x,settings_xoffset);
y = bsxfun(@times,y,settings_gain);
y = bsxfun(@plus,y,settings_ymin);
end

% Sigmoid Positive Transfer Function
function a = logsig_apply(n)
a = 1 ./ (1 + exp(-n));
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n)
a = 2 ./ (1 + exp(-2*n)) - 1;
end