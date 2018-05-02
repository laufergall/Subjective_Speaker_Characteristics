function [AnswerId1,JobName,Worker1,Status1,WorkDurationInSeconds,TaskReservedTime,TaskStartedTime1,AnswerSubmittedTime,AnswerAcceptedTime,AnswerRejectedTime,ScheduledAutoApprovalTime,ScheduledAutoRejectionTime,Answer2selections1,Answer3sliders1,Answer4selections1,DynamicContentaudioSamples1] = f_read_answers157_final(filename, startRow, endRow)
%IMPORTFILE Import numeric data from a text file as column vectors.
%   [ANSWERID1,JOBNAME,WORKER1,STATUS1,WORKDURATIONINSECONDS,TASKRESERVEDTIME,TASKSTARTEDTIME1,ANSWERSUBMITTEDTIME,ANSWERACCEPTEDTIME,ANSWERREJECTEDTIME,SCHEDULEDAUTOAPPROVALTIME,SCHEDULEDAUTOREJECTIONTIME,ANSWER2SELECTIONS1,ANSWER3SLIDERS1,ANSWER4SELECTIONS1,DYNAMICCONTENTAUDIOSAMPLES1]
%   = IMPORTFILE(FILENAME) Reads data from text file FILENAME for the
%   default selection.
%
%   [ANSWERID1,JOBNAME,WORKER1,STATUS1,WORKDURATIONINSECONDS,TASKRESERVEDTIME,TASKSTARTEDTIME1,ANSWERSUBMITTEDTIME,ANSWERACCEPTEDTIME,ANSWERREJECTEDTIME,SCHEDULEDAUTOAPPROVALTIME,SCHEDULEDAUTOREJECTIONTIME,ANSWER2SELECTIONS1,ANSWER3SLIDERS1,ANSWER4SELECTIONS1,DYNAMICCONTENTAUDIOSAMPLES1]
%   = IMPORTFILE(FILENAME, STARTROW, ENDROW) Reads data from rows STARTROW
%   through ENDROW of text file FILENAME.
%
% Example:
%   [AnswerId1,JobName,Worker1,Status1,WorkDurationInSeconds,TaskReservedTime,TaskStartedTime1,AnswerSubmittedTime,AnswerAcceptedTime,AnswerRejectedTime,ScheduledAutoApprovalTime,ScheduledAutoRejectionTime,Answer2selections1,Answer3sliders1,Answer4selections1,DynamicContentaudioSamples1]
%   = importfile('Answers_Job-157_2016-10-18T08-39-36Z_1-1681.csv',1,
%   1682);
%
%    See also TEXTSCAN.

% Auto-generated by MATLAB on 2016/10/18 15:52:37

%% Initialize variables.
delimiter = ',';
if nargin<=2
    startRow = 1;
    endRow = inf;
end

%% Read columns of data as strings:
% For more information, see the TEXTSCAN documentation.
formatSpec = '%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%[^\n\r]';

%% Open the text file.
fileID = fopen(filename,'r');

%% Read columns of data according to format string.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray = textscan(fileID, formatSpec, endRow(1)-startRow(1)+1, 'Delimiter', delimiter, 'HeaderLines', startRow(1)-1, 'ReturnOnError', false);
for block=2:length(startRow)
    frewind(fileID);
    dataArrayBlock = textscan(fileID, formatSpec, endRow(block)-startRow(block)+1, 'Delimiter', delimiter, 'HeaderLines', startRow(block)-1, 'ReturnOnError', false);
    for col=1:length(dataArray)
        dataArray{col} = [dataArray{col};dataArrayBlock{col}];
    end
end

%% Close the text file.
fclose(fileID);

%% Convert the contents of columns containing numeric strings to numbers.
% Replace non-numeric strings with NaN.
raw = repmat({''},length(dataArray{1}),length(dataArray)-1);
for col=1:length(dataArray)-1
    raw(1:length(dataArray{col}),col) = dataArray{col};
end
numericData = NaN(size(dataArray{1},1),size(dataArray,2));

for col=[5,13,14,15]
    % Converts strings in the input cell array to numbers. Replaced non-numeric
    % strings with NaN.
    rawData = dataArray{col};
    for row=1:size(rawData, 1);
        % Create a regular expression to detect and remove non-numeric prefixes and
        % suffixes.
        regexstr = '(?<prefix>.*?)(?<numbers>([-]*(\d+[\,]*)+[\.]{0,1}\d*[eEdD]{0,1}[-+]*\d*[i]{0,1})|([-]*(\d+[\,]*)*[\.]{1,1}\d+[eEdD]{0,1}[-+]*\d*[i]{0,1}))(?<suffix>.*)';
        try
            result = regexp(rawData{row}, regexstr, 'names');
            numbers = result.numbers;
            
            % Detected commas in non-thousand locations.
            invalidThousandsSeparator = false;
            if any(numbers==',');
                thousandsRegExp = '^\d+?(\,\d{3})*\.{0,1}\d*$';
                if isempty(regexp(thousandsRegExp, ',', 'once'));
                    numbers = NaN;
                    invalidThousandsSeparator = true;
                end
            end
            % Convert numeric strings to numbers.
            if ~invalidThousandsSeparator;
                numbers = textscan(strrep(numbers, ',', ''), '%f');
                numericData(row, col) = numbers{1};
                raw{row, col} = numbers{1};
            end
        catch me
        end
    end
end


%% Split data into numeric and cell columns.
rawNumericColumns = raw(:, [5,13,14,15]);
rawCellColumns = raw(:, [1,2,3,4,6,7,8,9,10,11,12,16]);


%% Replace non-numeric cells with NaN
R = cellfun(@(x) ~isnumeric(x) && ~islogical(x),rawNumericColumns); % Find non-numeric cells
rawNumericColumns(R) = {NaN}; % Replace non-numeric cells

%% Allocate imported array to column variable names
AnswerId1 = rawCellColumns(:, 1);
JobName = rawCellColumns(:, 2);
Worker1 = rawCellColumns(:, 3);
Status1 = rawCellColumns(:, 4);
WorkDurationInSeconds = cell2mat(rawNumericColumns(:, 1));
TaskReservedTime = rawCellColumns(:, 5);
TaskStartedTime1 = rawCellColumns(:, 6);
AnswerSubmittedTime = rawCellColumns(:, 7);
AnswerAcceptedTime = rawCellColumns(:, 8);
AnswerRejectedTime = rawCellColumns(:, 9);
ScheduledAutoApprovalTime = rawCellColumns(:, 10);
ScheduledAutoRejectionTime = rawCellColumns(:, 11);
Answer2selections1 = cell2mat(rawNumericColumns(:, 2));
Answer3sliders1 = cell2mat(rawNumericColumns(:, 3));
Answer4selections1 = cell2mat(rawNumericColumns(:, 4));
DynamicContentaudioSamples1 = rawCellColumns(:, 12);


