<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%!
    private String escapeHtml(String value) {
        if (value == null) return "";
        return value.replace("&", "&amp;").replace("<", "&lt;")
                    .replace(">", "&gt;").replace("\"", "&quot;")
                    .replace("'", "&#x27;");
    }
%>
<%
    String name = (String) request.getAttribute("name");
    String studentId = (String) request.getAttribute("studentId");
    String program = (String) request.getAttribute("program");
    String email = (String) request.getAttribute("email");
    String introduction = (String) request.getAttribute("introduction");
    List<String> hobbies = (List<String>) request.getAttribute("hobbies");
    if (name == null) { response.sendRedirect("index.html"); return; }
    String firstLetter = name.trim().isEmpty() ? "?" : name.trim().substring(0, 1).toUpperCase();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><%= escapeHtml(name) %> | MySpace Profile</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Manrope:wght@500;600;700;800&display=swap" rel="stylesheet">
</head>
<body>
    <div class="container result-container">
        <header class="header"><a class="logo" href="index.html">my<span>space.</span></a><div class="header-label">STUDENT PROFILE</div></header>
        <main class="result-main">
            <section class="profile-result">
                <div class="result-status">✓ PROFILE CREATED SUCCESSFULLY</div>
                <div class="result-avatar"><%= escapeHtml(firstLetter) %></div>
                <p class="eyebrow">NICE TO MEET YOU</p>
                <h1><%= escapeHtml(name) %></h1>
                <p class="result-program"><%= escapeHtml(program) %></p>
                <div class="result-details">
                    <div class="result-detail"><span>STUDENT ID</span><strong><%= escapeHtml(studentId) %></strong></div>
                    <div class="result-detail"><span>EMAIL ADDRESS</span><strong><%= escapeHtml(email) %></strong></div>
                </div>
                <div class="result-section"><h2>About Me</h2><p><%= escapeHtml(introduction).replace("\r\n", "<br>").replace("\n", "<br>") %></p></div>
                <div class="result-section"><h2>My Hobbies</h2><div class="result-hobbies">
                    <% if (hobbies != null && !hobbies.isEmpty()) { for (String hobby : hobbies) { %><span><%= escapeHtml(hobby) %></span><% } } else { %><em>No hobbies selected</em><% } %>
                </div></div>
                <a class="back-button" href="index.html">← Create another profile</a>
            </section>
        </main>
        <footer class="footer">MYSPACE · PERSONAL PROFILE WEB APPLICATION</footer>
    </div>
</body>
</html>