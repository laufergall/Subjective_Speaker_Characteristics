function [AnswerId,JobName,Worker,Status,WorkDurationInSeconds,TaskReservedTime,TaskStartedTime,AnswerSubmittedTime,AnswerAcceptedTime,AnswerRejectedTime,ScheduledAutoApprovalTime,ScheduledAutoRejectionTime,Answer1fileId,Answer2selections,Answer3selections,Answer4selections,Answer5freetext] = f_read_answers189(filename, startRow, endRow)
%IMPORTFILE Import numeric data from a text file as column vectors.
%   [ANSWERID,JOBNAME,WORKER,STATUS,WORKDURATIONINSECONDS,TASKRESERVEDTIME,TASKSTARTEDTIME,ANSWERSUBMITTEDTIME,ANSWERACCEPTEDTIME,ANSWERREJECTEDTIME,SCHEDULEDAUTOAPPROVALTIME,SCHEDULEDAUTOREJECTIONTIME,ANSWER1FILEID,ANSWER2SELECTIONS,ANSWER3SELECTIONS,ANSWER4SELECTIONS,ANSWER5FREETEXT]
%   = IMPORTFILE(FILENAME) Reads data from text file FILENAME for the
%   default selection.
%
%   [ANSWERID,JOBNAME,WORKER,STATUS,WORKDURATIONINSECONDS,TASKRESERVEDTIME,TASKSTARTEDTIME,ANSWERSUBMITTEDTIME,ANSWERACCEPTEDTIME,ANSWERREJECTEDTIME,SCHEDULEDAUTOAPPROVALTIME,SCHEDULEDAUTOREJECTIONTIME,ANSWER1FILEID,ANSWER2SELECTIONS,ANSWER3SELECTIONS,ANSWER4SELECTIONS,ANSWER5FREETEXT]
%   = IMPORTFILE(FILENAME, STARTROW, ENDROW) Reads data from rows STARTROW
%   through ENDROW of text file FILENAME.
%
% Example:
%   [AnswerId,JobName,Worker,Status,WorkDurationInSeconds,TaskReservedTime,TaskStartedTime,AnswerSubmittedTime,AnswerAcceptedTime,AnswerRejectedTime,ScheduledAutoApprovalTime,ScheduledAutoRejectionTime,Answer1fileId,Answer2selections,Answer3selections,Answer4selections,Answer5freetext] = importfile('Answers_Job_189_2017-02-06T09-26-48.863Z.csv',2, 105);
%
%    See also TEXTSCAN.

% Auto-generated by MATLAB on 2017/03/15 13:32:48

%% Initialize variables.
delimiter = ',';
if nargin<=2
    startRow = 2;
    endRow = inf;
end

%% Read columns of data as text:
% For more information, see the TEXTSCAN documentation.
formatSpec = '%q%q%q%q%q%q%q%q%q%q%q%q%q%q%q%q%q%[^\n\r]';

%% Open the text file.
fileID = fopen(filename,'r');

%% Read columns of data according to the format.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray = textscan(fileID, formatSpec, endRow(1)-startRow(1)+1, 'Delimiter', delimiter, 'HeaderLines', startRow(1)-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
for block=2:length(startRow)
    frewind(fileID);
    dataArrayBlock = textscan(fileID, formatSpec, endRow(block)-startRow(block)+1, 'Delimiter', delimiter, 'HeaderLines', startRow(block)-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
    for col=1:length(dataArray)
        dataArray{col} = [dataArray{col};dataArrayBlock{col}];
    end
end

%% Close the text file.
fclose(fileID);

%% Convert the contents of columns containing numeric text to numbers.
% Replace non-numeric text with NaN.
raw = repmat({''},length(dataArray{1}),length(dataArray)-1);
for col=1:length(dataArray)-1
    raw(1:length(dataArray{col}),col) = dataArray{col};
end
numericData = NaN(size(dataArray{1},1),size(dataArray,2));

for col=[5,14,15,16,17]
    % Converts text in the input cell array to numbers. Replaced non-numeric
    % text with NaN.
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
                if isempty(regexp(numbers, thousandsRegExp, 'once'));
                    numbers = NaN;
                    invalidThousandsSeparator = true;
                end
            end
            % Convert numeric text to numbers.
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
rawNumericColumns = raw(:, [5,14,15,16,17]);
rawCellColumns = raw(:, [1,2,3,4,6,7,8,9,10,11,12,13]);


%% Allocate imported array to column variable names
AnswerId = rawCellColumns(:, 1);
JobName = rawCellColumns(:, 2);
Worker = rawCellColumns(:, 3);
Status = rawCellColumns(:, 4);
WorkDurationInSeconds = cell2mat(rawNumericColumns(:, 1));
TaskReservedTime = rawCellColumns(:, 5);
TaskStartedTime = rawCellColumns(:, 6);
AnswerSubmittedTime = rawCellColumns(:, 7);
AnswerAcceptedTime = rawCellColumns(:, 8);
AnswerRejectedTime = rawCellColumns(:, 9);
ScheduledAutoApprovalTime = rawCellColumns(:, 10);
ScheduledAutoRejectionTime = rawCellColumns(:, 11);
Answer1fileId = rawCellColumns(:, 12);
Answer2selections = cell2mat(rawNumericColumns(:, 2));
Answer3selections = cell2mat(rawNumericColumns(:, 3));
Answer4selections = cell2mat(rawNumericColumns(:, 4));
Answer5freetext = cell2mat(rawNumericColumns(:, 5));


