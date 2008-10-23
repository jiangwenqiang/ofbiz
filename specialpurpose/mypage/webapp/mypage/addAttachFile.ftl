  <div id="partyContent" class="screenlet">
    <div class="screenlet-title-bar">
      <h3>Attach File</h3>
    </div>
    <div class="screenlet-body">
      <div class="label">${uiLabelMap.Content}</div>
      <form id="content2comevent" method="post" enctype="multipart/form-data" action="<@ofbizUrl>addContentToCommEvent</@ofbizUrl>" name="content2comevent">
        <input type="hidden" name="partyId" value="${partyId}" id="contentPartyId"/>      
		<input type="hidden" name="communicationEventId" value="${communicationEventId}"/>   	
		<input type="hidden" name="partyContentTypeId" value="USERDEF"/>
		<input type="hidden" name="communicationEventTypeId" value="${communicationEventTypeId}"/>
		<input type="hidden" name="parentCommEventId" value="${parameters.parentCommEventId?if_exists}"/>
		<input type="hidden" name="originalCommEventId" value="${parameters.originalCommEventId?if_exists}"/>
		<input type="text" size="25" name="contentId"/>
			<a href="javascript:call_fieldlookup2(document.content2comevent.contentId,'LookupContent');">
				<img width="15" height="14" border="0" alt="Lookup" src="/images/fieldlookup.gif"/>
			</a>
        &nbsp;&nbsp;<input type="submit" value="${uiLabelMap.CommonAdd}"/><br><br>
      </form>
            
      <div class="label">${uiLabelMap.Attach}</div>
      <form id="uploadPartyContent" method="post" enctype="multipart/form-data" action="<@ofbizUrl>uploadAttachFiletoEmail</@ofbizUrl>">
        <input type="hidden" name="dataCategoryId" value="PERSONAL"/>
        <input type="hidden" name="contentTypeId" value="DOCUMENT"/>
        <input type="hidden" name="statusId" value="CTNT_PUBLISHED"/>
        <input type="hidden" name="partyId" value="${partyId}" id="contentPartyId"/>
        <input type="hidden" name="partyContentTypeId" value="USERDEF"/>
        <input type="hidden" name="roleTypeId" value="CONTENT"/> 
        <input type="hidden" name="communicationEventId" value="${communicationEventId}"/>   
        <input type="hidden" name="communicationEventTypeId" value="${communicationEventTypeId}"/>        
        <input type="hidden" name="parentCommEventId" value="${parameters.parentCommEventId?if_exists}"/>
		<input type="hidden" name="originalCommEventId" value="${parameters.originalCommEventId?if_exists}"/>
              
        <input type="file" name="uploadedFile" size="25" id="uploadedFile"/>
        <input type="submit" value="${uiLabelMap.CommonUpload}"/><br><br>
        <input type="button" value="Back" onClick="javascript:history.go(-1);">
      </form>
      <div id='progress_bar'><div></div></div>
    </div>
  </div>
