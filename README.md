% Excel-Labels
% The code takes data from an Excel spreadsheet and concatenates it into cells in a new spreadsheet, ready to automatically print labels.
% Code: matlab
%
% Date: 02/12/2023
% Creator: Náthally Lima Arruda 
% E-mail: nathallylym@gmail.com
%
% 
%

% Read an Excel spreadsheet 
[num, data_excel] = xlsread('name_spreadsheet.xls');

% Get array size
[num_lines, num_columns] = size(data_excel);

% Initialize a cell to store concatenated data
data_concatenated = cell(num_lines, 1);

% Use for loop to go through the lines and concatenate the values
for i = 1:num_lines
    line_current = data_excel(i, :); % Get the current line
    
    % Convert row values to strings
    values_str = cellfun(@num2str, num2cell(line_current), 'UniformOutput', false);
    
    % Concatenate the values with the line break '\n' between them
    line_concatenated = strjoin(values_str, '\n');
    
    % Store in cell
    data_concatenated{i} = line_concatenated;
end

% Write the concatenated data to a new Excel spreadsheet
writematrix(data_concatenated, 'Name_new_spreadsheet.xlsx');
