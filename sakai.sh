git clone https://github.com/sakaiproject/sakai.git
cd sakai
sed -i '/<id>all<\/id>/,/<id>experimental<\/id>/ { /<module>/ { /<module>kernel<\/module>/!d }; }' pom.xml
sed -i '/<id>experimental<\/id>/,/<id>pack<\/id>/ { /<module>/ { /<module>kernel<\/module>/!d }; }' pom.xml
mvn install
mvn package
pmd check -d kernel -R rulesets/java/quickstart.xml -f text
