%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                          %
%          Generated by MATLAB 9.13 and Fixed-Point Designer 7.5           %
%                                                                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%#codegen
function out  = modelo_podado_fixpt(in)
    % Definición de Pesos y Biases
    fm = get_fimath();

    w1 = fi([0.35629463,0,0,0,0,0,0,0.3370018,0.41427842,0,0,0.26830062,0,0,0,0;
        0,0,0,0,0,0,0,0,-0.36321244,0.25325423,0,0,0.44944933,0,0,0;
        0,0,0,0,0,0.22248699,0,-0.241909,0,0,0,0,-0.23654217,0,0,0;
        -0.29439187,0.4574218,0,0.45052138,0,-0.42757156,-0.29788017,-0.28277028,0,0,0,0.3440553,0.6536286,0,0,-0.3314905;
        0,0,0,0,0,0,0.38425708,0,0,0,0,0,0,0,0,-0.3794041;
        0,0,0,0.40702066,0,0,0,0,0,0,0,0.42195848,0,0.23664792,-0.43976885,0;
        -0.55722076,0.37623388,-0.50811684,0,0,-0.62035316,-0.48635638,0,-0.47943002,0,0,0.72710097,0.49510816,0.31542656,-0.33105776,0;
        -0.7037319,0,0,0.6431832,0,-0.75052834,-0.61475813,-0.5425766,-0.69821745,0.5405045,0,0.31412274,0.44678912,0,0,0;
        0.2823176,0.25126523,0,0,0,0,0,0,0,0,-0.24659583,0,0,-0.34832573,0.44006157,0;
        0.46125144,0,0,-0.54928255,0,0.5497966,0.25368565,0.46567312,0.52926993,0,0,-0.4847512,-0.5637012,0,0.35367823,0;
        -0.25072944,0,0,0.5546039,-0.40180236,-0.43396282,-0.38789392,-0.39497095,-0.5835731,0.8738226,-0.26499856,0.7179631,0.9799122,-0.42635387,-0.59704655,0;
        0,0,0,0,0.40355,0,0,0.28701645,0,0,0,0,0,-0.3097896,0,0;
        0,0,0,0,-0.6233255,0,-0.3315879,0,-0.5160449,0.68266326,0,0.48849687,0.51718843,0,-0.50908417,0;
        -0.2921285,0.47170106,-0.479697,0.8761055,-0.4376588,0,-0.8501156,-0.39385918,-0.47335815,0.8952005,0,0.7925496,0.7421226,-0.45037356,-0.62230635,0;
        0,0,0,0,0.2635939,0,0.36220437,0,0,0,0,0,-0.3359365,-0.32258055,0,0;
        0,0,-0.26040456,0,0,0.46311748,0,0,0,-0.32967037,0,-0.33254045,-0.4657574,0.3994813,0.37297848,0.29438335;
        0,0,-0.2617044,0,0,0,0,0,0.2658706,-0.39022052,0,0,0,0,0,0;
        0,0,0.2520737,0,0,0,0.42658207,0,0,0,0,-0.28308094,0.3983001,0.26413754,0,0;
        0.55926096,0,0,-0.32427958,0.49794635,0,0,0.45929107,0.36227754,0,0,-0.25600332,0,-0.28406587,0,0;
        0,0,0.4049486,0,0.4231699,0,0.35304913,0.27100348,0.550794,0,0,-0.26097295,-0.37376466,0.3596448,0,0;
        0,0,0,0,-0.3933305,0,-0.27187255,0,0,0.43621144,0,0.49188974,0.3163046,0,0,0;
        0,0.36496148,0,0.36912063,0,0,-0.35975498,0,-0.53500086,0,0,0.44115207,0.37878942,0,-0.30517843,0;
        -0.41573662,0.35481542,-0.38455883,0.45765355,0,0,0,-0.33987206,-0.3137977,0.53128725,0.2755063,0,0,0.30221927,0,-0.31873217;
        0,0.26501808,0,0.7959848,0,0,0,-0.31927502,0,0.50668186,0,0.4650357,0.65266323,0,-0.504406,0;
        0.36701754,0,0,0,0,0,-0.3103504,0,0,0,0,0,0,-0.3779801,0,0;
        -0.4056271,0,0,0.45547637,-0.42204943,-0.4945201,0,0,0,0.54340833,0,0,0,0,0,0;
        -0.5217325,0.29212543,-0.27025774,0.7271279,-0.2595196,0,0,0,0,0.34032732,0.25556472,0.5552559,0.7285966,0,0,0;
        -0.64417547,0,0,0,-0.5278759,-0.45524722,0,-0.49572945,0,0,0,0.55523276,0,0,-0.30204478,-0.34333193;
        0,0.5978342,0,0.43083057,0,0,-0.3066306,0,-0.3196687,0.3783282,0.3279846,0,0.46793807,0,0,0;
        0,0,0,0,0,0,0,0,0,0.2669539,0,0,0.3725075,0.38957828,0,0], 1, 16, 15, fm);

    b1 = fi([0.5397824;
        -0.29916403;
        0.33637932;
        -0.5371432;
        0.5989915;
        0.6212513;
        0.675639;
        0.49066234;
        0.72193396;
        -0.58303773;
        0;
        -0.4843972;
        -0.5799632;
        0.06744298;
        0.51418537;
        -0.04793478], 1, 16, 15, fm);

    w2 = fi([0;
        0;
        0;
        1.3560861;
        -1.3827305;
        -1.5659953;
        -1.4036609;
        0;
        -1.7140889;
        0;
        0;
        0;
        1.443673;
        0;
        0;
        0], 1, 16, 14, fm);

    b2 = fi(-0.43444163, 1, 16, 16, fm);

    % Capa oculta

    mid_res = fi(zeros(16,1), 0, 16, 14, fm);
    for i = 1:16
        mid_res(i) = neurona_mid(in, w1(:,i), b1(i));
    end
    
    % Capa de salida

    salida_neurona = fi(neurona_out(mid_res, w2, b2), 0, 16, 16, fm);

    if salida_neurona >= fi(0.5, 0, 16, 16, fm)
        out = fi(1, 0, 1, 0, fm);
    else
        out = fi(0, 0, 1, 0, fm);
    end
end

function [y] = neurona_mid(x, w, b)
    fm = get_fimath();

    acum = fi(0, 1, 16, 13, fm);
    for i = 1:30
        acum(:) = acum + x(i)*w(i);
    end
    acum(:) = acum + b;
    if acum < fi(0, 0, 1, 0, fm)
        y = fi(0, 0, 16, 14, fm);
    else
        y = fi(acum, 0, 16, 14, fm);
    end
end

function [y] = neurona_out(x, w, b)
    fm = get_fimath();

    acum = fi(0, 1, 16, 12, fm);
    for i = 1:16
        acum(:) = acum + x(i)*w(i);
    end
    acum(:) = acum + b;

    y = fi(fi_div(fi(0.5, 0, 16, 16, fm)*acum, (fi(1, 0, 1, 0, fm)+abs(acum)))+fi(0.5, 0, 16, 16, fm), 0, 16, 16, fm);
%     y = sigmoide(acum);
    % y = 0.4*tanh(acum) + 0.5;
end



function ntype = divideType(a,b)
    coder.inline( 'always' );
    nt1 = numerictype( a );
    nt2 = numerictype( b );
    maxFL = max( [ min( nt1.WordLength, nt1.FractionLength ), min( nt2.WordLength, nt2.FractionLength ) ] );
    FL = max( maxFL, 24 );
    extraBits = (FL - maxFL);
    WL = nt1.WordLength + nt2.WordLength;
    WL = min( WL, 124 );
    if (WL + extraBits)<64
        ntype = numerictype( nt1.Signed || nt2.Signed, WL + extraBits, FL );
    else
        ntype = numerictype( nt1.Signed || nt2.Signed, WL, FL );
    end
end


function c = fi_div(a,b)
    coder.inline( 'always' );
    a1 = fi( a, 'RoundMode', 'fix' );
    b1 = fi( b, 'RoundMode', 'fix' );
    nType = divideType( a1, b1 );
    if isfi( a ) && isfi( b ) && isscalar( b )
        c1 = divide( nType, a1, b1 );
        c = fi( c1, numerictype( c1 ), fimath( a ) );
    else
        c = fi( a / b, nType );
    end
end

function fm = get_fimath()
	fm = fimath('RoundingMethod', 'Floor',...
	     'OverflowAction', 'Wrap',...
	     'ProductMode','FullPrecision',...
	     'MaxProductWordLength', 128,...
	     'SumMode','FullPrecision',...
	     'MaxSumWordLength', 128);
end
