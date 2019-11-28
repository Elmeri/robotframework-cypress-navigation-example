*** Settings ***
Documentation     Simple example using SeleniumLibrary, similar test cases as in Cypress Navigation example.
Library           SeleniumLibrary
Suite Setup       Open Browser To Example Page
Test Setup        Go to Navigation Page
Test Teardown     Go to Home Page
Suite Teardown    Close Browser

*** Variables ***
${PAGE URL}      https://example.cypress.io
${BROWSER}       Chrome

*** Test Cases ***

Go back or forward to browser's history
    [Documentation]    Test case: cy.go() - go back or forward in the browser\'s history
    ...                Differences to Cypress example: SeleniumLibrary does not
    ...                have Go Forward function and it does not have a keyword
    ...                for testing the current website path. These have been rep-
    ...                laced with with Navigating in the web page and checking
    ...                that the web page  contains expected elements respectively.
    Go Back
    Wait Until Page Contains    Kitchen Sink
    Go to Navigation Page
    Wait Until Page Contains    Navigation
    Go Back
    Wait Until Page Contains    Kitchen Sink
    Go to Navigation Page
    Wait Until Page Contains    Navigation

Reload the page
    [Documentation]    Test case: cy.reload() - reload the page
    ...                Similar to reload the page example expect there is no
    ...                keyword for reloading the page without using the cache.
    Reload Page
    Wait Until Page Contains    Navigation
    Reload Page
    Wait Until Page Contains    Navigation

Visit a remote url
    [Documentation]    Test case: cy.visit() - visit a remote url
    Go To     https://example.cypress.io/commands/navigation
    Wait Until Page Contains    Navigation


*** Keywords ***
Open Browser To Example Page
    Open Browser    ${PAGE URL}    ${BROWSER}
    Wait Until Page Contains    Kitchen Sink

Open browser And Navigate to Navigation page
    Open Browser To Login Page
    Go to Navigation Page

Go to Navigation Page
    Click Element    xpath: //a[contains(text(), "Commands")]
    Click Element    xpath: //a[contains(text(), "Navigation")]

Go to Home Page
    Click Element    css:.navbar-brand