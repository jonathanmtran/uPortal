<%--

    Licensed to Apereo under one or more contributor license
    agreements. See the NOTICE file distributed with this work
    for additional information regarding copyright ownership.
    Apereo licenses this file to you under the Apache License,
    Version 2.0 (the "License"); you may not use this file
    except in compliance with the License.  You may obtain a
    copy of the License at the following location:

      http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.

--%>
<%@ include file="/WEB-INF/jsp/include.jsp" %>

<!-- START: VALUES BEING PASSED FROM BACKEND -->
<portlet:actionURL var="submitUrl" escapeXml="false">
	<portlet:param name="execution" value="${flowExecutionKey}" />
</portlet:actionURL>
<!-- END: VALUES BEING PASSED FROM BACKEND -->

<!--
PORTLET DEVELOPMENT STANDARDS AND GUIDELINES
| For the standards and guidelines that govern
| the user interface of this portlet
| including HTML, CSS, JavaScript, accessibilty,
| naming conventions, 3rd Party libraries
| (like jQuery and the Fluid Skinning System)
| and more, refer to:
| docs/SKINNING_UPORTAL.md
-->
    
<!-- Portlet -->
<div class="fl-widget portlet ptl-mgr view-confirmremove" role="section">

	<!-- Portlet Title -->
  <div class="fl-widget-titlebar titlebar portlet-titlebar" role="sectionhead">
  	<h2 class="title" role="heading">
      <spring:message code="remove.portlet"/>
    </h2>
  </div> <!-- end: portlet-titlebar -->
  
  <!-- Portlet Content -->
  <div class="fl-widget-content content portlet-content">

    <form:form modelAttribute="portlet" action="${submitUrl}" method="POST">

    <!-- Portlet Messages -->
    <spring:hasBindErrors name="portlet">
        <div class="portlet-msg-error portlet-msg error" role="alert">
            <form:errors path="*" element="div"/>
        </div> <!-- end: portlet-msg -->
    </spring:hasBindErrors>

    <!-- Portlet Section -->
    <div class="portlet-section" role="region">
      <div class="titlebar">
        <h3 class="title" role="heading"><spring:message code="remove.portlet.name" arguments="${ portlet.name }"/></h3>
      </div>
      <div class="content">
        <spring:message code="remove.portlet.confirmation" arguments="${ portlet.name }"/>
	  </div>
	</div> <!-- end: portlet-section -->
    
    <!-- Portlet Buttons -->
    <div class="buttons">
      <input class="button primary btn" type="submit" value="<spring:message code="remove.portlet"/>" name="_eventId_remove"/>
      <input class="button btn" type="submit" value="<spring:message code="cancel"/>" name="_eventId_cancel"/>
    </div>
    
    </form:form> <!-- End Form -->
            
	</div> <!-- end: portlet-content -->
        
</div> <!-- end: portlet -->