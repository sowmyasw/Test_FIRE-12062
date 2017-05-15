<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="1.0">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
	
		<xsl:variable name="tableHeader">
			<tr>
				<th width="35%">Message</th>
				<th width="35%">Exception</th>
				<th width="10%">Status</th>
				<th width="20%">Time stamp</th>
			</tr>
		</xsl:variable>
		
		<xsl:variable name="sectionPassed">
			<span style="color:green;font-size:150%;">
				<img title="Passed" src="../../../../tick.png" alt="pass-icon"/>
			</span> 
			Pass<br/>
		</xsl:variable>
		
		<xsl:variable name="sectionFailed">
			<span style="color:green;font-size:150%;">
				<img title="Passed" src="../../../../cross.png" alt="pass-icon"/>
			</span> 
			Fail<br/>
		</xsl:variable>
		
		<xsl:variable name="sectionDetailTableHeader">
			<tr>
				<th width="15%">Phase</th>
				<th width="15%">Duration</th>
				<th width="70%"></th>
			</tr>
		</xsl:variable>
		
		<html>
			<head>
				<link rel="stylesheet" type="text/css" title="Style" href="../../../stylesheet.css"/>
			</head>
		
			<body>
				<!-- Add the Test Case header on top of Log file -->
				<h2>
					<xsl:text>Test Case - </xsl:text>
						<xsl:for-each select="log/sources/source">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="text()"/>
							</xsl:attribute>
							<xsl:value-of select="@label"/>
						</a>
						<xsl:text>  </xsl:text>
						</xsl:for-each>
					
				</h2>
				<ul style="list-style-type:none;">
					<li>
						<!-- Iterate over section nodes in the XML -->
						<xsl:for-each select="log/section">
							<br/>
							<div style="background-color:gray;color:white;position:relative;left:-15;">
								<!--Print the section number from section-number attribute of section node -->
								<h2><xsl:if test="@status='pass'"><span style="color:green;font-size:150%;">&#10004;</span></xsl:if>
									<xsl:if test="@status='fail'"><span style="color:red;font-size:150%;">&#10008;</span></xsl:if>Iteration <xsl:value-of select="@section-number"/></h2>
							</div>
							
							<!-- For each section iterate over all sub-sections -->						
							<xsl:for-each select="sub-section">
								<li>
									<!-- Print Section name and execution time for each sub-section -->
									<table class="details" border="0" cellpadding="0" cellspacing="0" width="95%">
										<xsl:copy-of select="$sectionDetailTableHeader"/>
										<tr>
											<td width="15%">
												<xsl:if test="@status='pass'"><span style="color:green;font-size:150%;">&#10004;</span></xsl:if>
												<xsl:if test="@status='fail'"><span style="color:red;font-size:150%;">&#10008;</span></xsl:if>
												<xsl:if test="@status='skip'"><span style="color:orange;font-size:150%;">&#10150;</span></xsl:if><xsl:value-of select="@name"/></td>
											<td width="15%"><xsl:value-of select="@execution-time"/></td>
											<td width="70%" colspan="3"></td>
										</tr>
									</table>
								</li>
								
								<li>
									<!-- Print the log record for the section -->
									<table class="details" style="position:relative;left:2%;" border="0" cellpadding="5" cellspacing="2" width="93%">
										<xsl:copy-of select="$tableHeader" />
										<xsl:for-each select="record">
											<tr>
												<td width="40%"><xsl:value-of select="message"/></td>
												<td width="40%">
													<xsl:value-of select="exception/message[text()]"/><br/>
													<xsl:for-each select="exception/frame">
														&#xA0;&#160;at <xsl:value-of select="class[text()]"/>.<xsl:value-of select="method[text()]"/>()
														<xsl:choose>
															<xsl:when test="line">
																:<xsl:value-of select="line[text()]"/>
															</xsl:when>
															<xsl:otherwise>
																(Unknown Source/Native Method)
															</xsl:otherwise>
														</xsl:choose>
														<br/>
													</xsl:for-each>
												</td>
												<td width="10%">
													<xsl:choose>
														<xsl:when test="status='pass'">
															<xsl:copy-of select="$sectionPassed"/>
														</xsl:when>
														
														<xsl:when test="status='ok'">
															<xsl:copy-of select="$sectionPassed"/>
														</xsl:when>
														
														<xsl:when test="status='fail'">
															<xsl:copy-of select="$sectionFailed"/>
														</xsl:when>
													</xsl:choose>
													
												</td>
												<td width="20%"><xsl:value-of select="date"/></td>
											</tr>
										</xsl:for-each>
									</table>
								</li>
								<p/>
							</xsl:for-each>
						</xsl:for-each>					
					</li>
					
					
				</ul>
				
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>

