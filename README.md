## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)
* [Run](#run)
* [Using different browsers](#using-different-browsers)

## General info
This project is used for functional, E2E tests of https://www.notino.pl/ site.
Test cases in this project was prepared in *Gherkin* (Given, When, And, Then) style.
The project was developed based on the BDD (*Behavior-Driven Development*) software development process.
## Technologies
The following versions were used in the project:
* **pip** version: 21.3.1
* **python** version: 3.10.0
* **selenium** version: 4.1.0
* **robotframework** version: 4.1.2
* **robotframework-seleniumlibrary** version: 5.1.3
* **webdrivermanager** version: 0.10.0
## Setup
At the beginning you have to install Python, Selenium, Robotframework and SeleniumLibrary by using below cmd commands:
```
pip install selenium
pip install robotframework
pip install robotframework-seleniumlibrary
```
The best option for installing Python is download the installer from origin site: https://www.python.org/downloads/. \
\
To run test cases properly, you need to use webdriver using one of two methods:
* Easier method is to put webdriver into a folder with test cases.
* The second, however more complicated method is: 

Add all drivers used in test cases to the **PATH** environment variable by using a command:
```
set PATH=%$PATH%;/usr/local/bin
```
Then install **webdrivermanager** to automate an installation of webdrivers into the **PATH** by following:
```
pip install webdrivermanager
```
After that you can add selected drivers to the **PATH** typing:
```
webdrivermanager firefox chrome --linkpath /usr/local/bin
```
## Run
To run this project, you should:  
1. Open a command prompt (*cmd*)
2. Change directory to the **Tests**
3. Run whole test cases from **.robot file** by using command, for example:</p>
```commandline
robot E2ETestCases.robot
```
Or exactly one test case using example [Tags] after `-i` flag in command:
```commandline
robot -i Header_First HomePageTests.robot
```
### Using different browsers
The browser that is used is controlled by `${BROWSER}` variable defined in [**BasePage.robot**](./Resources/Page_Objects/BasePage.robot) resource file. \
Firefox browser is used by default, but that can be easily overridden from the command line, for example:
```commandline
robot -v BROWSER:Chrome E2ETestCases.robot
```
