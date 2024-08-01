#set env vars
set -o allexport; source .env; set +o allexport;

hashed_password=$(echo -n "$ADMIN_PASSWORD" | sha256sum | awk '{print $1}')

sed -i "s~PASSWORD_TO_CHANGE~$hashed_password~g" ./my-config.yml

chmod +x ./scripts/generate-hash.sh