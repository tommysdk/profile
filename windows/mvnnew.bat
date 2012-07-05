@echo off
set directory=%1
if "%1"=="" set directory=.
mkdir src\main\java
mkdir src\main\resources
mkdir src\test\java
mkdir src\test\resources
echo ^<?xml version="1.0" encoding="UTF-8"?^> >> pom.xml
echo ^<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 	xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd"^> >> pom.xml
echo   	^<modelVersion^>4.0.0^</modelVersion^> >> pom.xml
echo   	^<groupId^>^</groupId^> >> pom.xml
echo   	^<artifactId^>^</artifactId^> >> pom.xml
echo   	^<packaging^>^</packaging^> >> pom.xml
echo   	^<version^>1.0-SNAPSHOT^</version^> >> pom.xml
echo   	^<name^>^</name^> >> pom.xml
echo ^</project^> >> pom.xml