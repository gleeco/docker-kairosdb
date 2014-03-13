# http://[host]:[port]/api/v1/tagnames
curl -si -XGET localhost:8080/api/v1/metricnames
echo && sleep 1;
curl -si -XGET localhost:8080/api/v1/tagnames
echo && sleep 1;
curl -si -XGET localhost:8080/api/v1/tagvalues

