


normalized_correlation1 = normxcorr2(template1,spectrogram1); % getting correlation matrix
[row1, column1] = find(normalized_correlation1 == max(max(normalized_correlation1))); % getting index of maximum correlation



normalized_correlation2 = normxcorr2(template2,spectrogram2); % getting correlation matrix
[row2, column2] = find(normalized_correlation2 == max(max(normalized_correlation2))); % getting index of maximum correlation





normalized_correlation3 = normxcorr2(template3,spectrogram3); % getting correlation matrix
[row3, column3] = find(normalized_correlation3 == max(max(normalized_correlation3))); % getting index of maximum correlation

normalized_correlation4 = normxcorr2(template4,spectrogram4); % getting correlation matrix
[row4, column4] = find(normalized_correlation4 == max(max(normalized_correlation4))); % getting index of maximum correlation


correlation_factor_1 = normalized_correlation1(row1,column1);
correlation_factor_2 = normalized_correlation2(row2,column2);
correlation_factor_3 = normalized_correlation3(row3,column3);
correlation_factor_4 = normalized_correlation4(row4,column4);
correlation_factors=[ correlation_factor_1; correlation_factor_2; correlation_factor_3; correlation_factor_4 ];
[row, column] = find(correlation_factors == max(correlation_factors));


disp(spectrogram_filename(row))
