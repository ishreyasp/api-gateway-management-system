SET SERVEROUTPUT ON;

-- User Engagement Segmentation Report:
-- This report categorizes users into engagement tiers (High, Medium, Low) 
-- based on activity levels, API requests, and subscription status over last 90 days.
DECLARE
    c_user_report   SYS_REFCURSOR;
    v_report_title  VARCHAR2(100);
BEGIN
    SELECT 'Report showing the user engagement segmentation' INTO v_report_title FROM dual;
    c_user_report := get_user_engagement_report;
    DBMS_OUTPUT.PUT_LINE('Report Title: ' || v_report_title);
    DBMS_SQL.RETURN_RESULT(c_user_report);
END;
/

-- Revenue and Estimated Loss Report: 
-- This report calculates revenue generated by active APIs and 
-- estimates revenue loss caused by API failures.
DECLARE
    c_api_revenue     SYS_REFCURSOR;
    v_report_title    VARCHAR2(100);
BEGIN
    SELECT 'Report showing revenue generated by active APIs and estimates revenue loss caused by API failures' 
    INTO v_report_title FROM dual;
    c_api_revenue := get_api_revenue_data;
    DBMS_OUTPUT.PUT_LINE('Report Title: ' || v_report_title);
    DBMS_SQL.RETURN_RESULT(c_api_revenue);
END;
/

-- Monthly Performance Heatmap:
-- This report generates a heatmap view of APIs by average, minimum and maximum response time 
-- across months, aiding in performance optimization.
DECLARE
    c_response_time    SYS_REFCURSOR;
    v_report_title     VARCHAR2(100);
BEGIN
    SELECT 'Report showing the monthly performance heatmap' INTO v_report_title FROM dual;
    c_response_time := get_api_response_time_report;
    DBMS_OUTPUT.PUT_LINE('Report Title: ' || v_report_title);
    DBMS_SQL.RETURN_RESULT(c_response_time);
END;
/

-- API Revenue
-- This report calculates revenue generated by each API, categorized by pricing models.
DECLARE
    c_report        SYS_REFCURSOR;
    v_report_title  VARCHAR2(100);
BEGIN
    SELECT 'API Revenue Report' INTO v_report_title FROM dual;
    c_report := get_api_revenue_contribution;
    DBMS_OUTPUT.PUT_LINE('Report Title: ' || v_report_title);
    DBMS_SQL.RETURN_RESULT(c_report);
END;
/

-- Top Paying Users Report
-- This report identifies users with the highest billing amounts across all APIs.
DECLARE
    c_report        SYS_REFCURSOR;
    v_report_title  VARCHAR2(100);
BEGIN
    SELECT 'Users with maximum billings' INTO v_report_title FROM dual;
    c_report := get_top_paying_users;
    DBMS_OUTPUT.PUT_LINE('Report Title: ' || v_report_title);
    DBMS_SQL.RETURN_RESULT(c_report);
END;
/

-- API Access Audit Report
DECLARE
    c_audit_report    SYS_REFCURSOR;
    v_report_title    VARCHAR2(100);
BEGIN
    SELECT 'API Access Audit Report - Detailed User Access Patterns' INTO v_report_title FROM dual;
    c_audit_report := get_api_access_audit_report;
    DBMS_OUTPUT.PUT_LINE('Report Title: ' || v_report_title);
    DBMS_SQL.RETURN_RESULT(c_audit_report);
END;
/

-- Get user token expiry dates report
DECLARE
   c_dates_report    SYS_REFCURSOR;
   v_report_title    VARCHAR2(100);
BEGIN
   SELECT 'User Token and Access Dates Report' INTO v_report_title FROM dual;
   c_dates_report := get_user_dates_report;
   DBMS_OUTPUT.PUT_LINE('Report Title: ' || v_report_title);
   DBMS_SQL.RETURN_RESULT(c_dates_report);
END;
/