%%
% Load the data
data = table2cell(readtable('../../pangenome95/nucleotidePangenomes/GenePresence/Burkholderia_allGenus_chromosome.csv'));

% Find accessory genes
cutoff = ((size(data, 2) - 14) * 0.75);
pos = {};
for n = 1:size(data, 1)
    data{n,4} = str2num(data{n,4});
    if data{n,4} < cutoff
        pos = vertcat(pos, n);
    end
end
pos = cell2mat(pos);
tempList = data(pos,:);

% Get the gene names
accessoryGenes = unique(tempList(:,15:end));

% Export gene list
accessoryGenes = cell2table(accessoryGenes);
writetable(accessoryGenes, '../nucleotidePangenomes/AccessoryList/Burkholderia_allGenus_chromosome.txt', 'WriteVariableNames', false);

%%
% Load the data
data = table2cell(readtable('../../pangenome95/nucleotidePangenomes/GenePresence/Burkholderia_allGenus_chromid.csv'));

% Find accessory genes
cutoff = ((size(data, 2) - 14) * 0.75);
pos = {};
for n = 1:size(data, 1)
    data{n,4} = str2num(data{n,4});
    if data{n,4} < cutoff
        pos = vertcat(pos, n);
    end
end
pos = cell2mat(pos);
tempList = data(pos,:);

% Get the gene names
accessoryGenes = unique(tempList(:,15:end));

% Export gene list
accessoryGenes = cell2table(accessoryGenes);
writetable(accessoryGenes, '../nucleotidePangenomes/AccessoryList/Burkholderia_allGenus_chromid.txt', 'WriteVariableNames', false);

%%
% Load the data
data = table2cell(readtable('../../pangenome95/nucleotidePangenomes/GenePresence/Burkholderia_BCC_chromosome.csv'));

% Find accessory genes
cutoff = ((size(data, 2) - 14) * 0.75);
pos = {};
for n = 1:size(data, 1)
    data{n,4} = str2num(data{n,4});
    if data{n,4} < cutoff
        pos = vertcat(pos, n);
    end
end
pos = cell2mat(pos);
tempList = data(pos,:);

% Get the gene names
accessoryGenes = unique(tempList(:,15:end));

% Export gene list
accessoryGenes = cell2table(accessoryGenes);
writetable(accessoryGenes, '../nucleotidePangenomes/AccessoryList/Burkholderia_BCC_chromosome.txt', 'WriteVariableNames', false);

%%
% Load the data
data = table2cell(readtable('../../pangenome95/nucleotidePangenomes/GenePresence/Burkholderia_BCC_chromid.csv'));

% Find accessory genes
cutoff = ((size(data, 2) - 14) * 0.75);
pos = {};
for n = 1:size(data, 1)
    data{n,4} = str2num(data{n,4});
    if data{n,4} < cutoff
        pos = vertcat(pos, n);
    end
end
pos = cell2mat(pos);
tempList = data(pos,:);

% Get the gene names
accessoryGenes = unique(tempList(:,15:end));

% Export gene list
accessoryGenes = cell2table(accessoryGenes);
writetable(accessoryGenes, '../nucleotidePangenomes/AccessoryList/Burkholderia_BCC_chromid.txt', 'WriteVariableNames', false);

%%
% Load the data
data = table2cell(readtable('../../pangenome95/nucleotidePangenomes/GenePresence/Burkholderia_BCC_megaplasmid.csv'));

% Find accessory genes
cutoff = ((size(data, 2) - 14) * 0.75);
pos = {};
for n = 1:size(data, 1)
    data{n,4} = str2num(data{n,4});
    if data{n,4} < cutoff
        pos = vertcat(pos, n);
    end
end
pos = cell2mat(pos);
tempList = data(pos,:);

% Get the gene names
accessoryGenes = unique(tempList(:,15:end));

% Export gene list
accessoryGenes = cell2table(accessoryGenes);
writetable(accessoryGenes, '../nucleotidePangenomes/AccessoryList/Burkholderia_BCC_megaplasmid.txt', 'WriteVariableNames', false);

%%
% Load the data
data = table2cell(readtable('../../pangenome95/nucleotidePangenomes/GenePresence/Burkholderia_nonBCC_chromosome.csv'));

% Find accessory genes
cutoff = ((size(data, 2) - 14) * 0.75);
pos = {};
for n = 1:size(data, 1)
    data{n,4} = str2num(data{n,4});
    if data{n,4} < cutoff
        pos = vertcat(pos, n);
    end
end
pos = cell2mat(pos);
tempList = data(pos,:);

% Get the gene names
accessoryGenes = unique(tempList(:,15:end));

% Export gene list
accessoryGenes = cell2table(accessoryGenes);
writetable(accessoryGenes, '../nucleotidePangenomes/AccessoryList/Burkholderia_nonBCC_chromosome.txt', 'WriteVariableNames', false);

%%
% Load the data
data = table2cell(readtable('../../pangenome95/nucleotidePangenomes/GenePresence/Burkholderia_nonBCC_chromid.csv'));

% Find accessory genes
cutoff = ((size(data, 2) - 14) * 0.75);
pos = {};
for n = 1:size(data, 1)
    data{n,4} = str2num(data{n,4});
    if data{n,4} < cutoff
        pos = vertcat(pos, n);
    end
end
pos = cell2mat(pos);
tempList = data(pos,:);

% Get the gene names
accessoryGenes = unique(tempList(:,15:end));

% Export gene list
accessoryGenes = cell2table(accessoryGenes);
writetable(accessoryGenes, '../nucleotidePangenomes/AccessoryList/Burkholderia_nonBCC_chromid.txt', 'WriteVariableNames', false);

%%
% Load the data
data = table2cell(readtable('../../pangenome95/nucleotidePangenomes/GenePresence/Paraburkholderia_allGenus_chromosome.csv'));

% Find accessory genes
cutoff = ((size(data, 2) - 14) * 0.75);
pos = {};
for n = 1:size(data, 1)
    data{n,4} = str2num(data{n,4});
    if data{n,4} < cutoff
        pos = vertcat(pos, n);
    end
end
pos = cell2mat(pos);
tempList = data(pos,:);

% Get the gene names
accessoryGenes = unique(tempList(:,15:end));

% Export gene list
accessoryGenes = cell2table(accessoryGenes);
writetable(accessoryGenes, '../nucleotidePangenomes/AccessoryList/Paraburkholderia_allGenus_chromosome.txt', 'WriteVariableNames', false);

%%
% Load the data
data = table2cell(readtable('../../pangenome95/nucleotidePangenomes/GenePresence/Paraburkholderia_allGenus_chromid.csv'));

% Find accessory genes
cutoff = ((size(data, 2) - 14) * 0.75);
pos = {};
for n = 1:size(data, 1)
    data{n,4} = str2num(data{n,4});
    if data{n,4} < cutoff
        pos = vertcat(pos, n);
    end
end
pos = cell2mat(pos);
tempList = data(pos,:);

% Get the gene names
accessoryGenes = unique(tempList(:,15:end));

% Export gene list
accessoryGenes = cell2table(accessoryGenes);
writetable(accessoryGenes, '../nucleotidePangenomes/AccessoryList/Paraburkholderia_allGenus_chromid.txt', 'WriteVariableNames', false);

%%
% Load the data
data = table2cell(readtable('../../pangenome95/nucleotidePangenomes/GenePresence/Paraburkholderia_woMega_chromosome.csv'));

% Find accessory genes
cutoff = ((size(data, 2) - 14) * 0.75);
pos = {};
for n = 1:size(data, 1)
    data{n,4} = str2num(data{n,4});
    if data{n,4} < cutoff
        pos = vertcat(pos, n);
    end
end
pos = cell2mat(pos);
tempList = data(pos,:);

% Get the gene names
accessoryGenes = unique(tempList(:,15:end));

% Export gene list
accessoryGenes = cell2table(accessoryGenes);
writetable(accessoryGenes, '../nucleotidePangenomes/AccessoryList/Paraburkholderia_woMega_chromosome.txt', 'WriteVariableNames', false);

%%
% Load the data
data = table2cell(readtable('../../pangenome95/nucleotidePangenomes/GenePresence/Paraburkholderia_woMega_chromid.csv'));

% Find accessory genes
cutoff = ((size(data, 2) - 14) * 0.75);
pos = {};
for n = 1:size(data, 1)
    data{n,4} = str2num(data{n,4});
    if data{n,4} < cutoff
        pos = vertcat(pos, n);
    end
end
pos = cell2mat(pos);
tempList = data(pos,:);

% Get the gene names
accessoryGenes = unique(tempList(:,15:end));

% Export gene list
accessoryGenes = cell2table(accessoryGenes);
writetable(accessoryGenes, '../nucleotidePangenomes/AccessoryList/Paraburkholderia_woMega_chromid.txt', 'WriteVariableNames', false);

%%
% Load the data
data = table2cell(readtable('../../pangenome95/nucleotidePangenomes/GenePresence/Paraburkholderia_wMega_chromosome.csv'));

% Find accessory genes
cutoff = ((size(data, 2) - 14) * 0.75);
pos = {};
for n = 1:size(data, 1)
    data{n,4} = str2num(data{n,4});
    if data{n,4} < cutoff
        pos = vertcat(pos, n);
    end
end
pos = cell2mat(pos);
tempList = data(pos,:);

% Get the gene names
accessoryGenes = unique(tempList(:,15:end));

% Export gene list
accessoryGenes = cell2table(accessoryGenes);
writetable(accessoryGenes, '../nucleotidePangenomes/AccessoryList/Paraburkholderia_wMega_chromosome.txt', 'WriteVariableNames', false);

%%
% Load the data
data = table2cell(readtable('../../pangenome95/nucleotidePangenomes/GenePresence/Paraburkholderia_wMega_chromid.csv'));

% Find accessory genes
cutoff = ((size(data, 2) - 14) * 0.75);
pos = {};
for n = 1:size(data, 1)
    data{n,4} = str2num(data{n,4});
    if data{n,4} < cutoff
        pos = vertcat(pos, n);
    end
end
pos = cell2mat(pos);
tempList = data(pos,:);

% Get the gene names
accessoryGenes = unique(tempList(:,15:end));

% Export gene list
accessoryGenes = cell2table(accessoryGenes);
writetable(accessoryGenes, '../nucleotidePangenomes/AccessoryList/Paraburkholderia_wMega_chromid.txt', 'WriteVariableNames', false);

%%
% Load the data
data = table2cell(readtable('../../pangenome95/nucleotidePangenomes/GenePresence/Paraburkholderia_wMega_megaplasmid.csv'));

% Find accessory genes
cutoff = ((size(data, 2) - 14) * 0.75);
pos = {};
for n = 1:size(data, 1)
    data{n,4} = str2num(data{n,4});
    if data{n,4} < cutoff
        pos = vertcat(pos, n);
    end
end
pos = cell2mat(pos);
tempList = data(pos,:);

% Get the gene names
accessoryGenes = unique(tempList(:,15:end));

% Export gene list
accessoryGenes = cell2table(accessoryGenes);
writetable(accessoryGenes, '../nucleotidePangenomes/AccessoryList/Paraburkholderia_wMega_megaplasmid.txt', 'WriteVariableNames', false);

%%
% Load the data
data = table2cell(readtable('../../pangenome95/nucleotidePangenomes/GenePresence/Cupriavidus_allGenus_chromosome.csv'));

% Find accessory genes
cutoff = ((size(data, 2) - 14) * 0.75);
pos = {};
for n = 1:size(data, 1)
    data{n,4} = str2num(data{n,4});
    if data{n,4} < cutoff
        pos = vertcat(pos, n);
    end
end
pos = cell2mat(pos);
tempList = data(pos,:);

% Get the gene names
accessoryGenes = unique(tempList(:,15:end));

% Export gene list
accessoryGenes = cell2table(accessoryGenes);
writetable(accessoryGenes, '../nucleotidePangenomes/AccessoryList/Cupriavidus_allGenus_chromosome.txt', 'WriteVariableNames', false);

%%
% Load the data
data = table2cell(readtable('../../pangenome95/nucleotidePangenomes/GenePresence/Cupriavidus_allGenus_chromid.csv'));

% Find accessory genes
cutoff = ((size(data, 2) - 14) * 0.75);
pos = {};
for n = 1:size(data, 1)
    data{n,4} = str2num(data{n,4});
    if data{n,4} < cutoff
        pos = vertcat(pos, n);
    end
end
pos = cell2mat(pos);
tempList = data(pos,:);

% Get the gene names
accessoryGenes = unique(tempList(:,15:end));

% Export gene list
accessoryGenes = cell2table(accessoryGenes);
writetable(accessoryGenes, '../nucleotidePangenomes/AccessoryList/Cupriavidus_allGenus_chromid.txt', 'WriteVariableNames', false);

%%
% Load the data
data = table2cell(readtable('../../pangenome95/nucleotidePangenomes/GenePresence/Ralstonia_allGenus_chromosome.csv'));

% Find accessory genes
cutoff = ((size(data, 2) - 14) * 0.75);
pos = {};
for n = 1:size(data, 1)
    data{n,4} = str2num(data{n,4});
    if data{n,4} < cutoff
        pos = vertcat(pos, n);
    end
end
pos = cell2mat(pos);
tempList = data(pos,:);

% Get the gene names
accessoryGenes = unique(tempList(:,15:end));

% Export gene list
accessoryGenes = cell2table(accessoryGenes);
writetable(accessoryGenes, '../nucleotidePangenomes/AccessoryList/Ralstonia_allGenus_chromosome.txt', 'WriteVariableNames', false);

%%
% Load the data
data = table2cell(readtable('../../pangenome95/nucleotidePangenomes/GenePresence/Ralstonia_allGenus_chromid.csv'));

% Find accessory genes
cutoff = ((size(data, 2) - 14) * 0.75);
pos = {};
for n = 1:size(data, 1)
    data{n,4} = str2num(data{n,4});
    if data{n,4} < cutoff
        pos = vertcat(pos, n);
    end
end
pos = cell2mat(pos);
tempList = data(pos,:);

% Get the gene names
accessoryGenes = unique(tempList(:,15:end));

% Export gene list
accessoryGenes = cell2table(accessoryGenes);
writetable(accessoryGenes, '../nucleotidePangenomes/AccessoryList/Ralstonia_allGenus_chromid.txt', 'WriteVariableNames', false);

%%
% Load the data
data = table2cell(readtable('../../pangenome95/nucleotidePangenomes/GenePresence/Pandoraea_allGenus_chromosome.csv'));

% Find accessory genes
cutoff = ((size(data, 2) - 14) * 0.75);
pos = {};
for n = 1:size(data, 1)
    data{n,4} = str2num(data{n,4});
    if data{n,4} < cutoff
        pos = vertcat(pos, n);
    end
end
pos = cell2mat(pos);
tempList = data(pos,:);

% Get the gene names
accessoryGenes = unique(tempList(:,15:end));

% Export gene list
accessoryGenes = cell2table(accessoryGenes);
writetable(accessoryGenes, '../nucleotidePangenomes/AccessoryList/Pandoraea_allGenus_chromosome.txt', 'WriteVariableNames', false);

%%
% Load the data
data = table2cell(readtable('../../pangenome95/nucleotidePangenomes/GenePresence/Polynucleobacter_allGenus_chromosome.csv'));

% Find accessory genes
cutoff = ((size(data, 2) - 14) * 0.75);
pos = {};
for n = 1:size(data, 1)
    data{n,4} = str2num(data{n,4});
    if data{n,4} < cutoff
        pos = vertcat(pos, n);
    end
end
pos = cell2mat(pos);
tempList = data(pos,:);

% Get the gene names
accessoryGenes = unique(tempList(:,15:end));

% Export gene list
accessoryGenes = cell2table(accessoryGenes);
writetable(accessoryGenes, '../nucleotidePangenomes/AccessoryList/Polynucleobacter_allGenus_chromosome.txt', 'WriteVariableNames', false);

exit
