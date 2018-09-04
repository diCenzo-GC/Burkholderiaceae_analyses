%% Change working directory

cd ../COG_categories/

%% Burkholderia all-genus chromid

% Load the data
clear;
chromosome = table2cell(readtable('Burkholderia_allGenus_chromosome.fasta.counted.txt', ...
    'ReadVariableNames', false));
chromid = table2cell(readtable('Burkholderia_allGenus_chromid.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Chromosome_Count';
output{1,3} = 'Chromosome_Total';
output{1,4} = 'Chromosome_Percent';
output{1,5} = 'Chromid_Count';
output{1,6} = 'Chromid_Total';
output{1,7} = 'Chromid_Percent';
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
writetable(output, 'Burkholderia_allGenus_chromosome_chromid_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

%% Burkholderia BCC chromid

% Load the data
clear;
chromosome = table2cell(readtable('Burkholderia_BCC_chromosome.fasta.counted.txt', ...
    'ReadVariableNames', false));
chromid = table2cell(readtable('Burkholderia_BCC_chromid.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Chromosome_Count';
output{1,3} = 'Chromosome_Total';
output{1,4} = 'Chromosome_Percent';
output{1,5} = 'Chromid_Count';
output{1,6} = 'Chromid_Total';
output{1,7} = 'Chromid_Percent';
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
writetable(output, 'Burkholderia_BCC_chromosome_chromid_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

%% Burkholderia BCC megaplasmid

% Load the data
clear;
chromosome = table2cell(readtable('Burkholderia_BCC_chromosome.fasta.counted.txt', ...
    'ReadVariableNames', false));
megaplasmid = table2cell(readtable('Burkholderia_BCC_megaplasmid.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Chromosome_Count';
output{1,3} = 'Chromosome_Total';
output{1,4} = 'Chromosome_Percent';
output{1,5} = 'Megaplasmid_Count';
output{1,6} = 'Megaplasmid_Total';
output{1,7} = 'Megaplasmid_Percent';
output{1,8} = 'Unadjusted_P_Value';
output{1,9} = 'Adjusted_P_Value';
for n = 1:size(chromosome, 1)
    table = table([chromosome{n,2}; megaplasmid{n,2}], [chromosome{n,3}; megaplasmid{n,3}],...
        'VariableNames', {'COG','Total'}, 'RowNames', {'Chromosome','megaplasmid'});
    [~, pValue] = fishertest(table);
    adj_pValue = pValue * 26;
    output{n+1,1} = chromosome{n,1};
    output{n+1,2} = chromosome{n,2};
    output{n+1,3} = chromosome{n,3};
    output{n+1,4} = round(chromosome{n,4}, 3);
    output{n+1,5} = megaplasmid{n,2};
    output{n+1,6} = megaplasmid{n,3};
    output{n+1,7} = round(megaplasmid{n,4}, 3);
    output{n+1,8} = round(pValue, 3);
    output{n+1,9} = round(adj_pValue, 3);
    clearvars table
end

% Export the data
output = cell2table(output);
writetable(output, 'Burkholderia_BCC_chromosome_megaplasmid_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

%% Burkholderia non-BCC chromid

% Load the data
clear;
chromosome = table2cell(readtable('Burkholderia_nonBCC_chromosome.fasta.counted.txt', ...
    'ReadVariableNames', false));
chromid = table2cell(readtable('Burkholderia_nonBCC_chromid.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Chromosome_Count';
output{1,3} = 'Chromosome_Total';
output{1,4} = 'Chromosome_Percent';
output{1,5} = 'Chromid_Count';
output{1,6} = 'Chromid_Total';
output{1,7} = 'Chromid_Percent';
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
writetable(output, 'Burkholderia_nonBCC_chromosome_chromid_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

%% Paraburkholderia all-genus chromid

% Load the data
clear;
chromosome = table2cell(readtable('Paraburkholderia_allGenus_chromosome.fasta.counted.txt', ...
    'ReadVariableNames', false));
chromid = table2cell(readtable('Paraburkholderia_allGenus_chromid.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Chromosome_Count';
output{1,3} = 'Chromosome_Total';
output{1,4} = 'Chromosome_Percent';
output{1,5} = 'Chromid_Count';
output{1,6} = 'Chromid_Total';
output{1,7} = 'Chromid_Percent';
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
writetable(output, 'Paraburkholderia_allGenus_chromosome_chromid_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

%% Paraburkholderia without-megaplasmid chromid

% Load the data
clear;
chromosome = table2cell(readtable('Paraburkholderia_woMega_chromosome.fasta.counted.txt', ...
    'ReadVariableNames', false));
chromid = table2cell(readtable('Paraburkholderia_woMega_chromid.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Chromosome_Count';
output{1,3} = 'Chromosome_Total';
output{1,4} = 'Chromosome_Percent';
output{1,5} = 'Chromid_Count';
output{1,6} = 'Chromid_Total';
output{1,7} = 'Chromid_Percent';
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
writetable(output, 'Paraburkholderia_woMega_chromosome_chromid_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

%% Paraburkholderia with-megaplasmid chromid

% Load the data
clear;
chromosome = table2cell(readtable('Paraburkholderia_wMega_chromosome.fasta.counted.txt', ...
    'ReadVariableNames', false));
chromid = table2cell(readtable('Paraburkholderia_wMega_chromid.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Chromosome_Count';
output{1,3} = 'Chromosome_Total';
output{1,4} = 'Chromosome_Percent';
output{1,5} = 'Chromid_Count';
output{1,6} = 'Chromid_Total';
output{1,7} = 'Chromid_Percent';
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
writetable(output, 'Paraburkholderia_wMega_chromosome_chromid_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

%% Paraburkholderia with-megaplasmid megaplasmid

% Load the data
clear;
chromosome = table2cell(readtable('Paraburkholderia_wMega_chromosome.fasta.counted.txt', ...
    'ReadVariableNames', false));
megaplasmid = table2cell(readtable('Paraburkholderia_wMega_megaplasmid.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Chromosome_Count';
output{1,3} = 'Chromosome_Total';
output{1,4} = 'Chromosome_Percent';
output{1,5} = 'Megaplasmid_Count';
output{1,6} = 'Megaplasmid_Total';
output{1,7} = 'Megaplasmid_Percent';
output{1,8} = 'Unadjusted_P_Value';
output{1,9} = 'Adjusted_P_Value';
for n = 1:size(chromosome, 1)
    table = table([chromosome{n,2}; megaplasmid{n,2}], [chromosome{n,3}; megaplasmid{n,3}],...
        'VariableNames', {'COG','Total'}, 'RowNames', {'Chromosome','Megaplasmid'});
    [~, pValue] = fishertest(table);
    adj_pValue = pValue * 26;
    output{n+1,1} = chromosome{n,1};
    output{n+1,2} = chromosome{n,2};
    output{n+1,3} = chromosome{n,3};
    output{n+1,4} = round(chromosome{n,4}, 3);
    output{n+1,5} = megaplasmid{n,2};
    output{n+1,6} = megaplasmid{n,3};
    output{n+1,7} = round(megaplasmid{n,4}, 3);
    output{n+1,8} = round(pValue, 3);
    output{n+1,9} = round(adj_pValue, 3);
    clearvars table
end

% Export the data
output = cell2table(output);
writetable(output, 'Paraburkholderia_wMega_chromosome_megaplasmid_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

%% Cupriavidus all-genus chromid

% Load the data
clear;
chromosome = table2cell(readtable('Cupriavidus_allGenus_chromosome.fasta.counted.txt', ...
    'ReadVariableNames', false));
chromid = table2cell(readtable('Cupriavidus_allGenus_chromid.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Chromosome_Count';
output{1,3} = 'Chromosome_Total';
output{1,4} = 'Chromosome_Percent';
output{1,5} = 'Chromid_Count';
output{1,6} = 'Chromid_Total';
output{1,7} = 'Chromid_Percent';
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
writetable(output, 'Cupriavidus_allGenus_chromosome_chromid_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

%% Ralstonia all-genus chromid

% Load the data
clear;
chromosome = table2cell(readtable('Ralstonia_allGenus_chromosome.fasta.counted.txt', ...
    'ReadVariableNames', false));
chromid = table2cell(readtable('Ralstonia_allGenus_chromid.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Chromosome_Count';
output{1,3} = 'Chromosome_Total';
output{1,4} = 'Chromosome_Percent';
output{1,5} = 'Chromid_Count';
output{1,6} = 'Chromid_Total';
output{1,7} = 'Chromid_Percent';
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
writetable(output, 'Ralstonia_allGenus_chromosome_chromid_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

%% Ralstonia eutropha H16 chromid

% Load the data
clear;
chromosome = table2cell(readtable('NC_008313.1.gff.proteome.fasta.counted.txt', ...
    'ReadVariableNames', false));
chromid = table2cell(readtable('NC_008314.1.gff.proteome.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Chromosome_Count';
output{1,3} = 'Chromosome_Total';
output{1,4} = 'Chromosome_Percent';
output{1,5} = 'Chromid_Count';
output{1,6} = 'Chromid_Total';
output{1,7} = 'Chromid_Percent';
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
writetable(output, 'Ralstonia_eutropha_H16_chromosome_chromid_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

%% Burkholderia ambifaria AMMD chromid

% Load the data
clear;
chromosome = table2cell(readtable('NC_008390.1.gff.proteome.fasta.counted.txt', ...
    'ReadVariableNames', false));
chromid = table2cell(readtable('NC_008391.1.gff.proteome.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Chromosome_Count';
output{1,3} = 'Chromosome_Total';
output{1,4} = 'Chromosome_Percent';
output{1,5} = 'Chromid_Count';
output{1,6} = 'Chromid_Total';
output{1,7} = 'Chromid_Percent';
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
writetable(output, 'Burkholderia_ambifaria_AMMD_chromosome_chromid_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

%% Burkholderia ambifaria AMMD megaplasmid

% Load the data
clear;
chromosome = table2cell(readtable('NC_008390.1.gff.proteome.fasta.counted.txt', ...
    'ReadVariableNames', false));
megaplasmid = table2cell(readtable('NC_008392.1.gff.proteome.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Chromosome_Count';
output{1,3} = 'Chromosome_Total';
output{1,4} = 'Chromosome_Percent';
output{1,5} = 'Megaplasmid_Count';
output{1,6} = 'Megaplasmid_Total';
output{1,7} = 'Megaplasmid_Percent';
output{1,8} = 'Unadjusted_P_Value';
output{1,9} = 'Adjusted_P_Value';
for n = 1:size(chromosome, 1)
    table = table([chromosome{n,2}; megaplasmid{n,2}], [chromosome{n,3}; megaplasmid{n,3}],...
        'VariableNames', {'COG','Total'}, 'RowNames', {'Chromosome','Megaplasmid'});
    [~, pValue] = fishertest(table);
    adj_pValue = pValue * 26;
    output{n+1,1} = chromosome{n,1};
    output{n+1,2} = chromosome{n,2};
    output{n+1,3} = chromosome{n,3};
    output{n+1,4} = round(chromosome{n,4}, 3);
    output{n+1,5} = megaplasmid{n,2};
    output{n+1,6} = megaplasmid{n,3};
    output{n+1,7} = round(megaplasmid{n,4}, 3);
    output{n+1,8} = round(pValue, 3);
    output{n+1,9} = round(adj_pValue, 3);
    clearvars table
end

% Export the data
output = cell2table(output);
writetable(output, 'Burkholderia_ambifaria_AMMD_chromosome_megaplasmid_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

%% Cupriavidus taiwanensis LMG19424 chromid

% Load the data
clear;
chromosome = table2cell(readtable('NC_010528.1.gff.proteome.fasta.counted.txt', ...
    'ReadVariableNames', false));
chromid = table2cell(readtable('NC_010530.1.gff.proteome.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Chromosome_Count';
output{1,3} = 'Chromosome_Total';
output{1,4} = 'Chromosome_Percent';
output{1,5} = 'Chromid_Count';
output{1,6} = 'Chromid_Total';
output{1,7} = 'Chromid_Percent';
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
writetable(output, 'Cupriavidus_taiwanensis_LMG19424_chromosome_chromid_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

%% Paraburkholderia phymatum STM815 chromid

% Load the data
clear;
chromosome = table2cell(readtable('NC_010622.1.gff.proteome.fasta.counted.txt', ...
    'ReadVariableNames', false));
chromid = table2cell(readtable('NC_010623.1.gff.proteome.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Chromosome_Count';
output{1,3} = 'Chromosome_Total';
output{1,4} = 'Chromosome_Percent';
output{1,5} = 'Chromid_Count';
output{1,6} = 'Chromid_Total';
output{1,7} = 'Chromid_Percent';
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
writetable(output, 'Paraburkholderia_phymatum_STM815_chromosome_chromid_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

%% Paraburkholderia phymatum STM815 megaplasmid

% Load the data
clear;
chromosome = table2cell(readtable('NC_010622.1.gff.proteome.fasta.counted.txt', ...
    'ReadVariableNames', false));
megaplasmid = table2cell(readtable('NC_010625.1.gff.proteome.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Chromosome_Count';
output{1,3} = 'Chromosome_Total';
output{1,4} = 'Chromosome_Percent';
output{1,5} = 'Megaplasmid_Count';
output{1,6} = 'Megaplasmid_Total';
output{1,7} = 'Megaplasmid_Percent';
output{1,8} = 'Unadjusted_P_Value';
output{1,9} = 'Adjusted_P_Value';
for n = 1:size(chromosome, 1)
    table = table([chromosome{n,2}; megaplasmid{n,2}], [chromosome{n,3}; megaplasmid{n,3}],...
        'VariableNames', {'COG','Total'}, 'RowNames', {'Chromosome','Megaplasmid'});
    [~, pValue] = fishertest(table);
    adj_pValue = pValue * 26;
    output{n+1,1} = chromosome{n,1};
    output{n+1,2} = chromosome{n,2};
    output{n+1,3} = chromosome{n,3};
    output{n+1,4} = round(chromosome{n,4}, 3);
    output{n+1,5} = megaplasmid{n,2};
    output{n+1,6} = megaplasmid{n,3};
    output{n+1,7} = round(megaplasmid{n,4}, 3);
    output{n+1,8} = round(pValue, 3);
    output{n+1,9} = round(adj_pValue, 3);
    clearvars table
end

% Export the data
output = cell2table(output);
writetable(output, 'Paraburkholderia_phymatum_STM815_chromosome_megaplasmid_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

%% Paraburkholderia phytofirmans PsJN chromid

% Load the data
clear;
chromosome = table2cell(readtable('NC_010681.1.gff.proteome.fasta.counted.txt', ...
    'ReadVariableNames', false));
chromid = table2cell(readtable('NC_010676.1.gff.proteome.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Chromosome_Count';
output{1,3} = 'Chromosome_Total';
output{1,4} = 'Chromosome_Percent';
output{1,5} = 'Chromid_Count';
output{1,6} = 'Chromid_Total';
output{1,7} = 'Chromid_Percent';
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
writetable(output, 'Paraburkholderia_phytofirmans_PsJN_chromosome_chromid_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

%% Burkholderia pseudomallei strain BDP chromid

% Load the data
clear;
chromosome = table2cell(readtable('NZ_CP009209.1.gff.proteome.fasta.counted.txt', ...
    'ReadVariableNames', false));
chromid = table2cell(readtable('NZ_CP009210.1.gff.proteome.fasta.counted.txt', ...
    'ReadVariableNames', false));

% Calculate Fisher statistics
output = cell(size(chromosome, 1) + 1, 9);
output{1,1} = 'COG';
output{1,2} = 'Chromosome_Count';
output{1,3} = 'Chromosome_Total';
output{1,4} = 'Chromosome_Percent';
output{1,5} = 'Chromid_Count';
output{1,6} = 'Chromid_Total';
output{1,7} = 'Chromid_Percent';
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
writetable(output, 'Burkholderia_pseudomallei_BDP_chromosome_chromid_compared.txt',...
    'WriteVariableNames', false, 'Delimiter', '\t');

quit
