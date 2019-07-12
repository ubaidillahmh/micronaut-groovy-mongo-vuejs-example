@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      http://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  micronaut-vuejs startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and MICRONAUT_VUEJS_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\micronaut-vuejs-0.1.jar;%APP_HOME%\lib\micronaut-bom-1.0.0.jar;%APP_HOME%\lib\micronaut-mongo-gorm-1.0.0.jar;%APP_HOME%\lib\micronaut-mongo-reactive-1.0.0.jar;%APP_HOME%\lib\micronaut-runtime-groovy-1.0.0.jar;%APP_HOME%\lib\micronaut-hibernate-validator-1.0.0.jar;%APP_HOME%\lib\micronaut-validation-1.0.0.jar;%APP_HOME%\lib\micronaut-http-client-1.0.0.jar;%APP_HOME%\lib\micronaut-http-server-netty-1.0.0.jar;%APP_HOME%\lib\logback-classic-1.2.3.jar;%APP_HOME%\lib\micronaut-http-netty-1.0.0.jar;%APP_HOME%\lib\micronaut-http-server-1.0.0.jar;%APP_HOME%\lib\micronaut-websocket-1.0.0.jar;%APP_HOME%\lib\micronaut-gorm-common-1.0.0.jar;%APP_HOME%\lib\micronaut-spring-1.0.0.jar;%APP_HOME%\lib\micronaut-runtime-1.0.0.jar;%APP_HOME%\lib\micronaut-aop-1.0.0.jar;%APP_HOME%\lib\micronaut-router-1.0.0.jar;%APP_HOME%\lib\micronaut-http-1.0.0.jar;%APP_HOME%\lib\micronaut-inject-1.0.0.jar;%APP_HOME%\lib\micronaut-buffer-netty-1.0.0.jar;%APP_HOME%\lib\micronaut-core-1.0.0.jar;%APP_HOME%\lib\grails-datastore-gorm-mongodb-6.1.4.RELEASE.jar;%APP_HOME%\lib\grails-datastore-gorm-bson-6.1.4.RELEASE.jar;%APP_HOME%\lib\grails-datastore-gorm-6.1.8.RELEASE.jar;%APP_HOME%\lib\grails-datastore-gorm-validation-6.1.8.RELEASE.jar;%APP_HOME%\lib\grails-datastore-core-6.1.8.RELEASE.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.22.jar;%APP_HOME%\lib\slf4j-api-1.7.25.jar;%APP_HOME%\lib\mongodb-driver-reactivestreams-1.8.0.jar;%APP_HOME%\lib\mongodb-driver-async-3.8.0.jar;%APP_HOME%\lib\groovy-2.5.1.jar;%APP_HOME%\lib\hibernate-validator-6.0.13.Final.jar;%APP_HOME%\lib\validation-api-2.0.1.Final.jar;%APP_HOME%\lib\rxjava-2.2.2.jar;%APP_HOME%\lib\netty-handler-proxy-4.1.30.Final.jar;%APP_HOME%\lib\mongo-java-driver-3.8.0.jar;%APP_HOME%\lib\logback-core-1.2.3.jar;%APP_HOME%\lib\jackson-datatype-jdk8-2.9.7.jar;%APP_HOME%\lib\jackson-datatype-jsr310-2.9.7.jar;%APP_HOME%\lib\jackson-databind-2.9.7.jar;%APP_HOME%\lib\reactive-streams-1.0.1.jar;%APP_HOME%\lib\mongodb-driver-3.5.0.jar;%APP_HOME%\lib\mongodb-driver-core-3.8.0.jar;%APP_HOME%\lib\bson-3.8.0.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\snakeyaml-1.23.jar;%APP_HOME%\lib\javax.annotation-api-1.3.2.jar;%APP_HOME%\lib\netty-codec-http-4.1.30.Final.jar;%APP_HOME%\lib\netty-handler-4.1.30.Final.jar;%APP_HOME%\lib\netty-codec-socks-4.1.30.Final.jar;%APP_HOME%\lib\netty-codec-4.1.30.Final.jar;%APP_HOME%\lib\netty-transport-4.1.30.Final.jar;%APP_HOME%\lib\javax.el-3.0.1-b08.jar;%APP_HOME%\lib\spring-tx-5.0.10.RELEASE.jar;%APP_HOME%\lib\spring-context-5.0.10.RELEASE.jar;%APP_HOME%\lib\spring-aop-5.0.10.RELEASE.jar;%APP_HOME%\lib\spring-beans-5.0.10.RELEASE.jar;%APP_HOME%\lib\spring-expression-5.0.10.RELEASE.jar;%APP_HOME%\lib\spring-core-5.0.10.RELEASE.jar;%APP_HOME%\lib\jackson-annotations-2.9.7.jar;%APP_HOME%\lib\jackson-core-2.9.7.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\netty-buffer-4.1.30.Final.jar;%APP_HOME%\lib\netty-resolver-4.1.30.Final.jar;%APP_HOME%\lib\spring-jcl-5.0.10.RELEASE.jar;%APP_HOME%\lib\netty-common-4.1.30.Final.jar;%APP_HOME%\lib\jboss-logging-3.3.2.Final.jar;%APP_HOME%\lib\classmate-1.3.4.jar;%APP_HOME%\lib\commons-validator-1.5.1.jar;%APP_HOME%\lib\javassist-3.21.0-GA.jar;%APP_HOME%\lib\concurrentlinkedhashmap-lru-1.4.2.jar;%APP_HOME%\lib\hibernate-jpa-2.1-api-1.0.0.Final.jar;%APP_HOME%\lib\jta-1.1.jar;%APP_HOME%\lib\commons-collections-3.2.2.jar

@rem Execute micronaut-vuejs
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %MICRONAUT_VUEJS_OPTS%  -classpath "%CLASSPATH%" micronaut.vuejs.Application %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable MICRONAUT_VUEJS_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%MICRONAUT_VUEJS_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
