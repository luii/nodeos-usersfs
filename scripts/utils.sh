NODE_DIR=`node -p "require('nodeos-nodejs')"` || exit $?

NPMi='BUILD_ONLY=1                \
      CC=$TARGET-gcc              \
      CXX=$TARGET-g++             \
      npm_config_prefix=$STEP_DIR \
      npm install                 \
        --production              \
        --quiet --no-spin         \
        --arch=$NODE_ARCH         \
        --nodedir=$NODE_DIR       \
        --jobs=$JOBS              '

INSTALL_NODEGIT='
       npm_config_prefix=$STEP_DIR \
       npm install                 \
        --quiet --no-spin          \
        --arch=$NODE_ARCH          \
        --nodedir=$NODE_DIR        \
        --jobs=$JOBS -g luii/nodeos-nodegit#installing-deps'