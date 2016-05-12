--  *********************************************************************
--  Update Database Script
--  *********************************************************************
--  Change Log: org/kuali/ole/3.0/db.changelog-20160208.xml
--  *********************************************************************

--  Lock Database
--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::OLE_KRIM_PERM_T_mysql::ole
SET sql_mode='NO_BACKSLASH_ESCAPES'
/

INSERT INTO KRIM_PERM_T (PERM_ID, OBJ_ID, VER_NBR, PERM_TMPL_ID, NMSPC_CD, NM, DESC_TXT, ACTV_IND) VALUES ('OLE10502', 'OLE10502', '1', '1', 'OLE-CAT', 'MARC_EDITOR_COPY_BIB', 'user to Copy a bibliographic record will be created', 'Y')
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_KRIM_PERM_T_mysql', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 1, '7:b4944d7e80f8bc23ac28c3d85bff9fa6', 'sql, loadData', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::OLE_KRIM_ROLE_PERM_T_mysql::ole
SET sql_mode='NO_BACKSLASH_ESCAPES'
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, ROLE_ID, PERM_ID, ACTV_IND) VALUES ('OLE12506', 'OLE12506', 'OLE10077', 'OLE10502', 'Y')
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, ROLE_ID, PERM_ID, ACTV_IND) VALUES ('OLE12507', 'OLE12507', 'OLE10078', 'OLE10502', 'Y')
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, ROLE_ID, PERM_ID, ACTV_IND) VALUES ('OLE12508', 'OLE12508', 'OLE10079', 'OLE10502', 'Y')
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, ROLE_ID, PERM_ID, ACTV_IND) VALUES ('OLE12509', 'OLE12509', 'OLE10080', 'OLE10502', 'Y')
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, ROLE_ID, PERM_ID, ACTV_IND) VALUES ('OLE12510', 'OLE12510', 'OLE10082', 'OLE10502', 'Y')
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_KRIM_ROLE_PERM_T_mysql', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 2, '7:8dd09b35d8d014484483604dffbeee8c', 'sql, loadData', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::OLE_CAT_SHVLG_SCHM_T_UPDATE::ole
UPDATE OLE_CAT_SHVLG_SCHM_T SET SHVLG_SCHM_CD = 'EIGHT', SHVLG_SCHM_ID = '10' WHERE SHVLG_SCHM_ID = 8
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_CAT_SHVLG_SCHM_T_UPDATE', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 3, '7:07bcfea29f570366d060d68cbb549c8f', 'update', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::OLE_CAT_SHVLG_SCHM_T_INSERT1::ole
INSERT INTO OLE_CAT_SHVLG_SCHM_T (OBJ_ID,ROW_ACT_IND,SHVLG_SCHM_CD,SHVLG_SCHM_ID,SHVLG_SCHM_NM,SRC,SRC_DT,VER_NBR) VALUES ('fb8119a1-eafb-4150-ad72-0f9c67e7d7df','Y','SIX',8,'Shelved separately','MFHD 852 1st Indicator: http://www.loc.gov/marc/holdings/hd852.html','2012-03-22 00:00:00',1)
/

INSERT INTO OLE_CAT_SHVLG_SCHM_T (OBJ_ID,ROW_ACT_IND,SHVLG_SCHM_CD,SHVLG_SCHM_ID,SHVLG_SCHM_NM,SRC,SRC_DT,VER_NBR) VALUES ('fb8119a1-eafb-4150-ad72-0f9c67e7d7dg','Y','SEVEN',9,'Source specified in subfield $2','MFHD 852 1st Indicator: http://www.loc.gov/marc/holdings/hd852.html','2012-03-22 00:00:00',1)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_CAT_SHVLG_SCHM_T_INSERT1', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 4, '7:1cf7eba53d543d0c6c10d8a3d9e7c94c', 'sql (x2)', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::PUR_REQS_T_BILL_PHN_NBR_NULL::ole
ALTER TABLE PUR_REQS_T MODIFY BILL_PHN_NBR VARCHAR(20) NULL
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('PUR_REQS_T_BILL_PHN_NBR_NULL', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 5, '7:0c66f770f71c621ab63c8ba4c67c8929', 'dropNotNullConstraint', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::ALERT_OLE_PUR_POBA_T_MYSQL::ole
ALTER TABLE OLE_PUR_POBA_T MODIFY UPLD_FILE_NM varchar(120)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('ALERT_OLE_PUR_POBA_T_MYSQL', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 6, '7:b4013a468b9bfefdd66f79cc0cf1a10d', 'sql', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::OLE_DS_HOLDINGS_T_ADD::ole
ALTER TABLE OLE_DS_HOLDINGS_T ADD MATERIALS_SPECIFIED VARCHAR(100) NULL
/

ALTER TABLE OLE_DS_HOLDINGS_T ADD FIRST_INDICATOR VARCHAR(20) NULL
/

ALTER TABLE OLE_DS_HOLDINGS_T ADD SECOND_INDICATOR VARCHAR(20) NULL
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DS_HOLDINGS_T_ADD', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 7, '7:177bc16fdd76c1e15e186a9d2978d739', 'addColumn', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::PUR_PO_ITM_TOT_ENC_V_ALTER::ole
CREATE OR REPLACE VIEW ole.PUR_PO_ITM_TOT_ENC_V AS (SELECT A.FDOC_NBR AS FDOC_NBR,
            SUM(A.ITM_OSTND_ENC_AMT) AS TOTAL_ENCUMBRANCE,
            SUM(A.ITM_INV_TOT_QTY) AS INVOICED_QUANTITY
            FROM PUR_PO_ITM_T A group by A.FDOC_NBR)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('PUR_PO_ITM_TOT_ENC_V_ALTER', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 8, '7:837fbcb817bc5be9220ce4d924bbec3d', 'createView', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::PUR_PO_V_ALTER::ole
CREATE OR REPLACE VIEW ole.PUR_PO_V AS (SELECT P.AP_PUR_DOC_LNK_ID,
            P.PO_ID,
            P.PO_CUR_IND,
            P.FDOC_NBR,
            P.OBJ_ID,
            D.APP_DOC_STAT,
            P.RECUR_PMT_TYP_CD,
            P.PO_VNDR_CHC_CD,
            P.PO_END_DT,
            E.TOTAL_ENCUMBRANCE,
            SUMMATION.TOTAL_AMOUNT,
            P.PO_CRTE_DT AS PO_CRTE_DT,
            E.INVOICED_QUANTITY AS INVOICED_QUANTITY,
            POTYPE.OLE_PO_TYPE
            FROM
            PUR_PO_T P,
            KREW_DOC_HDR_T D,
            OLE_PUR_PO_TYP_T POTYPE,
            PUR_PO_ITM_TOT_ENC_V E,
            PUR_PO_ITM_TOT_AMT_V SUMMATION
            WHERE
            P.FDOC_NBR = E.FDOC_NBR
            AND
            P.FDOC_NBR=D.DOC_HDR_ID
            AND P.FDOC_NBR = SUMMATION.FDOC_NBR
            AND P.OLE_PO_TYPE_ID = POTYPE.OLE_PO_TYPE_ID)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('PUR_PO_V_ALTER', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 9, '7:0e7d877d5744c6d2cd5e4a94f843dd46', 'createView', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::ADD_LOCN_POPUP::ole
ALTER TABLE OLE_CRCL_DSK_LOCN_T ADD LOCN_POPUP VARCHAR(1) NULL
/

ALTER TABLE OLE_CRCL_DSK_LOCN_T ADD LOCN_POPUP_MSG VARCHAR(4000) NULL
/

ALTER TABLE OLE_CRCL_DSK_LOCN_T ALTER LOCN_POPUP SET DEFAULT 'N'
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('ADD_LOCN_POPUP', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 10, '7:abc8f571e596b27bddbb33333e833f37', 'addColumn, addDefaultValue', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::OLE_LOAD_KRCR_PARM_T_mysql::ole
SET sql_mode='NO_BACKSLASH_ESCAPES'
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-PURAP', 'AutoClosePurchaseOrdersStep', 'AUTO_CLOSE_PO_ORDER_TYPE', 'OLEAC1001', '1', 'CONFG', 'Firm, Fixed;Approval;Blanket;', 'Order Types Included in AutoClose Job PO Job. Change it to ''All'' to include all open PO for AutoClose Job', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-SELECT', 'Select', 'POBA_CANCEL_PDF_CREATION', 'OLE7057', '1', 'CONFG', 'false', 'This parameter is to stop the PDF creation process while creating POA document using Purchase Order Bulk Amendment', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DLVR', 'Deliver', 'CR_ITEMS_COUNT_TOWARD_LOANED_ITEMS_COUNT', 'OLEAC1002', '1', 'CONFG', 'true', 'This parameter value is used to identify whether to include item in loan count or not', 'A', 'KUALI')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DLVR', 'Deliver', 'NOTIFY_CLAIMS_RETURNED_TO_PATRON', 'OLEAC1003', '1', 'CONFG', 'true', 'This parameter value is used to identify whether to notify the patron about claims returned item or not.', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DLVR', 'Deliver', 'CLAIMS_RETURNED_NOTICE_TITLE', 'OLEAC1004', '1', 'CONFG', 'CLAIMS RETURNED NOTICE', 'Claims Returned Notice', 'A', 'KUALI')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DLVR', 'Deliver', 'CLAIMS_RETURNED_NOTICE_CONTENT', 'OLEAC1005', '1', 'CONFG', 'Claims returned has been received. Staff will begin searching for item', 'Claims Returned Notice Body', 'A', 'KUALI')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DLVR', 'Deliver', 'CLAIMS_RETURNED_FOUND_NO_FEES_NOTICE_TITLE', 'OLEAC1006', '1', 'CONFG', 'CLAIMS RETURNED FOUND NO FEES NOTICE', 'Claims Returned Found - no fees Notice', 'A', 'KUALI')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DLVR', 'Deliver', 'CLAIMS_RETURNED_FOUND_NO_FEES_NOTICE_CONTENT', 'OLEAC1007', '1', 'CONFG', 'Claimed Item has been found. Item will NOT be billed to the patron’s account', 'Claims Returned Found - no fees', 'A', 'KUALI')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DLVR', 'Deliver', 'CLAIMS_RETURNED_FOUND_FINES_OWED_NOTICE_TITLE', 'OLEAC1008', '1', 'CONFG', 'CLAIMS RETURNED FOUND FINES OWED NOTICE', 'Claims Returned Found - fines owed Notice', 'A', 'KUALI')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DLVR', 'Deliver', 'CLAIMS_RETURNED_FOUND_FINES_OWED_NOTICE_CONTENT', 'OLEAC1009', '1', 'CONFG', 'Claimed Item has been found. Item will be billed to the patron’s account', 'Claims Returned Found - fines owed', 'A', 'KUALI')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DLVR', 'Deliver', 'CR_ITEM_SEARCH_COUNT_BEFORE_ITEM_BILLED', 'OLEAC1010', '1', 'CONFG', '3', 'This parameter value is used to identify the max search count before item billed', 'A', 'KUALI')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DLVR', 'Deliver', 'CLAIMS_RETURNED_NOT_FOUND_FINES_OWED_NOTICE_TITLE', 'OLEAC1011', '1', 'CONFG', 'CLAIMS RETURNED NOT FOUND FINES OWED NOTICE', 'Claims Returned Not Found - fines owed Notice', 'A', 'KUALI')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DLVR', 'Deliver', 'CLAIMS_RETURNED_NOT_FOUND_FINES_OWED_NOTICE_CONTENT', 'OLEAC1012', '1', 'CONFG', 'Claimed Item has not been found. Item will be billed to the patron’s account', 'Claims Returned Not Found - fines owed', 'A', 'KUALI')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DLVR', 'Deliver', 'CLAIMS_RETURNED_NOT_FOUND_NOTICE_TITLE', 'OLEAC1013', '1', 'CONFG', 'CLAIMS RETURNED NOT FOUND NOTICE', 'Claims Returned Not Found', 'A', 'KUALI')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DLVR', 'Deliver', 'CLAIMS_RETURNED_NOT_FOUND_NOTICE_CONTENT', 'OLEAC1014', '1', 'CONFG', 'Claimed Item has not been found. Staff will continue searching', 'Claims Returned Not Found', 'A', 'KUALI')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DLVR', 'Deliver', 'CLAIMS_RETURNED_NOT_FOUND_NO_FEES_NOTICE_TITLE', 'OLEAC1015', '1', 'CONFG', 'CLAIMS RETURNED NOT FOUND NO FEES NOTICE', 'Claims Returned Not Found - no fees Notice', 'A', 'KUALI')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DLVR', 'Deliver', 'CLAIMS_RETURNED_NOT_FOUND_NO_FEES_NOTICE_CONTENT', 'OLEAC1016', '1', 'CONFG', 'Claimed Item has not been found. Item will NOT be billed to the patron’s account', 'Claims Returned Not Found - no fees', 'A', 'KUALI')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DLVR', 'Deliver', 'FORGIVE_LOST_FEES', 'OLEAC1017', '1', 'CONFG', 'REPL_FEE,LOST_ITEM_PRCS_FEE', 'Allows the specified fees to be forgiven while renew/return an lost item.', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-SYS', 'Batch', 'FUND_RECORD_CSV_NAME', '150', '1', 'CONFG', 'FundCode', 'The Name of the csv file ingested for Fund record import document name should ends with the value specified in this parameter', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-SYS', 'Batch', 'FUND_ACCOUNTING_LINE_RECORD_CSV_NAME', '151', '1', 'CONFG', 'FundCodeAccountingLines', 'The Name of the csv file ingested for FundCode Accounting Lines record import document name should ends with the value specified in this parameter', 'A', 'OLE')
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_LOAD_KRCR_PARM_T_mysql', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 11, '7:8c9c1e904315754c05c41ebfe10bea57', 'sql, loadData', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::OLE_DS_ITEM_T_ADD::ole
ALTER TABLE OLE_DS_ITEM_T ADD VOLUME_NUMBER VARCHAR(100) NULL
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DS_ITEM_T_ADD', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 12, '7:657a752c1a6e90c5459a0b41601e45e3', 'addColumn', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::OLE_DLVR_PTRN_BILL_T_ADD_COLUMN::ole
ALTER TABLE OLE_DLVR_PTRN_BILL_T ADD MANUAL_BILL VARCHAR(1) NULL
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DLVR_PTRN_BILL_T_ADD_COLUMN', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 13, '7:82fc4155ca39723e00087553b1a87131', 'addColumn', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::OLE_DLVR_PTRN_BILL_FEE_TYP_T_ADD_COLUMN::ole
ALTER TABLE OLE_DLVR_PTRN_BILL_FEE_TYP_T ADD MANUAL_BILL VARCHAR(1) NULL
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DLVR_PTRN_BILL_FEE_TYP_T_ADD_COLUMN', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 14, '7:d12a93136d3dc7a29c84a9f6e1091072', 'addColumn', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::OLE_DLVR_PTRN_BILL_T_DEFAULTVAL::ole
ALTER TABLE OLE_DLVR_PTRN_BILL_T ALTER MANUAL_BILL SET DEFAULT 'N'
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DLVR_PTRN_BILL_T_DEFAULTVAL', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 15, '7:99c665e531796b7aae20b3fde6361359', 'addDefaultValue', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::OLE_DLVR_PTRN_BILL_FEE_TYP_T_DEFAULTVAL::ole
ALTER TABLE OLE_DLVR_PTRN_BILL_FEE_TYP_T ALTER MANUAL_BILL SET DEFAULT 'N'
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DLVR_PTRN_BILL_FEE_TYP_T_DEFAULTVAL', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 16, '7:2f6930210af495b6e029ab755731cebf', 'addDefaultValue', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::OLE_LOCN_T_ROW_IND::ole
ALTER TABLE OLE_LOCN_T ADD ROW_ACT_IND VARCHAR(1) NULL DEFAULT 'Y'
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_LOCN_T_ROW_IND', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 17, '7:3fbe9ab8e0bbcf7997b5c0d28b158f76', 'addColumn', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::OLE_PTRN_PAY_STA_T_MYSQL::ole
INSERT INTO OLE_PTRN_PAY_STA_S values ()
/

INSERT INTO OLE_PTRN_PAY_STA_T (PAY_STA_ID, PAY_STA_CODE, PAY_STA_NAME, OBJ_ID, VER_NBR) VALUES (last_insert_id(), 'PAY_SUSPENDED', 'Suspended', '9j889f30-96nw-5d7j-8d89-7j17cf97520', '1')
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_PTRN_PAY_STA_T_MYSQL', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 18, '7:b28d349b57a84d4ff767676f1342aa1b', 'sql (x2)', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::OLE_DLVR_ITEM_AVAIL_STAT_T_MYSQL::ole
INSERT INTO OLE_DLVR_ITEM_AVAIL_STAT_S values ()
/

INSERT INTO OLE_DLVR_ITEM_AVAIL_STAT_T (ITEM_AVAIL_STAT_ID, ITEM_AVAIL_STAT_CD, ITEM_AVAIL_STAT_NM, OBJ_ID, VER_NBR) VALUES (last_insert_id(), 'MISSING', 'MISSING', '1abf3de3-2221-4249-a829-2c386ee9f515', '1')
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DLVR_ITEM_AVAIL_STAT_T_MYSQL', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 19, '7:efffb0308a2a8f3064810922b8fb3492', 'sql (x2)', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::OLE_DLVR_LOAN_T_ADD::ole
ALTER TABLE OLE_DLVR_LOAN_T ADD NUM_CLAIMS_RTRN_NOTICES_SENT INT NULL
/

ALTER TABLE OLE_DLVR_LOAN_T ADD CLAIMS_SEARCH_COUNT INT NULL
/

ALTER TABLE OLE_DLVR_LOAN_T ADD LAST_CLAIMS_RTRN_SEARCH_DT TIMESTAMP NULL
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DLVR_LOAN_T_ADD', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 20, '7:8dfecb25130e4189e51807926eaff83d', 'addColumn', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::ALTER_FIELD_SIZE_MYSQL::ole
ALTER TABLE OLE_DLVR_LOAN_NOTICE_T MODIFY NTC_TYP varchar(100)
/

ALTER TABLE OLE_DLVR_LOAN_NOTICE_HSTRY_T MODIFY NTC_TYP varchar(100)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('ALTER_FIELD_SIZE_MYSQL', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 21, '7:b52afb4828193b4dfabbb187978ef7dd', 'sql (x2)', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::OLE_DLVR_PTRN_BILL_FEE_TYP_T_RNWL_DT_TIME::ole
ALTER TABLE OLE_DLVR_PTRN_BILL_FEE_TYP_T ADD RNWL_DT_TIME TIMESTAMP NULL
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DLVR_PTRN_BILL_FEE_TYP_T_RNWL_DT_TIME', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 22, '7:b64c48dc58f9a984f80081c06826e79a', 'addColumn', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::OLE_DLVR_LOAN_NOTICE_T_LOST_ITM_PRCS_FEE_AMNT::ole
ALTER TABLE OLE_DLVR_LOAN_NOTICE_T ADD LOST_ITM_PRCS_FEE_AMNT DECIMAL(8) NULL
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DLVR_LOAN_NOTICE_T_LOST_ITM_PRCS_FEE_AMNT', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 23, '7:e82077bef114906371dd1cb8f5a61d15', 'addColumn', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::OLE_DLVR_PTRN_FEE_TYPE_T_MYSQL::ole
INSERT INTO OLE_DLVR_PTRN_FEE_TYPE_S values ()
/

INSERT INTO OLE_DLVR_PTRN_FEE_TYPE_T (FEE_TYP_ID, FEE_TYP_CD, FEE_TYP_NM, OBJ_ID, VER_NBR) VALUES (last_insert_id(), 'LOST_ITEM_PRCS_FEE', 'Lost Item Processing Fee', '0cc1a894-d34e-4ec2-8479-9adf974fd72H', '1')
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DLVR_PTRN_FEE_TYPE_T_MYSQL', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 24, '7:ca876a409c7c2d33dd941c886785033f', 'sql (x2)', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::OLE_BAT_PRCS_PRF_T_MYSQL::ole
INSERT INTO OLE_BAT_PRCS_PRF_S values ()
/

INSERT INTO OLE_BAT_PRCS_PRF_T (BAT_PRCS_BIB_OVRL_ADD,BAT_PRCS_BIB_NO_MTCH,BAT_PRCS_INST_OVRL_ADD,BAT_PRCS_INST_NO_MTCH,BAT_PRCS_PRF_DESC,BAT_PRCS_PRF_ID,BAT_PRCS_PRF_NM,OBJ_ID,BAT_PRCS_MARC_ONLY,OLE_BAT_PRCS_TYP,VER_NBR) VALUES ('add','add','keepOldAddNew','add','Default EDI Export Format',last_insert_id(),'Default_EDI_Format','f6f342ca-d6b6-435f-adea-a6bbc10cey','N','EDI Export',1)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_BAT_PRCS_PRF_T_MYSQL', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 25, '7:45e446f4be6918d6d6394c1c39c47ebe', 'sql (x2)', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::OLE_BAT_PRCS_PRFLE_CNST_T_mysql::ole
SET sql_mode='NO_BACKSLASH_ESCAPES'
/

INSERT INTO OLE_BAT_PRCS_PRFLE_CNST_T (OLE_USR_DEF_VAL_ID, ATT_NM, ATT_VAL, DATA_TYPE, BAT_PRCS_PRF_ID, DEF_VAL, OBJ_ID, VER_NBR) VALUES ('32', 'Default Segment', 'UNA:+.? ''', 'EDIExport', '22', 'default', 'obj31', '1')
/

INSERT INTO OLE_BAT_PRCS_PRFLE_CNST_T (OLE_USR_DEF_VAL_ID, ATT_NM, ATT_VAL, DATA_TYPE, BAT_PRCS_PRF_ID, DEF_VAL, OBJ_ID, VER_NBR) VALUES ('33', 'Interchange Details', 'UNB+UNOC:3+*:ZZ+*:ZZ+*+*''', 'EDIExport', '22', 'default', 'obj32', '1')
/

INSERT INTO OLE_BAT_PRCS_PRFLE_CNST_T (OLE_USR_DEF_VAL_ID, ATT_NM, ATT_VAL, DATA_TYPE, BAT_PRCS_PRF_ID, DEF_VAL, OBJ_ID, VER_NBR) VALUES ('34', 'Unique Ref Number', 'UNH+*+ORDERS:D:96A:UN:EAN008''', 'EDIExport', '22', 'default', 'obj33', '1')
/

INSERT INTO OLE_BAT_PRCS_PRFLE_CNST_T (OLE_USR_DEF_VAL_ID, ATT_NM, ATT_VAL, DATA_TYPE, BAT_PRCS_PRF_ID, DEF_VAL, OBJ_ID, VER_NBR) VALUES ('35', 'Purap Document Identifier', 'BGM+220+*+9''', 'EDIExport', '22', 'default', 'obj34', '1')
/

INSERT INTO OLE_BAT_PRCS_PRFLE_CNST_T (OLE_USR_DEF_VAL_ID, ATT_NM, ATT_VAL, DATA_TYPE, BAT_PRCS_PRF_ID, DEF_VAL, OBJ_ID, VER_NBR) VALUES ('36', 'Order Date', 'DTM+137:*:102''', 'EDIExport', '22', 'default', 'obj35', '1')
/

INSERT INTO OLE_BAT_PRCS_PRFLE_CNST_T (OLE_USR_DEF_VAL_ID, ATT_NM, ATT_VAL, DATA_TYPE, BAT_PRCS_PRF_ID, DEF_VAL, OBJ_ID, VER_NBR) VALUES ('37', 'Vendor Username', 'NAD+BY+*::31B''', 'EDIExport', '22', 'default', 'obj36', '1')
/

INSERT INTO OLE_BAT_PRCS_PRFLE_CNST_T (OLE_USR_DEF_VAL_ID, ATT_NM, ATT_VAL, DATA_TYPE, BAT_PRCS_PRF_ID, DEF_VAL, OBJ_ID, VER_NBR) VALUES ('38', 'Vendor SAN', 'NAD+SU+*::31B''', 'EDIExport', '22', 'default', 'obj37', '1')
/

INSERT INTO OLE_BAT_PRCS_PRFLE_CNST_T (OLE_USR_DEF_VAL_ID, ATT_NM, ATT_VAL, DATA_TYPE, BAT_PRCS_PRF_ID, DEF_VAL, OBJ_ID, VER_NBR) VALUES ('39', 'Currency Code', 'CUX+2:GBP:9''', 'EDIExport', '22', 'default', 'obj38', '1')
/

INSERT INTO OLE_BAT_PRCS_PRFLE_CNST_T (OLE_USR_DEF_VAL_ID, ATT_NM, ATT_VAL, DATA_TYPE, BAT_PRCS_PRF_ID, DEF_VAL, OBJ_ID, VER_NBR) VALUES ('40', 'Line Item', 'LIN+1++*:EN''', 'EDIExport', '22', 'default', 'obj39', '1')
/

INSERT INTO OLE_BAT_PRCS_PRFLE_CNST_T (OLE_USR_DEF_VAL_ID, ATT_NM, ATT_VAL, DATA_TYPE, BAT_PRCS_PRF_ID, DEF_VAL, OBJ_ID, VER_NBR) VALUES ('41', 'Purchase Line Item', 'PIA+5+*:IB''', 'EDIExport', '22', 'default', 'obj40', '1')
/

INSERT INTO OLE_BAT_PRCS_PRFLE_CNST_T (OLE_USR_DEF_VAL_ID, ATT_NM, ATT_VAL, DATA_TYPE, BAT_PRCS_PRF_ID, DEF_VAL, OBJ_ID, VER_NBR) VALUES ('42', 'Item Price', 'PRI+AAA:*''', 'EDIExport', '22', 'default', 'obj41', '1')
/

INSERT INTO OLE_BAT_PRCS_PRFLE_CNST_T (OLE_USR_DEF_VAL_ID, ATT_NM, ATT_VAL, DATA_TYPE, BAT_PRCS_PRF_ID, DEF_VAL, OBJ_ID, VER_NBR) VALUES ('43', 'Item Author', 'IMD+F+BAU+:::*''', 'EDIExport', '22', 'default', 'obj42', '1')
/

INSERT INTO OLE_BAT_PRCS_PRFLE_CNST_T (OLE_USR_DEF_VAL_ID, ATT_NM, ATT_VAL, DATA_TYPE, BAT_PRCS_PRF_ID, DEF_VAL, OBJ_ID, VER_NBR) VALUES ('44', 'Item Title', 'IMD+F+BTI+:::*''', 'EDIExport', '22', 'default', 'obj43', '1')
/

INSERT INTO OLE_BAT_PRCS_PRFLE_CNST_T (OLE_USR_DEF_VAL_ID, ATT_NM, ATT_VAL, DATA_TYPE, BAT_PRCS_PRF_ID, DEF_VAL, OBJ_ID, VER_NBR) VALUES ('45', 'Item Publisher', 'IMD+F+BPU+:::*''', 'EDIExport', '22', 'default', 'obj44', '1')
/

INSERT INTO OLE_BAT_PRCS_PRFLE_CNST_T (OLE_USR_DEF_VAL_ID, ATT_NM, ATT_VAL, DATA_TYPE, BAT_PRCS_PRF_ID, DEF_VAL, OBJ_ID, VER_NBR) VALUES ('46', 'Item Publisher Date', 'IMD+F+BPD+:::*''', 'EDIExport', '22', 'default', 'obj45', '1')
/

INSERT INTO OLE_BAT_PRCS_PRFLE_CNST_T (OLE_USR_DEF_VAL_ID, ATT_NM, ATT_VAL, DATA_TYPE, BAT_PRCS_PRF_ID, DEF_VAL, OBJ_ID, VER_NBR) VALUES ('47', 'Item Quantity', 'QTY+21:*''', 'EDIExport', '22', 'default', 'obj46', '1')
/

INSERT INTO OLE_BAT_PRCS_PRFLE_CNST_T (OLE_USR_DEF_VAL_ID, ATT_NM, ATT_VAL, DATA_TYPE, BAT_PRCS_PRF_ID, DEF_VAL, OBJ_ID, VER_NBR) VALUES ('48', 'Reference Qualifier 1', 'RFF+BFN:*''', 'EDIExport', '22', 'default', 'obj47', '1')
/

INSERT INTO OLE_BAT_PRCS_PRFLE_CNST_T (OLE_USR_DEF_VAL_ID, ATT_NM, ATT_VAL, DATA_TYPE, BAT_PRCS_PRF_ID, DEF_VAL, OBJ_ID, VER_NBR) VALUES ('49', 'Reference Qualifier 2', 'RFF+LI:*''', 'EDIExport', '22', 'default', 'obj48', '1')
/

INSERT INTO OLE_BAT_PRCS_PRFLE_CNST_T (OLE_USR_DEF_VAL_ID, ATT_NM, ATT_VAL, DATA_TYPE, BAT_PRCS_PRF_ID, DEF_VAL, OBJ_ID, VER_NBR) VALUES ('50', 'Item Location', 'LOC+7+*::92''', 'EDIExport', '22', 'default', 'obj49', '1')
/

INSERT INTO OLE_BAT_PRCS_PRFLE_CNST_T (OLE_USR_DEF_VAL_ID, ATT_NM, ATT_VAL, DATA_TYPE, BAT_PRCS_PRF_ID, DEF_VAL, OBJ_ID, VER_NBR) VALUES ('51', 'Delivery Address', 'NAD+DP+*::31B+*''', 'EDIExport', '22', 'default', 'obj50', '1')
/

INSERT INTO OLE_BAT_PRCS_PRFLE_CNST_T (OLE_USR_DEF_VAL_ID, ATT_NM, ATT_VAL, DATA_TYPE, BAT_PRCS_PRF_ID, DEF_VAL, OBJ_ID, VER_NBR) VALUES ('52', 'Other Address', 'NAD+OB+*::31B+*''', 'EDIExport', '22', 'default', 'obj51', '1')
/

INSERT INTO OLE_BAT_PRCS_PRFLE_CNST_T (OLE_USR_DEF_VAL_ID, ATT_NM, ATT_VAL, DATA_TYPE, BAT_PRCS_PRF_ID, DEF_VAL, OBJ_ID, VER_NBR) VALUES ('53', 'Section Identification', 'UNS+S''', 'EDIExport', '22', 'default', 'obj52', '1')
/

INSERT INTO OLE_BAT_PRCS_PRFLE_CNST_T (OLE_USR_DEF_VAL_ID, ATT_NM, ATT_VAL, DATA_TYPE, BAT_PRCS_PRF_ID, DEF_VAL, OBJ_ID, VER_NBR) VALUES ('54', 'Control Qualifier 1', 'CNT+1:*''', 'EDIExport', '22', 'default', 'obj53', '1')
/

INSERT INTO OLE_BAT_PRCS_PRFLE_CNST_T (OLE_USR_DEF_VAL_ID, ATT_NM, ATT_VAL, DATA_TYPE, BAT_PRCS_PRF_ID, DEF_VAL, OBJ_ID, VER_NBR) VALUES ('55', 'Control Qualifier 2', 'CNT+2:*''', 'EDIExport', '22', 'default', 'obj54', '1')
/

INSERT INTO OLE_BAT_PRCS_PRFLE_CNST_T (OLE_USR_DEF_VAL_ID, ATT_NM, ATT_VAL, DATA_TYPE, BAT_PRCS_PRF_ID, DEF_VAL, OBJ_ID, VER_NBR) VALUES ('56', 'Note', 'FTX+LIN++::+*''', 'EDIExport', '22', 'default', 'obj55', '1')
/

INSERT INTO OLE_BAT_PRCS_PRFLE_CNST_T (OLE_USR_DEF_VAL_ID, ATT_NM, ATT_VAL, DATA_TYPE, BAT_PRCS_PRF_ID, DEF_VAL, OBJ_ID, VER_NBR) VALUES ('57', 'Number of Segments', 'UNT+*+*''', 'EDIExport', '22', 'default', 'obj56', '1')
/

INSERT INTO OLE_BAT_PRCS_PRFLE_CNST_T (OLE_USR_DEF_VAL_ID, ATT_NM, ATT_VAL, DATA_TYPE, BAT_PRCS_PRF_ID, DEF_VAL, OBJ_ID, VER_NBR) VALUES ('58', 'Interchange Control count', 'UNZ+1+*''', 'EDIExport', '22', 'default', 'obj57', '1')
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_BAT_PRCS_PRFLE_CNST_T_mysql', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 26, '7:abf985a122a9589822f085880a4fd8b4', 'sql, loadData', '', 'EXECUTED', '3.2.0')
/

--  Release Database Lock
--  Release Database Lock
