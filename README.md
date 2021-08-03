# MakeMyDecisionApp
A unique decision-making tool to quantitatively rank qualitative inputs

# App Summary 
In short, my app is a decision making app. The purpose of my app is to provide a streamlined platform for the user to enter an important decision they are currently in the process of making. The app helps convert the users qualitative feelings about the decision into a quantitative ranking (in the background without them having to think about the quantitative side) in order to help them make more of a logic-based decision.

# How the process works, with key data entities indicated in **BOLD**


1. **Users**
Each user can create his/her own profile on the app by entering a username and email.

2. **Decisions** 
User enters a **Decision** | (for example: Which house should I buy?)
The user can use the app to initiate and save as many decisions as he/she wants.


3. **Critera**
For each **Decision**, the user is then able to enter **Criteria** that are important. The user can enter and rank as many critera as he/she wants for each decision. | (Example criteria of importance for a house purchase might be: Walkability, School district, garden space, affordability, neigborhood)

The user can then rank each criteria entered by degree of importance from one of the following 5 choices 
'Not Really Important at All.'
'Not That Important...'
'Neutral'
'Important!'
'Very Important!' 

(On the front end, the above qualitative rankings will be presented to the user. However, in the back end DB, they will be translated into a quantitative ranking on a scale from 1-5 with 'Not Important at All' being a 1, and 'Very Important' being a 5.)

*Front-End value (qualitative) *  | *Back end DB value (numerical/quantitative)* 
'Not Really Important at All.'    |     1
'Not That Important...'           |     2
'Neutral'                         |     3
'Important!'                      |     4
'Very Important!'                 |     5

The app will then sum the quantitative values of all criteria entered, and then calculate a quantitative percentage weight for each Criteria by diviing its individual value by the sum of all values.

** Need example table here **


4. **Options**  
Next, for each **Decision** the user is then able to enter the particular-real world  **Options** for that particular decision. | (Example options of house purchase may be however the user chooses to describe them meaningfully for him/her self: '1000 Wherever Lane', 'The red brick house', 'The house with the cool loft', '9999 Whatever Street')

Finally, the user is able to give a unique rating to each option based on each criterion he/she entered in step 3 above.

Similarly, The front-end will involve five buttons from frowny face to smilely face the user can click on to indicate his/her unique rating for each option based on each criterion, but which will translate to a quantitative -2 to +2 scale in the database on the back end, as such:


*Front-End value (qualitative facial expression buttons) *  | *Back end DB value (numerical/quantitative)* 
'Very Frowny Face'                                          |     1
'Slightly Frowny Face'                                      |     2
'Neutral Face'                                              |     3
'Smiley Face'                                               |     4
'Very Smiley/Ecstatic Face'                                 |     5


The app will then sum the quantitative values of all criteria entered, and then calculate a quantitative percentage weight for each Criteria by diviing its individual value by the sum of all values.

# Results:
Based on the above process for a given decision, the app will then present the user with a scored list of the options they entered for the decision, ranked from best choice to worst choice based on the criteria he/she entered. (e.g. top top ranked house to buy down to lowest ranked house) Each ranking will be a weighted average.