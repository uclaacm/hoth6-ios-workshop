# hoth6-ios-workshop

## Getting Started 

1. Begin by creating a new project in Xcode.

2. Select "Create a new Xcode project" near the bottom left of the window.


![alt text](https://github.com/uclaacm/hoth6-ios-workshop/blob/feature/shirly/images/Start.png)




3. Ensure that the "iOS" tab at the top of the page is selected.

4. Double-click on "Single View App".

![alt text](https://github.com/uclaacm/hoth6-ios-workshop/blob/feature/shirly/images/ChooseApp.png)


5. Name your project "HothCalculator".

6. Pick whatever Team, Organization Name and Organization Identifier that you want.

7. Ensure that the Language field is set to "Swift".

8. Ensure that "Use Core Data" is unchecked.

9. Click "Next".

10. On the following window, select where you'd like your project's folder to be create (default location is ~/Desktop) and click "Create".

## Interface Builder 

11. In the Project Navigator on the left, you should see all of the files associated with our project. The only group (folder) we're interested in for the purposes of this tutorial is the HothCalculator group. The HothCalculatorTests, HothCalculatorUITests, and Products groups aren't important for now.

12. Inside the HothCalculator group you should see a file named Main.storyboard. Click it and you'll be taken to the Interface Builder.

![alt text](https://github.com/uclaacm/hoth6-ios-workshop/blob/feature/shirly/images/ChooseStoryboard.png)

## Setting up the UI 


13. Locate the button that has a circle with a square in it on the top right of the screen and click it.

14. The Object Menu will appear and contain UI elements we can drag into our storyboard. Here, we already searched for a label. 


![alt text](https://github.com/uclaacm/hoth6-ios-workshop/blob/feature/shirly/images/AddLabelFromLibrary.png)



## Building the UI 

From the Object Menu, drag 2 Labels, 2 TextFields, and 5 Buttons and place them onto the ViewController like the following picture. It doesn't have to be exact but relatively close. 

![alt text](https://github.com/uclaacm/hoth6-ios-workshop/blob/feature/shirly/images/AddingEverything2.png)


### Setting up Answer Label 

Click on the top label in the ViewController to select it. On the right side window, there is a upside down triangle thing called the Attributes Inspector. Click on it and make the following changes: 

1. Change the "Label" text to "0". 

2. Change Alignment to Center. 

3. Change Font Size to 45.0.

![alt text](https://github.com/uclaacm/hoth6-ios-workshop/blob/feature/shirly/images/ChangeSettingsOfAnswer.png)

With the top label still selected, on the bottom right of the screen is the Align and Add New Constraints Button. Align is the one with a shorter rectangle on top of another. Add New Constraints is to the right of it. 

Click on Align. 

Click on Horizontally in Container and Vertically in Container. Then, click on Add 2 Constraints. 

![alt text](https://github.com/uclaacm/hoth6-ios-workshop/blob/feature/shirly/images/BothAlignments.png)


Click on Add New Constraints (to the right). 

Change Width to 200 and Height to 80. Then, click on Add 2 Constraints.


![alt text](https://github.com/uclaacm/hoth6-ios-workshop/blob/feature/shirly/images/AnswerSizeConstraints.png)



The Answer label should now be in the middle of the screen. However, we want it back up where we put it initially. With it still selected, on the right side window, click on the ruler icon. 



Towards the bottom, there is a constraint item for our Vertically in Container constraint. Click Edit and change the multiplier field to 0.25. 

![alt text](https://github.com/uclaacm/hoth6-ios-workshop/blob/feature/shirly/images/AnswerVerticalAlignment.png)


### Setting up Operator Label 


Click on the Label under the Answer label to select it. On the right side window, select the Attributes Inspector and make the following changes: 


1. Change the "Label" text to "?". 

2. Change Alignment to Center. 

3. Change Font Size to 35.0

![alt text](https://github.com/uclaacm/hoth6-ios-workshop/blob/feature/shirly/images/ChangeSettingsOfOperator.png)

With the label still selected, go to Align and click on Horizontally in Container. Add the constraint.

![alt text](https://github.com/uclaacm/hoth6-ios-workshop/blob/feature/shirly/images/HorizontalAlignment.png)

Now go to Add New Constraints (to the right), and add the following constraints: 

Width and Height to 50.

Top spacing to 40. Type in the topmost textfield, this will trigger the highlighted red I. This sets the top of the Operator label to always be 40 away from the bottom of the Answer Label. 

Add the 3 constraints. 

![alt text](https://github.com/uclaacm/hoth6-ios-workshop/blob/feature/shirly/images/OperatorConstraints.png)

### Setting up the number Textfields 


