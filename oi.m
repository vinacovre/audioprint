function [Y,Xf,Af] = oi(X,~,~)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 05-Dec-2015 00:35:15.
%
% [Y] = myNeuralNetworkFunction(X,~,~) takes these arguments:
%
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 1xQ matrix, input #1 at timestep ts.
%
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
%
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = 279.241033943571;
x1_step1_gain = 0.015286889224804;
x1_step1_ymin = -1;

% Layer 1
b1 = [140.00141365164353147;137.17173546597342693;-134.3434343679962808;131.51515151576572293;-128.68686868717355765;125.85858591847541277;-123.0303199733739774;-120.20190587438324314;117.37373515804125645;114.54545455320283054;-111.71717171713891048;108.88888888888901363;-106.06060606060607654;103.23232323231837881;100.40404040280559173;-97.575757534993158515;-94.747404467428410157;-91.918429790978990468;89.090898534110777973;-86.262626323684671092;83.434343427287686268;-80.606063183327364641;77.778223054484627141;74.949670197911586911;72.121212652438032364;-69.292929291459529395;66.464646464641631951;-63.636363636363618923;-60.808080808080809732;-57.979797979797979224;55.151515151515148716;-52.323232323232318208;49.494949494949487701;46.666666666666671404;-43.838383838383840896;41.010101010101010388;-38.181818181818165669;35.353535353530787688;32.525252525487132971;29.696969653702513625;26.868794864709350634;24.039901200677689985;-21.212117781891908663;18.383838369150332426;-15.555555555345932817;12.727272727289905774;9.8989898994333724858;7.070706118471354884;-4.2425868532868760141;1.413898986610665931;-1.4140351320568151916;4.2416465378554129018;-7.0706915707652955305;-9.8989899253452513506;12.727272727304297817;-15.555555555555580227;18.383838383874298472;-21.212121205881377506;24.040407344879579199;26.869181909919230833;-29.698064235608757855;-32.525274672087533645;-35.353535336120046395;-38.181799146527701794;41.010120002404285344;43.838384344622895128;46.666666666549218689;49.494949496166213976;52.323233931005560748;55.151640212246704209;-57.979429663911467685;-60.808082471467216124;-63.635892718435378868;-66.464761990708751682;69.29295701390012141;72.120552205823187819;74.949296497139798134;77.778744973795909345;-80.606058641284548116;83.434343526715849748;-86.262608093774318263;-89.09094091595200382;-91.919117511336438042;-94.747760921670305834;-97.575745833501187576;-100.40404037487708422;-103.23232323186086035;-106.06060590576866787;108.88884931711538684;-111.71734113351325846;114.54546467025237177;117.37373706803941786;-120.2020207615481695;-123.03022152533613109;-125.86215287893955406;128.68681413820578996;131.51515119857245395;-134.34345615624394554;-137.17265011409151043;-139.99814024713580807];
IW1_1 = [-139.99858634835646853;-139.99998170574374967;139.99999997543804398;-139.99999999938606265;139.99999999973664444;-139.99999994829974526;139.9999853737248543;140.00009869447401911;-140.0000019127217854;-139.99999999331120648;140.00000000002833644;-139.99999999999988631;140;-140.00000000000321165;-140.00000000081450935;140.00000002688864242;140.0000463574488947;140.00050270768906557;-140.0000069633738633;139.9999999597282283;-140.00000000388450871;139.99999858895159832;-139.99975621190961306;-139.99990405184871634;-139.99999970915490621;140.00000000080470386;-140.00000000000264322;140;140;140;-140;140;-140;-140;140;-140;140;-140.00000000000079581;-139.99999999995890221;-140.00000000758154783;-139.99998107625643229;-140.00008811074539494;140.00000060106640376;-140.0000000025737279;140.00000000003672085;-139.9999999999996021;-139.9999999999926672;-140.00000001576361797;139.99999730808900722;-140.00000401073830858;-140.00000249117226758;140.00002037624639684;-140.00000040611016061;-139.99999999930946615;139.99999999999917577;-140;139.99999999999263878;-140.00000000127656108;139.99999932396730173;139.99989870942533798;-139.99976803270405412;-139.9999952463782904;-140.00000000352167717;-140.00000544131242464;139.99999457109234413;139.99999985529268542;140.00000000003367973;139.99999999950861707;139.99999935040963805;139.99994947157628644;-140.00014881194010741;-139.99999925961671465;-140.0002156582604016;-139.999944736349903;139.99998636606753166;140.00033994209152866;140.00010630397633804;139.99946495270930313;-140.00000108995416781;139.99999994419121663;-140.00001153807232868;-139.99997972225193621;-140.00004802348450994;-139.99980598412540189;-140.0000079610472028;-140.00000001977198849;-140.00000000038289727;-140.00000012376870018;140.00003163154045183;-139.99986457771819914;139.99999190678298078;140.00000024422206479;-139.99999949965712176;-140.00007286552099117;-139.99679127374477616;140.00004922873665691;140.00000029935824841;-139.99997875857383178;-139.99909081055707816;-140.0018596409867655];

% Layer 2
b2 = -0.05173890156328971035;
LW2_1 = [-0.18649224232515704269 -0.1669952514158057344 0.083590525915182456451 -0.39895310668432015788 0.24149085549696674979 -0.17644893056140045773 0.17844795315617167919 -0.045773549320691359066 0.22843152663152299642 -0.28330852653505844696 -0.28237978378641948041 -0.37307605538750154839 0.51629075679441793767 0.44471000486107370442 0.39236071907969433115 -0.020863910024673481408 -0.26921049217238923745 -0.10651036412716852197 0.22900615838038196337 0.41194942711646137523 0.34571611283471798126 0.48376620518651897163 -0.35890264077405065191 -0.38057484351321541061 -0.31004840392786786607 -0.2357180544125071775 0.22159671510849374143 -0.26980596407178480955 0.1019619411495622241 -0.31883201324373416918 0.069421960272972094153 -0.035392512628262248753 0.37556735967572296708 -0.49639339541953880763 -0.12649655005305762701 -0.34095622547868986718 -0.41612955833395509631 0.39368701585706383783 -0.077155450439815351227 0.040824530500368147456 -0.4161366082874561334 0.093463155545860557294 -0.10055387085986139395 0.12093133083524548743 -0.46623455735071583916 -0.44079548968301368594 -0.033431822402021055263 0.32682539465009280422 0.18848859233645937072 0.075914857728991397279 -0.26832616416590721053 0.096454212203355274569 -0.40780691710400901462 0.26417754372149521158 -0.11986812657728583564 0.06026953048035491034 0.36462156655095340207 0.29291818592117879749 0.41515994752177909355 0.21249891334100012852 -0.05298101105787222237 -0.059204298205066535621 -0.0036560332745873506261 -0.28017360331778617955 -0.04613228135279344444 -0.34027179855351807891 0.036961831825221745651 -0.08202051890439872317 -0.42907272635746906975 -0.1217827107066903336 -0.40478572155870751192 0.10448815339513529976 -0.27891730824379812326 0.080354356932253484525 -0.17197202200524888682 0.23855828979588461491 0.26828216372505236942 -0.3966273129478702919 -0.04874447626849372911 -0.37277353246918148999 -0.37849452466586352983 0.036182481697126588072 -0.28630423403103377744 0.25236028260982973359 -0.42927893670027367223 -0.29332580355793536064 0.3766230990938028711 0.35799316905275091472 -0.32422859086069294454 0.0058774150568472842415 0.033658745275273412034 -0.30439514485977747782 0.4135243477826127112 -0.2144740922397082028 0.46203985556170307225 0.15702696388528142313 0.091950499732862095437 0.074069426792012713068 0.31239955827472409844 -0.22070382539719832216];

% ===== SIMULATION ========

% Format Input Arguments
isCellX = iscell(X);
if ~isCellX, X = {X}; end;

% Dimensions
TS = size(X,2); % timesteps
if ~isempty(X)
    Q = size(X{1},2); % samples/series
else
    Q = 0;
end

% Allocate Outputs
Y = cell(1,TS);

% Time loop
for ts=1:TS
    
    % Input 1
    Xp1 = mapminmax_apply(X{1,ts},x1_step1_gain,x1_step1_xoffset,x1_step1_ymin);
    
    % Layer 1
    a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*Xp1);
    
    % Layer 2
    a2 = logsig_apply(repmat(b2,1,Q) + LW2_1*a1);
    
    % Output 1
    Y{1,ts} = a2;
end

% Final Delay States
Xf = cell(1,0);
Af = cell(2,0);

% Format Output Arguments
if ~isCellX, Y = cell2mat(Y); end
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
