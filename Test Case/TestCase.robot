*** Settings ***
Resource    ../Keyword/Keyword.robot
Suite Setup    open Browser and navigate to url
Suite Teardown    Close Browser

*** Test Cases ***
Verifying Amazon website homepage
    [Tags]    sanity
    Given Scrolldown the homepage untill todays deals and click on the available third item
    When click on any of the items you want and verify the price
    Then open product details and iterate through the table