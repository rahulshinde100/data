<% page_title = "Demonstration of ERB" %>
<% salutation = a=23
      	b=33
      	c=a+b
      	puts "==#{c}"%>

<html>

   <head>
      <title><%= page_title %></title>
   </head>
	
   <body>
      <p><%= salutation 
      	

      %></p>
      <p>This is an example of how ERB fills out a template.</p>
   </body>
	
</html>