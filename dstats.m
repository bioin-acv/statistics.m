function dstats(data)
    % This function outputs the descriptive statistics for a given dataset in the Workspace.
    % It returns a structure with fields for mean, range, standard deviation, and median.
    % 
    % INPUT:
    % data - a vector or matrix of numerical data from the Workspace
    %
    % OUTPUT:
    % descriptive_statistics - a structure containing the mean, range, standard deviation,
    % and median of the dataset.

    % Check if data is not empty
    if isempty(data)
        error('Data input is empty.');
    end
    
    % Pre-allocate structure
    descriptive_statistics = struct('Mean', [], 'Range', [], 'StandardDeviation', [], 'Median', []);
    
    % Calculate mean
    descriptive_statistics.Mean = mean(data);
    
    % Calculate range
    descriptive_statistics.Range = range(data);
    
    % Calculate standard deviation
    descriptive_statistics.StandardDeviation = std(data);
    
    % Calculate median
    descriptive_statistics.Median = median(data);
    
    % Display the results
    disp('Descriptive Statistics:');
    disp(['Mean: ', num2str(descriptive_statistics.Mean)])
    disp(['Range: ', num2str(descriptive_statistics.Range)])
    disp(['Standard Deviation: ', num2str(descriptive_statistics.StandardDeviation)])
    disp(['Median: ', num2str(descriptive_statistics.Median)])
end