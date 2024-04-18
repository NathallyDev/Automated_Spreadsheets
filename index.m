% Excel-Labels
% The code takes data from an Excel spreadsheet and concatenates it into cells in a new spreadsheet, ready to automatically print labels.
% Code: matlab
%
% Date: 12/07/2023
% Dev: Nathally Lima Arruda
% Email: nathallylym@gmail.com
%
%
%
clear all
clc

% Read the Excel spreadsheet
[num, excel_data] = xlsread('spreadsheet_name.xls');

% Get the size of the array
[num_lines, num_columns] = size(excel_data);

% Initialize a cell to store the concatenated data
concatenated_data = cell(num_lines, 1);

% Use for loop to loop through lines and concatenate values
for i = 1:num_lines
     current_line = excel_data(i, :); % Get the current line
    
     % Convert row values to strings
     str_values = cellstr(current_line);
    
     % Concatenate the values with the line break '\n' between them
     concatenated_line = strjoin(str_values, '\n');
    
     % Store in cell
     concatenated_data{i} = concatenated_line;
end

% Write the concatenated data to a new Excel spreadsheet
xlswrite('new_name_spreadsheet.xls', concatenated_data);