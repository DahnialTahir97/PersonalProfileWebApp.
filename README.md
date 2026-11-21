# PersonalProfileWebApp – MySpace

A Java EE 7 web application for the CSC584 Enterprise Programming individual assignment.

## Project overview

MySpace is a personal profile web application. A student enters personal and academic details in an HTML form. The browser sends the form using HTTP POST to a Java Servlet. The Servlet reads the submitted values and forwards the request to a JSP page, which displays the profile.

## Technologies

- Java 8
- Java EE 7 / Servlet 3.1 (`javax.servlet`)
- HTML5 and CSS3
- JavaServer Pages (JSP)
- Apache Ant
- NetBeans IDE 8.2
- GlassFish Server 4.1.1

## Project structure

```text
PersonalProfileWebApp/
├── nbproject/
│   ├── build-impl.xml
│   ├── genfiles.properties
│   ├── project.properties
│   └── project.xml
├── src/
│   ├── conf/MANIFEST.MF
│   └── java/com/personalprofile/servlet/ProfileServlet.java
├── web/
│   ├── css/style.css
│   ├── WEB-INF/web.xml
│   ├── index.html
│   └── result.jsp
├── build.xml
└── README.md
```

## Application flow

1. Open the application and complete the profile form.
2. The form submits the values to `/submit-profile` using HTTP POST.
3. `ProfileServlet.java` processes the submitted fields.
4. The Servlet forwards the request to `result.jsp`.
5. The result page displays the submitted profile information.

## Run using NetBeans IDE 8.2

1. Download or clone this repository.
2. In NetBeans, choose **File → Open Project** and select the project folder.
3. Configure **GlassFish Server 4.1.1** in NetBeans and set it as the project's server.
4. Confirm the Java platform and server libraries are configured.
5. Choose **Clean and Build**, then run/deploy the web application.
6. Open `http://localhost:8080/PersonalProfileWebApp/` in a browser.

The Ant build requires a configured Java EE server library because the Servlet API is provided by the application server.

## Notes

- The application processes profile data in the current request; it does not use a database.
- The repository contains source files and the supplied project screenshot PDF.
- Generated build output and machine-specific NetBeans private settings are intentionally excluded.
