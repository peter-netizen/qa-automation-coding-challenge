*** Settings ***
Library    Selenium2Library
Library    String



*** Variables ***
${UrlSite}=    http://localhost:3000
${Browser}=    chrome
${titlehome}=    Get Github Repos
${repouser}=    peter-netizen
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
    [Documentation]    scenario1_results are displayed
    [Tags]    repos_found
    wait until element is visible    class:repo-amount

Confirm results
    [Documentation]    scenario1_counting results
    [Tags]    s1_count
    #get total count of links
    ${linkscounter}=  Get Element Count  xpath://a
    Log To Console  message=total de links
    Log To Console  ${linkscounter}

    #get all the links present
    @{LinkItems}  Create List

    FOR  ${i}  IN RANGE  1  ${linkscounter}
      ${linkText}=      Get Text  xpath:(//a)[${i}]
      #verifying if a repo with certain name is in the list
      run keyword if    $targetrepo in $linkText    log to console    there is a repo with that name
    END

Click first
    [Documentation]    scenario1_selecting first match
    [Tags]    s1_verify
    #select first repo with certain name
    Click Link  partial link:${targetrepo}
    Sleep    ${segundos}

End testing
    [Documentation]    endoftesting
    [Tags]    endtest
    Sleep    10
    Close Browser



*** Keywords ***



