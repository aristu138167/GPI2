git clone https://github.com/k-tamura/easybuggy.git
cd sakai
mvn compile
cd..
pmd check -d easybuggy -R rulesets/java/quickstart.xml -f text
