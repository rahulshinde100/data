<h1>Results</h1>

<html>
<head>

  </head>
  <body>
<table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
<tr>
	<th>Sr.No.</th>
	<th>Question</th>
	<th>Answers</th>
	<th>Total Attempt</th>
	<th>Count</th>
	
</tr>

<%#@cpost.map(&:tags).flatten.map(&:title).uniq.each do |t| %>
<% sr_no=0 %>
<% @question_results.map(&:question).uniq.each do |que| %>
<% sr_no+=1 %>
	<tr>
		<td><strong><%= sr_no %></strong></td>
		<td>
 			<%= que.que_content %>
 		</td>
 		<% @options = GivenAnswer.where(:question_id => que.id) %>
 		<td>
 				
 				<% @options.map(&:answer).uniq.each do |option| %>
 					<% if que.types == "checkbox" %>
 						<% checkbox_array=option.split('\n') %>
 							
 						<% checkbox_array.each do |checkbox_ans| %>

							<% if checkbox_ans.empty? %>

								<% else %>
									<%= checkbox_ans %><br> 
						
							<% end %>
						<% end %>

 					<% else %>
 						<%= option %><br>
 					<% end %>
 				
 			<% end %>
 		</td>

 	<td>				
 		<%= @options.count %>
 	</td>
 	<td>	

 				<%  @options.map(&:answer).uniq.each do |option| %>
 					<% if que.types == "checkbox" %>
 						<% checkbox_array=option.split('\n') %>
 							
 						<% checkbox_array.uniq.each do |checkbox_ans| %>

							<% if checkbox_ans.empty? %>

								<% else %>
									<% @counts = GivenAnswer.where(:answer => checkbox_ans) %>
 									<%= @counts.count %><br>
							<% end %>
						<% end %>


					<% else %>			



 					<% @counts = GivenAnswer.where(:answer => option) %>
 					
 					<%= @counts.count %><br>
 					
 				<% end%>
 				<% end%>	
 			
 	</td>

 	
 </tr>
<% end %>
</table>
</body>
</html>