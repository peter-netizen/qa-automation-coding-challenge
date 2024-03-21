*** Settings ***
Library    Selenium2Library
Library    String



*** Variables ***
${UrlSite}=    http://localhost:3000
${Browser}=    chrome
${titlehome}=    Get Github Repos
${repouser}=    peter-netizen2
${targetrepo}=    qa
${segundos}=    2

*** Test Cases ***
Loading website
    [Documentation]    scenario1_loading website
    [Tags]    s1_load
    Open Browser    ${UrlSite}    ${Browser}

Verifing title on home page
    title should be    ${titlehome}
    log title

Type username
    [Documentation]    scenario1_typing username
    [Tags]    repos_search
    wait until element is visible    id:username
    input text    id:username    ${repouser}
    Sleep    ${segundos}
    Press Keys      id:username 	RETURN

Verifying results
    [Documentation]    scenario1_user not found
    [Tags]    repos_found
    ${status}       ${error}    Run Keyword And Ignore Error    Wait until element is visible    class:message-failure
    Run Keyword If      '${status}' == 'PASS'       log to console    message=there is no user with that name

Confirm results
    #get total count of links
    ${linkscounter}=  Get Element Count  xpath://a
    Log To Console  message=total de links
    Log To Console  ${linkscounter}

End testing
    [Documentation]    endoftesting
    [Tags]    endtest
    Sleep    10
    Close Browser



*** Keywords ***
