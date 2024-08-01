# Dashy CI/CD pipeline

<a href="https://dash.elest.io/deploy?source=cicd&social=dockerCompose&url=https://github.com/elestio-examples/dashy"><img src="deploy-on-elestio.png" alt="Deploy on Elest.io" width="180px" /></a>

Deploy Dashy server with CI/CD on Elestio

<img src="dashy.gif" style='width: 800px'/>
<br/>
<br/>

# Once deployed ...

You can open Dashy UI here:

    URL: https://[CI_CD_DOMAIN]
    login: "admin"
    password: [ADMIN_PASSWORD]

<!-- # Adding users

to add a new user, you'll have to modify your `my-config.yml` file, by adding the following for each user in the `appConfig>auth>users` section under your own credentials:

    - user: user1
        hash: hashed_password

If you want to make him admin, so you juste have to add this under the hash

    type: admin

so something like that:

    - user: user1
        hash: hashed_password
        type: admin

# Widget

to add some new widgets, you'll have to add it in your `my-config.yml` file, for example, to add a clock:

    - name: Aria Info
        widgets:
            - type: clock
            options:
                timeZone: Europe/London
                format: en-GB
                hideDate: false

# Documentation

you'll get more informations here: https://dashy.to/docs/ -->

# Project Configuration Guide

## Accessing to my-config.yml

To access to the configuration file, follow the instructions:

1. Access Elestio's Dashboard:

- Navigate to your Elestio's dashboard.
- Click on the "Tools" tab.
- Then, click on the "VS Code" button.

2. Locate Configuration File:

- In the opened VS Code interface, locate the `my-config.yml` file.

## Adding Users

To add a new user, modify your `my-config.yml` file. Each user entry should be added in the `appConfig > auth > users` section under your own credentials. Use the following format:

    appConfig:
        auth:
            users:
            - user: user1
                hash: hashed_password

## Adding an Admin User

If you want to grant admin privileges to a user, add the type: admin line under the hash field:

    appConfig:
        auth:
            users:
            - user: user1
                hash: hashed_password
                type: admin

## Adding Widgets

To add new widgets, include them in your `my-config.yml` file. For example, to add a clock widget, use the following format:

    appConfig:
        widgets:
            - name: Aria Info
            widgets:
                - type: clock
                options:
                    timeZone: Europe/London
                    format: en-GB
                    hideDate: false

## Documentation

For more information, refer to the <a href="https://dashy.to/docs/" target="_blank">official documentation.</a>
