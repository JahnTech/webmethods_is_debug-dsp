<META http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<HTML>
	<BODY>
		<CENTER>
			<H1>
				<font face="Tahoma">Example 4: Now working</font>
			</H1>
		</CENTER>
		%invoke jt.demo.debugDSP.pub:service1%
		
		%loop jobList%
			<p>Job Name: %value name% ; status = %value status%</p>
			<ul>
				%loop resultSet%
					<li>
						Person = %value person% ; city = %value city% ; status = %value status%; for successful job there should now follow a "plus" sign :
						%ifvar success equals('true')%
							+
						%endifvar%
						
					</li>
				%endloop%
			
			</ul>
		  
		%endloop%
		
		%endinvoke%
	</BODY>
</HTML>