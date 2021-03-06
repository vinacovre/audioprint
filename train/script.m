dataset = {'s1', 's2', 's3', 's4', 's5', 's6', 's7', 's8'};
table = struct('name','', 'wave',.0, 'sampling',0, 'MFCCs',.0, 'frames',.0, 'FBEs',.0, 'bits',0);

l = dir('*.wav');

%Define variables
Tw = 25;                % analysis frame duration (ms)
Ts = 10;                % analysis frame shift (ms)
alpha = 0.97;           % preemphasis coefficient
M = 20;                 % number of filterbank channels
C = 12;                 % number of cepstral coefficients
L = 22;                 % cepstral sine lifter parameter
LF = 300;               % lower frequency limit (Hz)
HF = 3700;              % upper frequency limit (Hz)

for(i=1:length(dataset))
    
    %pick the name of each audio
    aux = strsplit(l(i).name, '.');
    table(i).name = aux{1};
    
    %pick the wave of each audio
    speech = audioread([l(i).name]);
    table(i).wave = speech;
    
    info = audioinfo([l(i).name]);
    
    %pick the sampling rate of each audio
    table(i).sampling = info.SampleRate;
    
    %Feature extraction (feature vectors as columns)
    [ MFCCs, FBEs, frames ] = ...
        mfcc( [table(i).wave], [table(i).sampling],...
        Tw, Ts, alpha, @hamming, [LF HF], M, C+1, L );
    
    %pick the MFCCs of each audio
    table(i).MFCCs = MFCCs;
    
    %pick the frames of each audio
    table(i).frames = frames;
    
    %pick the FBEs of each audio
    table(i).FBEs = FBEs;
    
    %pick the number of bits per sample of each audio
    table(i).bits = info.BitsPerSample;
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    % Generate data needed for plotting
    [ Nw, NF ] = size( frames );                                 % frame length and number of frames
    time_frames = [0:NF-1]*Ts*0.001+0.5*Nw/[table(i).sampling];  % time vector (s) for frames
    time = [ 0:length(speech)-1 ]/[table(i).sampling];           % time vector (s) for signal samples
    logFBEs = 20*log10( FBEs );                                  % compute log FBEs for plotting
    logFBEs_floor = max(logFBEs(:))-50;                          % get logFBE floor 50 dB below max
    logFBEs( logFBEs<logFBEs_floor ) = logFBEs_floor;            % limit logFBE dynamic range
    
    % Generate plots
    figure('Position', [30 30 800 600], 'PaperPositionMode', 'auto', ...
        'color', 'w', 'PaperOrientation', 'landscape', 'Visible', 'on' );
    
    subplot( 311 );
    plot( time, speech, 'k' );
    xlim( [ min(time_frames) max(time_frames) ] );
    xlabel( 'Time (s)' );
    ylabel( 'Amplitude' );
    title( 'Speech waveform');
    
    subplot( 312 );
    imagesc( time_frames, [1:M], logFBEs );
    axis( 'xy' );
    xlim( [ min(time_frames) max(time_frames) ] );
    xlabel( 'Time (s)' );
    ylabel( 'Channel index' );
    title( 'Log (mel) filterbank energies');
    
    subplot( 313 );
    imagesc( time_frames, [1:C], MFCCs(2:end,:) ); % HTK's TARGETKIND: MFCC
    %imagesc( time_frames, [1:C+1], MFCCs );       % HTK's TARGETKIND: MFCC_0
    axis( 'xy' );
    xlim( [ min(time_frames) max(time_frames) ] );
    xlabel( 'Time (s)' );
    ylabel( 'Cepstrum index' );
    title( 'Mel frequency cepstrum' );
    
    % Set color map to grayscale
    %colormap( 1-colormap('gray') );
    
    % Print figure to pdf and png files
    %print('-dpdf', sprintf(strcat([table(i).name],'.pdf'), mfilename));
    %print('-dpng', sprintf(strcat([table(i).name],'.png'), mfilename));
    
end

clear dataset i l aux info Tw Ts alpha M C L LF MFCCs HF frames FBEs...
    speech time_frames time Nw NF logFBEs_floor logFBEs