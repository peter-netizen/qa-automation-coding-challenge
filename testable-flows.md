(Add your list of flows here)
Note: 
    The testcases are organized based on the kind of scope we want on each case, for example:
        Regression testing to keep trust on each iteration, Smoke testing to confirm 
        core features are still in place, and Usability testing to improve on user -
        experience on each iteration.
    Severity and Prioritization are included on the Regression testsuite, the other 2 testsuites have a selection of the same testcases

Regression Testsuite 
    Main page
        Get_Repos - main_page (ui)                                          severity=low    priority=low      
    Search form
        Get_Repos_search form - username (validation)                       severity=medium    priority=medium   
        Get_Repos_search form - username (Enter key)                        severity=medium    priority=medium   
        Get_Repos_search form - Go button                                   severity=critical    priority=high   
    Search Lookup
        Get_Repos_search_lookup - username is valid                         severity=critical    priority=high   
        Get_Repos_search_lookup - username is valid (no repos)              severity=major    priority=medium   
        Get_Repos_search_lookup - username is not valid (user not found)    severity=major    priority=high   
        Get_Repos_search_lookup - username is not valid (generic error)     severity=medium    priority=low   
    Search Results
        Get_Repos_search_results - displays basic info                      severity=critical    priority=high   
        Get_Repos_search_results - displays basic info (ui)                 severity=low    priority=low   

Smoke Testsuite
    Main page
        Get_Repos - main_page (ui)
    Search form
        Get_Repos_search form - username (Enter key)
        Get_Repos_search form - Go button 
    Search Lookup
        Get_Repos_search_lookup - username is valid
    Search Results
        Get_Repos_search_results - displays basic info

Usability Testsuite
    Main page
        Get_Repos - main_page (ui)
    Search Results
        Get_Repos_search_results - displays basic info (ui)



