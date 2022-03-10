host="fabmedical-557447.documents.azure.com"
username="fabmedical-557447"
password="4Fth8GO8ZBjlDKVZ1wAZHyirerCVaPknslhLAh8CPmpDxQ1VgTzKdCzZEQiBZCMv3dmsMplbEt8wvj9VY9gGNw=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
