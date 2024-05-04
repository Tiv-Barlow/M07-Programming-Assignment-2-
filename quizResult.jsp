<%--
//M07 Programming Assignment (2)
//Ivy Tech Community College
//SDEV 200 - Java
//Professor Bumgardner
//Nativida Muhammad
// 04 May 2024
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz Result</title>
</head>
<body>
<h2>Quiz Result</h2>

<%
int numQuestions = 5; // Number of questions
int score = 0;
int[] answers = {4, 5, 6, 7, 8}; // Assuming answers are stored in an array

for (int i = 0; i < numQuestions; i++) {
  try {
    int userAnswer = Integer.parseInt(request.getParameter("answer" + i));
    if (userAnswer == answers[i]) {
        score++;
    }
  } catch (NumberFormatException e) {
    // Handle if the parameter is not provided or is not a valid integer
    // You might want to redirect the user to an error page or display a message
  }
}
%>

<% 
out.println("Your score: " + score + "/" + numQuestions); 
%>

</body>
</html>
