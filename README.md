# webAutomationCodeChallenge
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)

## Description 
This project is to automate the login functionality of www.libreview.com website using robot framework and python3.

## Table of Contents
* [Technologies](#technologies)
* [Installation](#installation)
  * [Pre-requisites](#prerequisites)
  * [Steps](#Steps)
* [Usage](#usage)
* [Test Results](#testresults)
* [License](#license)
* [Questions](#questions)

## Technologies 
* [Automation Framework: Robot Framework](https://robotframework.org/)
* [Library: SeleniumLibrary](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)
* [Scritping Language: Python3](https://www.python.org/downloads/)
* [IDE: PyCharm](https://www.jetbrains.com/pycharm/)

## Installation 
 ### Pre-Requsites
 - Python 3
 - Robot Framework
 - Selenium
 - Selenium Library

### Steps

1. Clone the repository from [GitHub](https://github.com/archana-nagaraj/webAutomationCodeChallenge)
2. Install all the items mentioned in the (#prerequisites)
3. Add the downloaded packages in the IDE 
4. Add Intellibot plugin in the IDE
5. Download browserdrivers for use from [selenium.dev](https://www.selenium.dev/downloads/) 

### Post Installation Steps

1. Create credentials file with the following naming pattern `<environment>Credentials.robot`
For eg: `localCredentials.robot`
2. Contents of the credentials is REQUIRED to have following variables
   1. `${VALID_USERNAME}`
   2. `${PASSWORD}`

for eg.
```
*** Variables ***
${VALID_USERNAME}   <username>
${PASSWORD}         <password>
```
## Usage

Run the command in the terminal 
`robot --variable environment:<environment> -d results <PATH TO TESTS>` <br>
For eg:
`robot --variable environment:local -d results tests/loginTests/validLogin.robot`

Note: 
environment argument is mandatory

## Test Results
* [ExecutionVideo](https://drive.google.com/file/d/1qUg2zpqKNIstvyuhPxGtNYF42aCLOSSP/view?usp=sharing)<br><br>

* Screenshot: log.html
![Test Log](./results/testlog_screenshot.png)<br><br>
* Screenshot: report.html
![Test Log](./results/testreport_screenshot.png)

## License 
This repository is licensed under the [MIT license](./LICENSE).

## Questions
For any questions about the project/repository please contact me @ [archana.nagaraj@gmail.com](mailto:archana.nagaraj@gmail.com) </br>
GitHub @ [archana-nagaraj](https://github.com/archana-nagaraj) 