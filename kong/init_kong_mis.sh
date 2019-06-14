curl -X POST http://127.0.0.1:8001/services \
  --data name=admin-api \
  --data host=localhost \
  --data port=8001

curl -X POST http://127.0.0.1:8001/services/admin-api/routes \
  --data paths[]=/admin-api

curl -X POST http://127.0.0.1:8001/services/admin-api/plugins --data "name=key-auth"

curl -d "username=adminapi&custom_id=1" http://127.0.0.1:8001/consumers/

curl -X POST http://127.0.0.1:8001/consumers/adminapi/key-auth -d 'key='$TOKEN_SECRET


