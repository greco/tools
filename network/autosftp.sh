
HOST="HOST"
USER="USER"
PWD="PWD"
FILEPATH="FILENAME"

echo "Starting to sftp..."
echo "Connect to ${HOST} - USR/PWD - ${USER}/${PWD}"

lftp -u ${USER},${PWD} sftp://${HOST} <<EOF
get ${FILEPATH}
bye
EOF

echo "SFTP Done!"
