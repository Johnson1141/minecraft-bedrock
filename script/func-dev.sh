#!/bin/sh

# if [ ! -f "$DATA_PATH/ops.json" ]; then
#   cp $DEFAULT_CONFIG_PATH/ops.json $DATA_PATH/ops.json
# fi

# if [ ! -f "$DATA_PATH/permissions.json" ]; then
#   cp $DEFAULT_CONFIG_PATH/permissions.json $DATA_PATH/permissions.json
# fi

# if [ ! -f "$DATA_PATH/whitelist.json" ]; then
#   cp $DEFAULT_CONFIG_PATH/whitelist.json $DATA_PATH/whitelist.json
# fi

# if [ ! -f "$DATA_PATH/server.properties" ]; then
#   cp $DEFAULT_CONFIG_PATH/server.properties $DATA_PATH/server.properties
# fi

# if [ ! -d "$DATA_PATH/worlds" ]; then
#   mkdir -p $DATA_PATH/worlds
# fi

# ln -s $DATA_PATH/ops.json $SERVER_PATH/ops.json
# ln -s $DATA_PATH/permissions.json $SERVER_PATH/permissions.json
# ln -s $DATA_PATH/whitelist.json $SERVER_PATH/whitelist.json
# ln -s $DATA_PATH/server.properties $SERVER_PATH/server.properties
# ln -s $DATA_PATH/worlds $SERVER_PATH/worlds

# ln -s $SERVER_PATH/behavior_packs $DATA_PATH/extra/$CORE_VERSION/behavior_packs
# ln -s $SERVER_PATH/resource_packs $DATA_PATH/extra/$CORE_VERSION/resource_packs

mv $SERVER_PATH $DATA_PATH
ln -s $DATA_PATH/server $SERVER_PATH
LD_LIBRARY_PATH=$SERVER_PATH
exec $SERVER_PATH/bedrock_server
