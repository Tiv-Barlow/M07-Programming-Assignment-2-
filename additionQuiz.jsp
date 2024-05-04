<!--
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
<title>Addition Quiz</title>
</head>
<body>
<h2>Addition Quiz</h2>

<%
// Generate random addition questions
int numQuestions = 5; // Number of questions
int[][] questions = new int[numQuestions][2];
int[] answers = new int[numQuestions];

for (int i = 0; i < numQuestions; i++) {
  int num1 = (int) (Math.random() * 100); // Random number between 0 and 99
  int num2 = (int) (Math.random() * 100);
  questions[i][0] = num1;
  questions[i][1] = num2;
  answers[i] = num1 + num2;
}
%>

<form action="quizResult.jsp" method="post">
<% for (int i = 0; i < numQuestions; i++) { %>
  <%= "Question " + (i + 1) + ": " + questions[i][0] + " + " + questions[i][1] + " = " %>
  <input type="number" name="answer<%= i %>" required><br>
<% } %>
<input type="submit" value="Submit">
</form>

</body>
</html>



