//this is a do-file that cleans the 2019 data
summarize

//Age
    // Drops ages equal to 999
    drop if Age == 999

    // Drops ages equal to 0
    // Because age not known for this value and would skew avg.
    drop if Age == 0

// Sex
    // Drops if sex data point is already 0 (Wild Code)
    // Because gender unknown for this value and would skew towards female if left
    drop if Sex == 0

    // Transforms sex data points to 0 from 2 (female)
    // Because it makes variable a dummy
    replace Sex = 0 if Sex == 2
    
// Homeownership
    // Generates new dummy variable for Homeownership==1 (home owners)
    generate OwnsHome = 0 
    replace OwnsHome = 1 if Homeownership == 1 

    // Generates new dummy variable for Homeownership==5 (renters)
    generate Rents = 0 
    replace Rents = 1 if Homeownership == 5

// FathersEducation
    // Create FatherHighschool / No-FatherHighschool Dummy Variable
    // Includes highschool and beyond education havers (same idea applies for all categories)
    generate FatherHighschool = 1
    replace FatherHighschool = 0 if FatherEducation == 1
    replace FatherHighschool = 0 if FatherEducation == 2
    replace FatherHighschool = 0 if FatherEducation == 3

    // Create SomeFatherCollege / No-SomeFatherCollege Dummy Variable
    generate SomeFatherCollege = 0
    replace SomeFatherCollege = 1 if FatherEducation == 6
    replace SomeFatherCollege = 1 if FatherEducation == 7
    replace SomeFatherCollege = 1 if FatherEducation == 8

    // Create FatherBachelors / No-FatherBachelors Dummy Variable
    generate FatherBachelors = 0
    replace FatherBachelors = 1 if FatherEducation == 7
    replace FatherBachelors = 1 if FatherEducation == 8

    // Create FatherAdvanced / No-FatherAdvanced Dummy Variable
    generate FatherAdvanced = 0
    replace FatherAdvanced = 1 if FatherEducation == 8

// MothersEducation
    // Drops the data values equal to 99 as they have no  
    drop if MotherEducation == 99
    
    // MotherHighschool / No-MotherHighschool
    // Includes highschool and beyond education havers (same idea applies for all categories)
    generate MotherHighschool = 1
    replace MotherHighschool = 0 if MotherEducation == 1
    replace MotherHighschool = 0 if MotherEducation == 2
    replace MotherHighschool = 0 if MotherEducation == 3

    // Create SomeMotherCollege / No-SomeMotherCollege Dummy Variable
    generate SomeMotherCollege = 0
    replace SomeMotherCollege = 1 if MotherEducation == 6
    replace SomeMotherCollege = 1 if MotherEducation == 7
    replace SomeMotherCollege = 1 if MotherEducation == 8

    // Create MotherBachelors / No-MotherBachelors Dummy Variable
    generate MotherBachelors = 0
    replace MotherBachelors = 1 if MotherEducation == 7
    replace MotherBachelors = 1 if MotherEducation == 8

    // Creat MotherAdvanced / No-MotherAdvanced Dummy Variable
    generate MotherAdvanced = 0
    replace MotherAdvanced = 1 if MotherEducation == 8

// Race


// Education


// Income


// Marriage



//generates new dummy variable for Homeownership==8 (neither owns nor rents)
generate UnknownHome = 0 
replace UnknownHome = 1 if Homeownership==8
