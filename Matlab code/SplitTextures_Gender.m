function [ male_textures, female_textures, male_inds, female_inds ] = SplitTextures_Gender( textures, subjectlist, genders, subj_numbers )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

    male_subjects = subjectlist(strcmpi(genders,'male'),1);
    female_subjects = subjectlist(strcmpi(genders,'female'),1);
    
    % Create logical array of the textures in each set
    male_inds = false(size(subj_numbers));
    female_inds = false(size(subj_numbers));
    
    for i=1:size(male_subjects)
        male_inds = male_inds | subj_numbers==male_subjects(i);
    end
    
    for i=1:size(female_subjects)
        female_inds = female_inds | subj_numbers==female_subjects(i);
    end
    
    male_textures = textures(male_inds,:);
    female_textures = textures(female_inds,:);

end

