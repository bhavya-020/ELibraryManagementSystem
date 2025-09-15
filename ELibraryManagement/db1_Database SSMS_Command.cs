//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;

//namespace ELibraryManagement
//{
//    public class db1_Database_SSMS_Command
//    {

//        create database elibraryDB;
//use elibraryDB;
//        create table admin_login_tbl(username nvarchar(50) not null  , password nvarchar(50) , Full_Name nvarchar(50));

//CREATE TABLE book_master_tbl(
//    book_id NCHAR(10)       NOT NULL PRIMARY KEY,
//    book_name        NVARCHAR(MAX)   NOT NULL,
//    genre            NVARCHAR(MAX)   NULL,
//    author_name NVARCHAR(MAX)   NULL,
//    publisher_name NVARCHAR(MAX)   NULL,
//    publish_date NVARCHAR(50)    NULL,
//    language NVARCHAR(50)    NULL,
//    edition NVARCHAR(MAX)   NULL,
//    book_cost NCHAR(10)       NULL,
//    no_of_pages NCHAR(10)       NULL,
//    book_description NVARCHAR(MAX)   NULL,
//    actual_stock NCHAR(10)       NULL,
//    current_stock NCHAR(10)       NULL,
//    book_img_link NVARCHAR(MAX)   NULL
//);

//CREATE TABLE author_master_tbl(
//    author_id NCHAR(10)     NOT NULL PRIMARY KEY,
//    author_name NVARCHAR(50)  NOT NULL
//);

//        CREATE TABLE publisher_master_tbl(
//            publisher_id NCHAR(10)       NOT NULL PRIMARY KEY,
//            publisher_name NVARCHAR(MAX)   NOT NULL
//);

//        CREATE TABLE member_master_tbl(
//            member_id NVARCHAR(50)   NOT NULL PRIMARY KEY,
//            full_name     NVARCHAR(50)   NOT NULL,
//            dob           NVARCHAR(50)   NULL,
//    contact_no NVARCHAR(50)   NULL,
//    email NVARCHAR(50)   NULL,
//    state NVARCHAR(50)   NULL,
//    city NVARCHAR(50)   NULL,
//    pincode NVARCHAR(50)   NULL,
//    full_address NVARCHAR(MAX)  NULL,
//    password NVARCHAR(50)   NOT NULL,
//    account_status NVARCHAR(50)  NOT NULL
//);


//        CREATE TABLE book_issue_tbl(
//            member_id NVARCHAR(50)   NOT NULL,
//            member_name NVARCHAR(50)   NOT NULL,
//            book_id     NVARCHAR(50)   NOT NULL,
//            book_name   NVARCHAR(MAX)  NOT NULL,
//            issue_date  NVARCHAR(50)   NOT NULL,
//            due_date    NVARCHAR(50)   NOT NULL
//    );



//    }
//}