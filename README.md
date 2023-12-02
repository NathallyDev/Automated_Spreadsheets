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

% Ler a planilha Excel
[num, dados_excel] = xlsread('Geral.xls');

% Obter o tamanho da matriz
[num_linhas, num_colunas] = size(dados_excel);

% Inicializar uma célula para armazenar os dados concatenados
dados_concatenados = cell(num_linhas, 1);

% Usar loop for para percorrer as linhas e concatenar os valores
for i = 1:num_linhas
    linha_atual = dados_excel(i, :); % Obtém a linha atual
    
    % Converter os valores da linha para strings
    valores_str = cellfun(@num2str, num2cell(linha_atual), 'UniformOutput', false);
    
    % Concatenar os valores com a quebra de linha '\n' entre eles
    linha_concatenada = strjoin(valores_str, '\n');
    
    % Armazenar na célula
    dados_concatenados{i} = linha_concatenada;
end

% Escrever os dados concatenados para uma nova planilha Excel
xlswrite('Nova_Geral.xls', dados_concatenados);
