*** Settings ***
Library    RPA.Browser.Selenium
Resource    ../Variable/Variable.robot
*** Keywords ***
open Browser and navigate to url
    open Browser    ${url}    ${Browser}
    Maximize Browser Window
Scrolldown the homepage untill todays deals and click on the available third item
    Scroll Element Into View    ${TodayDeals}
    Wait Until Element Is Visible    ${TodayDeals}
    Click Element When Visible    ${Product}

click on any of the items you want and verify the price
    Wait Until Element Is Visible    ${ProductsPage}
    ${PP1}    Get Text    ${ProductPrice}
    Click Element    ${ProductsPage}
    Wait Until Element Is Visible    ${ActualPrice}
    ${PP2}    Get Text    ${ActualPrice}
    Should Be Equal    ${PP1}    ${PP2}

open product details and iterate through the table
    Scroll Element Into View    ${ProductDetails}
    Click Element When Visible    ${ProductDetails}
    Wait Until Element Is Visible    ${TechnicalDetails}
    ${RowCount}    Get Element Count    ${row}
    FOR    ${RowValue}    IN RANGE    1    ${RowCount}+1
        ${RowKey}=    Get Text    xpath://*[@class='a-expander-content a-expander-section-content a-section-expander-inner']/table/tbody/tr[4]
        IF    "${RowKey}"=="${ActualKey}" 
        ${ColumnValue}=    Get Text    xpath://*[@class='a-expander-content a-expander-section-content a-section-expander-inner']/table/tbody/tr[4]/td
        Log To Console    ${RowKey}  
        Log To Console    ${ColumnValue}
        END    
        Exit For Loop
        
    END
    