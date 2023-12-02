% Excel-Labels
% The code takes data from an Excel spreadsheet and concatenates it into cells in a new spreadsheet, ready to automatically print labels.
% Code: matlab
%
%
% Creator: Náthally Lima Arruda 
% E-mail: nathallylym@gmail.com
%
% 
%

% Read a Excel spreadsheet 
[num, dados_excel] = xlsread('name_spreadsheet.xls');

% Get array size
[num_linhas, num_colunas] = size(dados_excel);

% Initialize a cell to store concatenated data
dados_concatenados = cell(num_linhas, 1);

% Use for loop to go through the lines and concatenate the values
for i = 1:num_linhas
    linha_atual = dados_excel(i, :); % Obtém a linha atual
    
    % Convert row values to strings
    valores_str = cellfun(@num2str, num2cell(linha_atual), 'UniformOutput', false);
    
    % Concatenate the values with the line break '\n' between them
    linha_concatenada = strjoin(valores_str, '\n');
    
    % Store in cell
    dados_concatenados{i} = linha_concatenada;
end

% Write the concatenated data to a new Excel spreadsheet
xlswrite('Name_new_spreadsheet.xls', dados_concatenados);
