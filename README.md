# PersonalProfileWebApp – MySpace

A Java EE 7 web application developed for the CSC584 Enterprise Programming individual assignment.

## Project overview

MySpace allows a student to enter personal and academic information through an HTML form. The submitted data is sent to a Java Servlet using HTTP POST, processed by the Servlet, and displayed on a JSP result page.

## Technologies

- HTML (`index.html`)
- Java Servlet (`ProfileServlet.java`, `javax.servlet`)
- JavaServer Pages (`result.jsp`)
- CSS (`style.css`)
- NetBeans IDE 8.2
- GlassFish Server 4.1.1
- Java EE 7 Web

## Project structure

```text
PersonalProfileWebApp/
├── nbproject/
├── src/
│   ├── conf/
│   └── java/com/personalprofile/servlet/
│       └── ProfileServlet.java
├── web/
│   ├── css/style.css
│   ├── WEB-INF/web.xml
│   ├── index.html
│   └── result.jsp
└── build.xml
```

## How it works

1. Open `index.html` and complete the profile form.
2. The form submits the information to `/submit-profile` using HTTP POST.
3. `ProfileServlet.java` processes the submitted parameters.
4. The Servlet forwards the request to `result.jsp`.
5. `result.jsp` displays the submitted profile.

## Run in NetBeans

1. Extract or open the `PersonalProfileWebApp` folder as an existing NetBeans project.
2. Use a compatible Java EE 7 environment with GlassFish Server 4.1.1.
3. Run the project from NetBeans.
4. Open `http://localhost:8080/PersonalProfileWebApp/`.

## Database

Database integration is not included because it is not required by the assignment.

## Included supporting files

- `PersonalProfileWebApp_Clean_For_GitHub.zip` – the cleaned project archive.
- `PROJECT SCREENSHOTS_...pdf` – project screenshots supplied with the submission.

## Notes

This repository contains the project source and supporting submission files. Build output and machine-specific NetBeans private settings are excluded.
