#!/bin/sh
chmod -R 777 /source
exec "$@"
chmod -R 777 /source
