%% Pandoreae chromosome versus Burkholderia

% Load the data
clear;
chromosome = table2cell(readtable('Burkholderia_allGenus_chromosome.fasta.counted.txt', ...
    'ReadVariableNames', false));
chromid = table2cell(readtable('Pandoraea_allGenus_chromosome.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Burkholderia_Count';
output{1,3} = 'Burkholderia_Total';
output{1,4} = 'Burkholderia_Percent';
output{1,5} = 'Pandoraea_Count';
output{1,6} = 'Pandoraea_Total';
output{1,7} = 'Pandoraea_Percent';
output{1,8} = 'Unadjusted_P_Value';
output{1,9} = 'Adjusted_P_Value';
for n = 1:size(chromosome, 1)
    table = table([chromosome{n,2}; chromid{n,2}], [chromosome{n,3}; chromid{n,3}],...
        'VariableNames', {'COG','Total'}, 'RowNames', {'Chromosome','Chromid'});
    [~, pValue] = fishertest(table);
    adj_pValue = pValue * 26;
    output{n+1,1} = chromosome{n,1};
    output{n+1,2} = chromosome{n,2};
    output{n+1,3} = chromosome{n,3};
    output{n+1,4} = round(chromosome{n,4}, 3);
    output{n+1,5} = chromid{n,2};
    output{n+1,6} = chromid{n,3};
    output{n+1,7} = round(chromid{n,4}, 3);
    output{n+1,8} = round(pValue, 3);
    output{n+1,9} = round(adj_pValue, 3);
    clearvars table
end

% Export the data
output = cell2table(output);
writetable(output, 'Pandoraea_Burkholderia_allGenus_chromosome_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

%% Pandoreae chromosome versus Paraburkholderia

% Load the data
clear;
chromosome = table2cell(readtable('Paraburkholderia_allGenus_chromosome.fasta.counted.txt', ...
    'ReadVariableNames', false));
chromid = table2cell(readtable('Pandoraea_allGenus_chromosome.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Paraburkholderia_Count';
output{1,3} = 'Paraburkholderia_Total';
output{1,4} = 'Paraburkholderia_Percent';
output{1,5} = 'Pandoraea_Count';
output{1,6} = 'Pandoraea_Total';
output{1,7} = 'Pandoraea_Percent';
output{1,8} = 'Unadjusted_P_Value';
output{1,9} = 'Adjusted_P_Value';
for n = 1:size(chromosome, 1)
    table = table([chromosome{n,2}; chromid{n,2}], [chromosome{n,3}; chromid{n,3}],...
        'VariableNames', {'COG','Total'}, 'RowNames', {'Chromosome','Chromid'});
    [~, pValue] = fishertest(table);
    adj_pValue = pValue * 26;
    output{n+1,1} = chromosome{n,1};
    output{n+1,2} = chromosome{n,2};
    output{n+1,3} = chromosome{n,3};
    output{n+1,4} = round(chromosome{n,4}, 3);
    output{n+1,5} = chromid{n,2};
    output{n+1,6} = chromid{n,3};
    output{n+1,7} = round(chromid{n,4}, 3);
    output{n+1,8} = round(pValue, 3);
    output{n+1,9} = round(adj_pValue, 3);
    clearvars table
end

% Export the data
output = cell2table(output);
writetable(output, 'Pandoraea_Paraburkholderia_allGenus_chromosome_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

%% Pandoreae chromosome versus Cupriavidus

% Load the data
clear;
chromosome = table2cell(readtable('Cupriavidus_allGenus_chromosome.fasta.counted.txt', ...
    'ReadVariableNames', false));
chromid = table2cell(readtable('Pandoraea_allGenus_chromosome.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Cupriavidus_Count';
output{1,3} = 'Cupriavidus_Total';
output{1,4} = 'Cupriavidus_Percent';
output{1,5} = 'Pandoraea_Count';
output{1,6} = 'Pandoraea_Total';
output{1,7} = 'Pandoraea_Percent';
output{1,8} = 'Unadjusted_P_Value';
output{1,9} = 'Adjusted_P_Value';
for n = 1:size(chromosome, 1)
    table = table([chromosome{n,2}; chromid{n,2}], [chromosome{n,3}; chromid{n,3}],...
        'VariableNames', {'COG','Total'}, 'RowNames', {'Chromosome','Chromid'});
    [~, pValue] = fishertest(table);
    adj_pValue = pValue * 26;
    output{n+1,1} = chromosome{n,1};
    output{n+1,2} = chromosome{n,2};
    output{n+1,3} = chromosome{n,3};
    output{n+1,4} = round(chromosome{n,4}, 3);
    output{n+1,5} = chromid{n,2};
    output{n+1,6} = chromid{n,3};
    output{n+1,7} = round(chromid{n,4}, 3);
    output{n+1,8} = round(pValue, 3);
    output{n+1,9} = round(adj_pValue, 3);
    clearvars table
end

% Export the data
output = cell2table(output);
writetable(output, 'Pandoraea_Cupriavidus_allGenus_chromosome_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

%% Pandoreae chromosome versus Ralstonia

% Load the data
clear;
chromosome = table2cell(readtable('Ralstonia_allGenus_chromosome.fasta.counted.txt', ...
    'ReadVariableNames', false));
chromid = table2cell(readtable('Pandoraea_allGenus_chromosome.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Ralstonia_Count';
output{1,3} = 'Ralstonia_Total';
output{1,4} = 'Ralstonia_Percent';
output{1,5} = 'Pandoraea_Count';
output{1,6} = 'Pandoraea_Total';
output{1,7} = 'Pandoraea_Percent';
output{1,8} = 'Unadjusted_P_Value';
output{1,9} = 'Adjusted_P_Value';
for n = 1:size(chromosome, 1)
    table = table([chromosome{n,2}; chromid{n,2}], [chromosome{n,3}; chromid{n,3}],...
        'VariableNames', {'COG','Total'}, 'RowNames', {'Chromosome','Chromid'});
    [~, pValue] = fishertest(table);
    adj_pValue = pValue * 26;
    output{n+1,1} = chromosome{n,1};
    output{n+1,2} = chromosome{n,2};
    output{n+1,3} = chromosome{n,3};
    output{n+1,4} = round(chromosome{n,4}, 3);
    output{n+1,5} = chromid{n,2};
    output{n+1,6} = chromid{n,3};
    output{n+1,7} = round(chromid{n,4}, 3);
    output{n+1,8} = round(pValue, 3);
    output{n+1,9} = round(adj_pValue, 3);
    clearvars table
end

% Export the data
output = cell2table(output);
writetable(output, 'Pandoraea_Ralstonia_allGenus_chromosome_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

%% Burkholderia chromosome versus Paraburkholderia

% Load the data
clear;
chromosome = table2cell(readtable('Burkholderia_allGenus_chromosome.fasta.counted.txt', ...
    'ReadVariableNames', false));
chromid = table2cell(readtable('Paraburkholderia_allGenus_chromosome.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Burkholderia_Count';
output{1,3} = 'Burkholderia_Total';
output{1,4} = 'Burkholderia_Percent';
output{1,5} = 'Paraburkholderia_Count';
output{1,6} = 'Paraburkholderia_Total';
output{1,7} = 'Paraburkholderia_Percent';
output{1,8} = 'Unadjusted_P_Value';
output{1,9} = 'Adjusted_P_Value';
for n = 1:size(chromosome, 1)
    table = table([chromosome{n,2}; chromid{n,2}], [chromosome{n,3}; chromid{n,3}],...
        'VariableNames', {'COG','Total'}, 'RowNames', {'Chromosome','Chromid'});
    [~, pValue] = fishertest(table);
    adj_pValue = pValue * 26;
    output{n+1,1} = chromosome{n,1};
    output{n+1,2} = chromosome{n,2};
    output{n+1,3} = chromosome{n,3};
    output{n+1,4} = round(chromosome{n,4}, 3);
    output{n+1,5} = chromid{n,2};
    output{n+1,6} = chromid{n,3};
    output{n+1,7} = round(chromid{n,4}, 3);
    output{n+1,8} = round(pValue, 3);
    output{n+1,9} = round(adj_pValue, 3);
    clearvars table
end

% Export the data
output = cell2table(output);
writetable(output, 'Burkholderia_Paraburkholderia_allGenus_chromosome_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

%% Burkholderia chromid versus Paraburkholderia

% Load the data
clear;
chromosome = table2cell(readtable('Burkholderia_allGenus_chromid.fasta.counted.txt', ...
    'ReadVariableNames', false));
chromid = table2cell(readtable('Paraburkholderia_allGenus_chromid.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Burkholderia_Count';
output{1,3} = 'Burkholderia_Total';
output{1,4} = 'Burkholderia_Percent';
output{1,5} = 'Paraburkholderia_Count';
output{1,6} = 'Paraburkholderia_Total';
output{1,7} = 'Paraburkholderia_Percent';
output{1,8} = 'Unadjusted_P_Value';
output{1,9} = 'Adjusted_P_Value';
for n = 1:size(chromosome, 1)
    table = table([chromosome{n,2}; chromid{n,2}], [chromosome{n,3}; chromid{n,3}],...
        'VariableNames', {'COG','Total'}, 'RowNames', {'Chromosome','Chromid'});
    [~, pValue] = fishertest(table);
    adj_pValue = pValue * 26;
    output{n+1,1} = chromosome{n,1};
    output{n+1,2} = chromosome{n,2};
    output{n+1,3} = chromosome{n,3};
    output{n+1,4} = round(chromosome{n,4}, 3);
    output{n+1,5} = chromid{n,2};
    output{n+1,6} = chromid{n,3};
    output{n+1,7} = round(chromid{n,4}, 3);
    output{n+1,8} = round(pValue, 3);
    output{n+1,9} = round(adj_pValue, 3);
    clearvars table
end

% Export the data
output = cell2table(output);
writetable(output, 'Burkholderia_Paraburkholderia_allGenus_chromid_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

%% Burkholderia chromosome versus Ralstonia

% Load the data
clear;
chromosome = table2cell(readtable('Burkholderia_allGenus_chromosome.fasta.counted.txt', ...
    'ReadVariableNames', false));
chromid = table2cell(readtable('Ralstonia_allGenus_chromosome.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Burkholderia_Count';
output{1,3} = 'Burkholderia_Total';
output{1,4} = 'Burkholderia_Percent';
output{1,5} = 'Ralstonia_Count';
output{1,6} = 'Ralstonia_Total';
output{1,7} = 'Ralstonia_Percent';
output{1,8} = 'Unadjusted_P_Value';
output{1,9} = 'Adjusted_P_Value';
for n = 1:size(chromosome, 1)
    table = table([chromosome{n,2}; chromid{n,2}], [chromosome{n,3}; chromid{n,3}],...
        'VariableNames', {'COG','Total'}, 'RowNames', {'Chromosome','Chromid'});
    [~, pValue] = fishertest(table);
    adj_pValue = pValue * 26;
    output{n+1,1} = chromosome{n,1};
    output{n+1,2} = chromosome{n,2};
    output{n+1,3} = chromosome{n,3};
    output{n+1,4} = round(chromosome{n,4}, 3);
    output{n+1,5} = chromid{n,2};
    output{n+1,6} = chromid{n,3};
    output{n+1,7} = round(chromid{n,4}, 3);
    output{n+1,8} = round(pValue, 3);
    output{n+1,9} = round(adj_pValue, 3);
    clearvars table
end

% Export the data
output = cell2table(output);
writetable(output, 'Burkholderia_Ralstonia_allGenus_chromosome_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

%% Burkholderia chromid versus Ralstonia

% Load the data
clear;
chromosome = table2cell(readtable('Burkholderia_allGenus_chromid.fasta.counted.txt', ...
    'ReadVariableNames', false));
chromid = table2cell(readtable('Ralstonia_allGenus_chromid.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Burkholderia_Count';
output{1,3} = 'Burkholderia_Total';
output{1,4} = 'Burkholderia_Percent';
output{1,5} = 'Ralstonia_Count';
output{1,6} = 'Ralstonia_Total';
output{1,7} = 'Ralstonia_Percent';
output{1,8} = 'Unadjusted_P_Value';
output{1,9} = 'Adjusted_P_Value';
for n = 1:size(chromosome, 1)
    table = table([chromosome{n,2}; chromid{n,2}], [chromosome{n,3}; chromid{n,3}],...
        'VariableNames', {'COG','Total'}, 'RowNames', {'Chromosome','Chromid'});
    [~, pValue] = fishertest(table);
    adj_pValue = pValue * 26;
    output{n+1,1} = chromosome{n,1};
    output{n+1,2} = chromosome{n,2};
    output{n+1,3} = chromosome{n,3};
    output{n+1,4} = round(chromosome{n,4}, 3);
    output{n+1,5} = chromid{n,2};
    output{n+1,6} = chromid{n,3};
    output{n+1,7} = round(chromid{n,4}, 3);
    output{n+1,8} = round(pValue, 3);
    output{n+1,9} = round(adj_pValue, 3);
    clearvars table
end

% Export the data
output = cell2table(output);
writetable(output, 'Burkholderia_Ralstonia_allGenus_chromid_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

%% Cupriavidus chromosome versus Ralstonia

% Load the data
clear;
chromosome = table2cell(readtable('Cupriavidus_allGenus_chromosome.fasta.counted.txt', ...
    'ReadVariableNames', false));
chromid = table2cell(readtable('Ralstonia_allGenus_chromosome.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Cupriavidus_Count';
output{1,3} = 'Cupriavidus_Total';
output{1,4} = 'Cupriavidus_Percent';
output{1,5} = 'Ralstonia_Count';
output{1,6} = 'Ralstonia_Total';
output{1,7} = 'Ralstonia_Percent';
output{1,8} = 'Unadjusted_P_Value';
output{1,9} = 'Adjusted_P_Value';
for n = 1:size(chromosome, 1)
    table = table([chromosome{n,2}; chromid{n,2}], [chromosome{n,3}; chromid{n,3}],...
        'VariableNames', {'COG','Total'}, 'RowNames', {'Chromosome','Chromid'});
    [~, pValue] = fishertest(table);
    adj_pValue = pValue * 26;
    output{n+1,1} = chromosome{n,1};
    output{n+1,2} = chromosome{n,2};
    output{n+1,3} = chromosome{n,3};
    output{n+1,4} = round(chromosome{n,4}, 3);
    output{n+1,5} = chromid{n,2};
    output{n+1,6} = chromid{n,3};
    output{n+1,7} = round(chromid{n,4}, 3);
    output{n+1,8} = round(pValue, 3);
    output{n+1,9} = round(adj_pValue, 3);
    clearvars table
end

% Export the data
output = cell2table(output);
writetable(output, 'Cupriavidus_Ralstonia_allGenus_chromosome_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

%% Cupriavidus chromid versus Ralstonia

% Load the data
clear;
chromosome = table2cell(readtable('Cupriavidus_allGenus_chromid.fasta.counted.txt', ...
    'ReadVariableNames', false));
chromid = table2cell(readtable('Ralstonia_allGenus_chromid.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Cupriavidus_Count';
output{1,3} = 'Cupriavidus_Total';
output{1,4} = 'Cupriavidus_Percent';
output{1,5} = 'Ralstonia_Count';
output{1,6} = 'Ralstonia_Total';
output{1,7} = 'Ralstonia_Percent';
output{1,8} = 'Unadjusted_P_Value';
output{1,9} = 'Adjusted_P_Value';
for n = 1:size(chromosome, 1)
    table = table([chromosome{n,2}; chromid{n,2}], [chromosome{n,3}; chromid{n,3}],...
        'VariableNames', {'COG','Total'}, 'RowNames', {'Chromosome','Chromid'});
    [~, pValue] = fishertest(table);
    adj_pValue = pValue * 26;
    output{n+1,1} = chromosome{n,1};
    output{n+1,2} = chromosome{n,2};
    output{n+1,3} = chromosome{n,3};
    output{n+1,4} = round(chromosome{n,4}, 3);
    output{n+1,5} = chromid{n,2};
    output{n+1,6} = chromid{n,3};
    output{n+1,7} = round(chromid{n,4}, 3);
    output{n+1,8} = round(pValue, 3);
    output{n+1,9} = round(adj_pValue, 3);
    clearvars table
end

% Export the data
output = cell2table(output);
writetable(output, 'Cupriavidus_Ralstonia_allGenus_chromid_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

%% Paraburkholderia chromosome versus Cupriavidus

% Load the data
clear;
chromosome = table2cell(readtable('Paraburkholderia_allGenus_chromosome.fasta.counted.txt', ...
    'ReadVariableNames', false));
chromid = table2cell(readtable('Cupriavidus_allGenus_chromosome.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Paraburkholderia_Count';
output{1,3} = 'Paraburkholderia_Total';
output{1,4} = 'Paraburkholderia_Percent';
output{1,5} = 'Cupriavidus_Count';
output{1,6} = 'Cupriavidus_Total';
output{1,7} = 'Cupriavidus_Percent';
output{1,8} = 'Unadjusted_P_Value';
output{1,9} = 'Adjusted_P_Value';
for n = 1:size(chromosome, 1)
    table = table([chromosome{n,2}; chromid{n,2}], [chromosome{n,3}; chromid{n,3}],...
        'VariableNames', {'COG','Total'}, 'RowNames', {'Chromosome','Chromid'});
    [~, pValue] = fishertest(table);
    adj_pValue = pValue * 26;
    output{n+1,1} = chromosome{n,1};
    output{n+1,2} = chromosome{n,2};
    output{n+1,3} = chromosome{n,3};
    output{n+1,4} = round(chromosome{n,4}, 3);
    output{n+1,5} = chromid{n,2};
    output{n+1,6} = chromid{n,3};
    output{n+1,7} = round(chromid{n,4}, 3);
    output{n+1,8} = round(pValue, 3);
    output{n+1,9} = round(adj_pValue, 3);
    clearvars table
end

% Export the data
output = cell2table(output);
writetable(output, 'Paraburkholderia_Cupriavidus_allGenus_chromosome_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

%% Paraburkholderia chromosome versus Cupriavidus

% Load the data
clear;
chromosome = table2cell(readtable('Paraburkholderia_allGenus_chromid.fasta.counted.txt', ...
    'ReadVariableNames', false));
chromid = table2cell(readtable('Cupriavidus_allGenus_chromid.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Paraburkholderia_Count';
output{1,3} = 'Paraburkholderia_Total';
output{1,4} = 'Paraburkholderia_Percent';
output{1,5} = 'Cupriavidus_Count';
output{1,6} = 'Cupriavidus_Total';
output{1,7} = 'Cupriavidus_Percent';
output{1,8} = 'Unadjusted_P_Value';
output{1,9} = 'Adjusted_P_Value';
for n = 1:size(chromosome, 1)
    table = table([chromosome{n,2}; chromid{n,2}], [chromosome{n,3}; chromid{n,3}],...
        'VariableNames', {'COG','Total'}, 'RowNames', {'Chromosome','Chromid'});
    [~, pValue] = fishertest(table);
    adj_pValue = pValue * 26;
    output{n+1,1} = chromosome{n,1};
    output{n+1,2} = chromosome{n,2};
    output{n+1,3} = chromosome{n,3};
    output{n+1,4} = round(chromosome{n,4}, 3);
    output{n+1,5} = chromid{n,2};
    output{n+1,6} = chromid{n,3};
    output{n+1,7} = round(chromid{n,4}, 3);
    output{n+1,8} = round(pValue, 3);
    output{n+1,9} = round(adj_pValue, 3);
    clearvars table
end

% Export the data
output = cell2table(output);
writetable(output, 'Paraburkholderia_Cupriavidus_allGenus_chromid_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

exit
