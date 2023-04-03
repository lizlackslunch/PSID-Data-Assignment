// This is a do-file that cleans my 1996 PSID data

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
    // Generates dummy variable if homeowner
    generate OwnsHome = 0 
    replace OwnsHome = 1 if Homeownership == 1 

    // Generates dummy variable if renter
    generate Rents = 0 
    replace Rents = 1 if Homeownership == 5

    // Generates dummy variable if homeownership is unknown

// FathersEducation
    // Generates dummy variable if father has some primary education
    generate FatherPrimaryEd = 0
    replace FatherPrimaryEd = 1 if FatherEducation <= 3

    // Generates dummy variable if father has highschool education
    // Includes highschool and beyond education havers (same idea applies for all categories)
    generate FatherHighschool = 0
    replace FatherHighschool = 1 if FatherEducation == 4

    // Generates dummy variable if father has some college education
    generate SomeFatherCollege = 0
    replace SomeFatherCollege = 1 if FatherEducation == 6

    // Generates dummy variable if father has a bachelors degree
    generate FatherBachelors = 0
    replace FatherBachelors = 1 if FatherEducation == 7

    // Generates dummy variable if father has an advanced degree
    generate FatherAdvanced = 0
    replace FatherAdvanced = 1 if FatherEducation == 8

// MothersEducation
    // Generates dummy variable if mother has some primary education
    generate MotherPrimaryEd = 0
    replace MotherPrimaryEd = 1 if MotherEducation <= 3

    // Generates dummy variable if mother has highschool education
    // Includes highschool and beyond education havers (same idea applies for all categories)
    generate MotherHighschool = 0
    replace MotherHighschool = 1 if MotherEducation == 4

    // Generates dummy variable if mother has some college education
    generate SomeMotherCollege = 0
    replace SomeMotherCollege = 1 if MotherEducation == 6

    // Generates dummy variable if mother has a bachelors degree
    generate MotherBachelors = 0
    replace MotherBachelors = 1 if MotherEducation == 7

    // Generates dummy variable if mother has an advanced degree
    generate MotherAdvanced = 0
    replace MotherAdvanced = 1 if MotherEducation == 8

// Race
    // Generates dummy variables for the different racial categories created in study
    generate White = 0
    replace White = 1 if Race == 1

    generate Black = 0
    replace Black = 1 if Race == 2

    // Generates dummy variable for American Indians, Aleuts, & Eskimos
    generate Native = 0
    replace Native = 1 if Race  == 3

    // Generates dummy variable for Asians and Pacific Islanders
    generate Asian = 0
    replace Asian = 1 if Race == 4

    // Generates dummy variable if Latino origin mentioned 
    generate Latino = 0
    replace Latino = 1 if Race == 5

    generate RaceOther = 0
    replace RaceOther if Race == 6 | Race == 7

    generate RaceUnknown = 0
    replace RaceUnknown = 1 if Race >= 7

// Education
    // Drops the few who refused to answer if they have a college degree or not
    drop if Education == 9

    // Generates dummy variable for 
    generate CollegeDegree

    
    // Generates dummy variable for 
    generate NoCollegeDegree
    

    // Generates dummy variable for 
    generate SomeCollege


// Income


// Marriage



//generates new dummy variable for Homeownership==8 (neither owns nor rents)
generate UnknownHome = 0 
replace UnknownHome = 1 if Homeownership==8
