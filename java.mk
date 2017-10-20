ifeq ($(OS),Windows_NT)
  ifneq ($(wildcard /c/Program\ Files/Java/jdk1.8.0_144),)
    JAVAC = /c/Program\ Files/Java/jdk1.8.0_144/bin/javac
    JAVA = /c/Program\ Files/Java/jdk1.8.0_144/bin/java
  else
  ifneq ($(wildccard /c/Program\ Files/Java/jdk1.8.0_151),)
    JAVAC = /c/Program\ Files/Java/jdk1.8.0_151/bin/javac
    JAVA = /c/Program\ Files/Java/jdk1.8.0_151/bin/java
  else
    ifneq ($(wildcard /c/Program\ Files/Java/jdk-9),)
      JAVAC = /c/Program\ Files/Java/jdk-9/bin/javac
      JAVA = /c/Program\ Files/Java/jdk-9/bin/java
    else
      ## remove the # symbols from the two lines below, and write in
      ## the path to javac and java on your system
      # JAVAC =
      # JAVA =
    endif
  endif
else
  JAVAC = javac
  JAVA = java
endif

CP = -cp
CLASSPATHS = . ../../00/java ../../00/java/junit-4.12.jar ../../00/java/hamcrest-core-1.3.jar

empty :=
space := $(empty) $(empty)
CLASSPATH = $(subst $(space),:,$(CLASSPATHS))

%.class: %.java
	$(JAVAC) $(CP) $(CLASSPATH) $^
