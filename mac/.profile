export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/Users/tommy/dev/tools/apache-maven-3.0.4/bin
export PATH=/Users/tommy/dev/lang/scala-2.10.3/bin:$PATH
export PATH=/Users/tommy/dev/lang/groovy-2.3.4/bin:$PATH
export PATH=/Users/tommy/dev/tools/sbt/bin:$PATH
export PATH=/Users/tommy/dev/tools/play-2.0.4:$PATH
export PATH=/Users/tommy/dev/tools/grails-2.4.2/bin:$PATH
export PATH=/Users/tommy/dev/tools/gradle-2.0/bin:$PATH
export PATH=/Users/tommy/dev/lang/clojure-1.5.1:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/Users/tommy/dev/servers/mongodb-2.4.4/bin:$PATH

#export JAVA_HOME=/usr/libexec/java_home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0.jdk/Contents/Home/
export JBOSS_HOME=/Users/tommy/dev/servers/jboss-as-7.1.1.Final/
export RBENV_ROOT=/usr/local/var/rbenv
export PATH=$RBENV_ROOT:$PATH
export MAVEN_OPTS=-Xmx1024m

alias ll='ls -al'

alias mi='mvn clean install'
alias mist='mvn clean install -DskipTests=true'
alias fit='git'
alias gut='git'
alias got='git'
alias pull='git stash -u && git pull --rebase && git stash pop'

eval "$(rbenv init -)"

source ~/.git-prompt.sh
source ~/.git_prompt
