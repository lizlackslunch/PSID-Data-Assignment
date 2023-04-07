// This is a do-file that cleans my 1996 PSID data
//Age
    // Drops ages equal to 999
    drop if Age == 999

    // Drops ages equal to 0
    // Because age not known for this value and would skew avg.
    drop if Age == 0

// Sex
    // Drops if sex unknown
    drop if Sex == 0

    // Generates dummy variable for Males
    generate Male = 0
    replace Male = 1 if Sex == 1

    // Generates dummy variable for Females
    generate Female = 0
    replace Female = 1 if Sex == 2
    
// Homeownership
    // Generates dummy variable if homeowner
    generate OwnsHome = 0 
    replace OwnsHome = 1 if Homeownership == 1 

    // Generates dummy variable if renter
    generate Rents = 0 
    replace Rents = 1 if Homeownership == 5

    // Generates dummy variable if homeownership is unknown
    generate UnknownHome = 0 
    replace UnknownHome = 1 if Homeownership == 8

// FathersEducation
    // Generates dummy variable if father has some primary education
    generate FatherPrimaryEd = 0
    replace FatherPrimaryEd = 1 if FatherEducation <= 3

    // Generates dummy variable if father has highschool education
    // Includes highschool and beyond education havers (same idea applies for all categories)
    generate FatherHighschool = 0
    replace FatherHighschool = 1 if FatherEducation == 4

    // Generates dummy variable if father has some college education
    generate FatherSomeCollege = 0
    replace FatherSomeCollege = 1 if FatherEducation == 6

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
    generate MotherSomeCollege = 0
    replace MotherSomeCollege = 1 if MotherEducation == 6

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
    replace RaceOther = 1 if Race == 6 | Race == 7

    generate RaceUnknown = 0
    replace RaceUnknown = 1 if Race >= 7

// Education
    // Drops the few who refused to answer if they have a college degree or not
    drop if Education == 9

    // Generates dummy variable for HoH with college degree
    generate CollegeDegree = 0
    replace CollegeDegree = 1 if Education == 1
    
    // Generates dummy variable for HoH with no college degree
    generate NoCollegeDegree = 0
    replace NoCollegeDegree = 1 if Education == 5    

    // Generates dummy variable for HoH with some college degree
    generate SomeCollege = 0
    replace SomeCollege = 1 if Education == 0

// MaritalStatus
    // Generates dummy variable for married HoH
    generate Married = 0
    replace Married = 1 if MaritalStatus == 1

    // Generates dummy variable for single (never married) HoH
    generate Single = 0
    replace Single = 1 if MaritalStatus == 2

    // Generates dummy variable for widowed HoH
    generate Widowed = 0
    replace Widowed = 1 if MaritalStatus == 3

    // Generates dummy variable for divorced HoH
    generate Divorced = 0
    replace Divorced = 1 if MaritalStatus == 4

    // Generates dummy variable for separated HoH
    generate Separated = 0
    replace Separated = 1 if MaritalStatus == 5
