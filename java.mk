ifeq ($(OS),Windows_NT)
  JAVAC = /c/Program\ Files/Java/jdk-9/bin/javac
  JAVA = /c/Program\ Files/Java/jdk-9/bin/java
else
  JAVAC = javac
  JAVA = java
endif

CP = -cp
CLASSPATHS = . ../../00/java/junit-4.12.jar ../../00/java/hamcrest-core-1.3.jar

empty :=
space := $(empty) $(empty)
CLASSPATH = $(subst $(space),:,$(CLASSPATHS))

%.class: %.java
	$(JAVAC) $(CP) $(CLASSPATH) $^
