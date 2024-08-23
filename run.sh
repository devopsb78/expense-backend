source /data/secrets
if [ -z "$DB_HOST" ]; then
  echo Environment Variable DB_HOST missing
  exit 1
fi

if [ -z "$NEW_RELIC_APP_NAME" ]; then
  echo Environment Variable NEW_RELIC_APP_NAME missing
  exit 1
fi

if [ -z "$NEW_RELIC_LICENSE_KEY" ]; then
  echo Environment Variable NEW_RELIC_LICENSE_KEY missing
  exit 1

node -r newrelic /app/index.js
