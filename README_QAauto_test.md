# QA Automation Coding Challenge

Automation scripts are in the robot folder under the names:
    repos_search_and_select.robot 
    repos_search_user_not_found.robot
They are done using robot framework (Selenium library)

### Instructions
For those scripts to run properly, do the following:
1.Copy the robot folder to the local machine 
2.On terminal, navigate to the folder
3.Ensure you have the following:
    python3
    pip3
    homebrew
4.install robot framework
    > pip3 install robotframework
5.install selenium libraries
    > pip3 install robotframework-seleniumlibrary
    > pip3 install --upgrade robotframework-selenium2library 
    > pip3 install robotframework-browser
6.Download Selenium Chrome driver
    Go to https://googlechromelabs.github.io/chrome-for-testing/
7.Copy to local user folder
    > cp chromedriver /usr/local/bin
8.On mac os, authorize the chrome driver file
    > xattr -d com.apple.quarantine chromedriver
Note:
I used PyCharm to develop and execute the scripts, selecting python3 as the interpreter

The scripts can be executed by typing the following on terminal:
    script 1
    python3 -m robot -d reports repos_search_and_select.robot 
    
    script 2
    python3 -m robot -d reports repos_search_user_not_found.robot  
    
    