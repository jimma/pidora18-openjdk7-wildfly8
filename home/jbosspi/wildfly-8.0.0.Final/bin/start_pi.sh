export WFLY_HOME=/home/jbosspi/wildfly-8.0.0.Final
#export IP_ADDRESS=
#export NODE_NAME=node01

clear

echo 'WildFly Home is: ' 
echo $WFLY_HOME

#echo 'IP address is: '
#echo $IP_ADDRESS

#echo 'node name is: '
#echo $NODE_NAME

$WFLY_HOME/bin/standalone.sh -c standalone.xml  -b 0.0.0.0
#-bmanagement=$IP_ADDRESS 
#-Djboss.node.name=NODE_NAME
