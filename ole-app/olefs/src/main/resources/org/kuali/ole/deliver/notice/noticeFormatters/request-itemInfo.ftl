<#macro item oleNoticeBo oleNoticeContentConfigurationBo>

<table>

    <TR>
        <TD>${oleNoticeContentConfigurationBo.getFieldLabel("Circulation Location/Library Name")} </TD>
        <TD>:</TD>
        <TD>${oleNoticeBo.circulationDeskName}</TD>
    </TR>


    <TR>
        <TD>${oleNoticeContentConfigurationBo.getFieldLabel("Circulation Reply-To Email")} </TD>
        <TD>:</TD>
        <TD>${oleNoticeBo.circulationDeskReplyToEmail}</TD>
    </TR>

  <TR>
      <TD>${oleNoticeContentConfigurationBo.getFieldLabel("Title")} </TD>
      <TD>:</TD>
      <TD>${oleNoticeBo.title}</TD>
  </TR>
  <TR>
      <TD>${oleNoticeContentConfigurationBo.getFieldLabel("Author")} </TD>
      <TD>:</TD>
      <TD>${oleNoticeBo.author}</TD>
  </TR>
    <TR>
        <TD>${oleNoticeContentConfigurationBo.getFieldLabel("CopyNumber")}  </TD>
        <TD>:</TD>
        <TD>${oleNoticeBo.copyNumber}</TD>
    </TR>

    <TR>
        <TD>${oleNoticeContentConfigurationBo.getFieldLabel("Enumeration")}  </TD>
        <TD>:</TD>
        <TD>${oleNoticeBo.enumeration}</TD>
    </TR>
    <TR>
        <TD>${oleNoticeContentConfigurationBo.getFieldLabel("Chronology")}  </TD>
        <TD>:</TD>
        <TD>${oleNoticeBo.chronology}</TD>
    </TR>
    <TR>
        <TD>${oleNoticeContentConfigurationBo.getFieldLabel("Call Number")} </TD>
        <TD>:</TD>
        <TD>${oleNoticeBo.itemCallNumber}</TD>
    </TR>
    <TR>
        <TD>${oleNoticeContentConfigurationBo.getFieldLabel("Item Barcode")} </TD>
        <TD>:</TD>
        <TD>${oleNoticeBo.itemId}</TD>
    </TR>
    <TR>
        <TD>${oleNoticeContentConfigurationBo.getFieldLabel("Library shelving location")} </TD>
        <TD>:</TD>
        <TD>${oleNoticeBo.itemShelvingLocation}</TD>
    </TR>


    <#if oleNoticeBo.noticeType??>
        <#if oleNoticeBo.noticeType == "OnHoldNotice">
            <TR>
                <TD>${oleNoticeContentConfigurationBo.getFieldLabel("Hold Expiration Date")} </TD>
                <TD>:</TD>
                <TD>${(oleNoticeBo.expiredOnHoldDate)?date}</TD>
            </TR>
        </#if>

        <#if oleNoticeBo.noticeType == "RecallNotice">
            <TR>
                <TD>${oleNoticeContentConfigurationBo.getFieldLabel("Original Due Date")} </TD>
                <TD>:</TD>
                <TD>${(oleNoticeBo.originalDueDate)?date}</TD>
            </TR>
            <TR>
                <TD>${oleNoticeContentConfigurationBo.getFieldLabel("Recall Due Date")} </TD>
                <TD>:</TD>
                <TD>${(oleNoticeBo.newDueDate)?date}</TD>
            </TR>
        </#if>
    </#if>


</table>

</#macro>