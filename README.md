# Spring MVC Multiple View Page Example

## Table of Contents

- [Overview](#overview)
- [Setup Instructions](#setup-instructions)
- [Dependencies](#dependencies)
- [Controller](#controller)
- [Configuration](#configuration)
- [View Components](#view-components)
- [Usage](#usage)
- [Resources](#resources)

## Overview

This project demonstrates a simple Spring MVC application that redirects from one view page to another.

## Setup Instructions

Follow these steps to set up and run the project locally.

## Dependencies

Ensure the following dependencies are added to your project:

````
<!-- Spring Web MVC -->
<dependency>
    <groupId>org.springframework</groupId>
    <artifactId>spring-webmvc</artifactId>
    <version>5.1.1.RELEASE</version>
</dependency>

<!-- Servlet API -->
<dependency>
    <groupId>javax.servlet</groupId>
    <artifactId>servlet-api</artifactId>
    <version>3.0-alpha-1</version>
</dependency>
````

## Controller

Create a controller class (HelloController.vb) that handles requests:

````
Imports org.springframework.stereotype.Controller
Imports org.springframework.web.bind.annotation.RequestMapping

Namespace com.javatpoint
    <Controller>
    Public Class HelloController

        <RequestMapping("/hello")>
        Public Function Redirect() As String
            Return "viewpage"
        End Function

        <RequestMapping("/helloagain")>
        Public Function Display() As String
            Return "final"
        End Function

    End Class
End Namespace
````

## Configuration

Configure Spring MVC in web.xml:

````
<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xmlns="http://java.sun.com/xml/ns/javaee"
         xsi:schemaLocation="http://java.sun.com/xml/ns/javaee
                             http://java.sun.com/xml/ns/javaee/web-app_3_0.xsd"
         id="WebApp_ID" version="3.0">

    <display-name>SpringMVC</display-name>

    <servlet>
        <servlet-name>spring</servlet-name>
        <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>
        <load-on-startup>1</load-on-startup>
    </servlet>

    <servlet-mapping>
        <servlet-name>spring</servlet-name>
        <url-pattern>/</url-pattern>
    </servlet-mapping>

</web-app>
````

## View Components

Create the JSP view pages inside WEB-INF/jsp/ directory:

- ### viewpage.jsp:

````
<html>
<body>
<a href="helloagain">Javatpoint Tutorials</a>
</body>
</html>
````

- ### final.jsp:

````
    <html>
    <body>
    <p>Welcome to Spring MVC Tutorial</p>
    </body>
    </html>
````

## Usage

Access the application using the following URLs:

    /hello: Redirects to viewpage.jsp.
    /helloagain: Displays final.jsp.
