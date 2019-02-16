# hoth6-ios-workshop


The following contains all of the UI steps for Hack on The Hill 6's Intro to iOS workshop where we make a simple calculator app! 


## Getting Started 

1. Begin by creating a new project in Xcode.

2. Select "Create a new Xcode project" near the bottom left of the window.


![alt text](https://github.com/uclaacm/hoth6-ios-workshop/blob/master/images/Start.png)




3. Ensure that the "iOS" tab at the top of the page is selected.

4. Double-click on "Single View App".

![alt text](https://github.com/uclaacm/hoth6-ios-workshop/blob/master/images/ChooseApp.png)


5. Name your project "HothCalculator".

6. Pick whatever Team, Organization Name and Organization Identifier that you want.

7. Ensure that the Language field is set to "Swift".

8. Ensure that "Use Core Data" is unchecked.

9. Click "Next".

10. On the following window, select where you'd like your project's folder to be create (default location is ~/Desktop) and click "Create".

## Interface Builder 

11. In the Project Navigator on the left, you should see all of the files associated with our project. The only group (folder) we're interested in for the purposes of this tutorial is the HothCalculator group. The HothCalculatorTests, HothCalculatorUITests, and Products groups aren't important for now.

12. Inside the HothCalculator group you should see a file named Main.storyboard. Click it and you'll be taken to the Interface Builder.

![alt text](https://github.com/uclaacm/hoth6-ios-workshop/blob/master/images/ChooseStoryboard.png)

## Setting up the UI 


13. Locate the button that has a circle with a square in it on the top right of the screen and click it.

14. The Object Menu will appear and contain UI elements we can drag into our storyboard. Here, we already searched for a label. 


![alt text](https://github.com/uclaacm/hoth6-ios-workshop/blob/master/images/AddLabelFromLibrary.png)



## Building the UI 

From the Object Menu, drag 2 Labels, 2 TextFields, and 5 Buttons and place them onto the ViewController like the following picture. It doesn't have to be exact but relatively close. 

![alt text](https://github.com/uclaacm/hoth6-ios-workshop/blob/master/images/AddingEverything2.png)


### Setting up Answer Label 

Click on the top label in the ViewController to select it. On the right side window, there is a upside down triangle thing called the Attributes Inspector. Click on it and make the following changes: 

1. Change the "Label" text to "0". 

2. Change Alignment to Center. 

3. Change Font Size to 45.0.

![alt text](https://github.com/uclaacm/hoth6-ios-workshop/blob/master/images/ChangeSettingsOfAnswer.png)

With the top label still selected, on the bottom right of the screen is the Align and Add New Constraints Button. Align is the one with a shorter rectangle on top of another. Add New Constraints is to the right of it. 

Click on Align. 

Click on Horizontally in Container and Vertically in Container. Then, click on Add 2 Constraints. 

<img src="https://github.com/uclaacm/hoth6-ios-workshop/blob/master/images/BothAlignments.png" height="300" width= "250">

The Answer label should now be in the middle of the screen. However, we want it back up where we put it initially. With it still selected, on the right side window, click on the ruler icon. 

<img src="https://github.com/uclaacm/hoth6-ios-workshop/blob/master/images/Answer%20Vertical.png" height="600" width ="300">

Towards the bottom, there is a constraint item for our Vertically in Container constraint. Click Edit and change the multiplier field to 0.25. 


![alt text](https://github.com/uclaacm/hoth6-ios-workshop/blob/feature/shirly/images/AnswerVerticalAlignment.png)

Click on Add New Constraints (to the right). 

Click on the left and right text fields and enter 10 for both. Change Height to 80.  Then, click on Add 3 Constraints.


<img src="https://github.com/uclaacm/hoth6-ios-workshop/blob/master/images/AnswerConstraints.png" height="300" width= "250">






### Setting up Operator Label 


Click on the Label under the Answer label to select it. On the right side window, select the Attributes Inspector and make the following changes: 


1. Change the "Label" text to "?". 

2. Change Alignment to Center. 

3. Change Font Size to 35.0

<img src="https://github.com/uclaacm/hoth6-ios-workshop/blob/master/images/ChangeSettingsOfOperator.png" height="300" width= "250">

With the label still selected, go to Align and click on Horizontally in Container. Add the constraint.

<img src="https://github.com/uclaacm/hoth6-ios-workshop/blob/master/images/HorizontalAlignment.png" height="200" width= "350">

Now go to Add New Constraints (to the right), and add the following constraints: 

Width and Height to 50.

Top spacing to 40. Type in the topmost textfield, this will trigger the highlighted red I. This sets the top of the Operator label to always be 40 away from the bottom of the Answer Label. 

Add the 3 constraints. 

<img src="https://github.com/uclaacm/hoth6-ios-workshop/blob/feature/shirly/images/OperatorConstraints.png" height="300" width= "250">

### Setting up the number Textfields 


Select the left text field. 

Go to Add New Constraints and change the Width to 80, Height to 30, and TRAILING margin constraint to 45. This will make its trailing edge always 45 away from the left of Operator label.

<img src="https://github.com/uclaacm/hoth6-ios-workshop/blob/master/images/ConstraintsForLeftTextField.png" height="300" width= "250">

Select the right text field. 

Go to Add New Constraints and change the Width to 80, Height to 30, and LEADING margin constraint to 45. This will make its leading edge always 45 away from the right of Operator label.

<img src="https://github.com/uclaacm/hoth6-ios-workshop/blob/master/images/ConstraintsForRightTextField.png" height="300" width= "250">

### Setting up the operator Buttons 

Select the Button right under the left side Textfield. Press CONTROL, and while holding it, drag the new blue line to the left side Textfield until it highlights it. Then let go. The following menu will appear, select Center Horizontally. This will center the Button to the Textfield.  

<img src="https://github.com/uclaacm/hoth6-ios-workshop/blob/master/images/CenterOperatorsHorizontalToTextFields.png" height="300" width= "250">

Repeat this for the Button under it. 

Also repeat this for the 2 right side Buttons, but with the right side Textfield. 


For each of the two bottom Buttons, select Add New Constraints and add a top constraint of 40. 

<img src="https://github.com/uclaacm/hoth6-ios-workshop/blob/master/images/AddVerticalSpacingToBottomOperators.png" height="300" width= "250">


### Changing Settings for Each Button 

For the top left Button, select it and go to its Attribute Inspector. 

1. Change the "Label" text to "-". 

2. Change Alignment to Center. 

3. Change Font Size to 20.0


For the top right Button, select it and go to its Attribute Inspector. 

1. Change the "Label" text to "+". 

2. Change Alignment to Center. 

3. Change Font Size to 20.0


For the bottom left Button, select it and go to its Attribute Inspector. 

1. Change the "Label" text to "/". 

2. Change Alignment to Center. 

3. Change Font Size to 20.0


For the bottom right Button, select it and go to its Attribute Inspector. 

1. Change the "Label" text to "x". 

2. Change Alignment to Center. 

3. Change Font Size to 20.0


## Setting up Enter Button 

Select the final Button. 

Go to its Attribute Inspector and do the following: 

1. Change the "Label" text to "Enter". 

2. Change Alignment to Center. 

3. Change Font Size to 30.0


<img src="https://github.com/uclaacm/hoth6-ios-workshop/blob/master/images/ChangeSettingsOfEnterButton.png" height="300" width= "250">



Click on Align. 

Click on Horizontally in Container and Vertically in Container. Then, click on Add 2 Constraints. 

<img src="https://github.com/uclaacm/hoth6-ios-workshop/blob/master/images/BothAlignments.png" height="300" width= "250">

Now the Button is in the middle of the screen.  We want it back towards the bottom. 

Click on the ruler again on the right side window. Scroll down to the Center Y constraint and click on edit. Change the multiplier to 1.6. 



<img src="https://github.com/uclaacm/hoth6-ios-workshop/blob/master/images/EnterVertical.png" height="400" width= "250">


## Final Screen 

Finally, for aesthetics, you can change the color of the text of the buttons and labels, the background view, to anything you want inside each one's Attributes Inspector. There is a Color and Background located in each one's Attributes Inspector. 

We are going to shift-click the Operator Label and Answer Label and choose a white text color. 

Next, we are going to shift click the 5 buttons and choose a white text color. 

Finally, we are going to select the background and choose a black background color.

Here is the final screen : 

![](https://github.com/uclaacm/hoth6-ios-workshop/blob/master/images/EndingScreenInBlack.png)


