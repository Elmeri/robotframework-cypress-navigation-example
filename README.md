# Robotframework-cypress-navigation-example
Cypress navigation example done with robotframework + seleniumlibrary combination in order to do side by side comparison.

## Installation
Installing cypress

`npm install cypress --save-dev`

Installing robotframework

`pip install robotframework`

`pip install robotframework-seleniumlibrary`

Also requires chrome webdriver. One easy way to install using webdrivermanager and running

 `webdrivermanager chrome`

## Setup

Opens Cypress and adds Cypress folder

`./node_modules/.bin/cypress open`

## Running Robotframework Cypress navigation example

`robot robotframework-cypress-navigation-example.robot`

## Running Cypress navigation example

This runs the Cypress navigation example from the command line, can also be run from the UI. Assumes that installation and setup steps are completed and that this command is run from the project root.

`./node_modules/.bin/cypress run --spec "cypress/integration/examples/navigation.spec.js" --headed`


