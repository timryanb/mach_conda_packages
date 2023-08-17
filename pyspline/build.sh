if [[ $(uname) == Darwin ]]; then
  cp ${SRC_DIR}/config/defaults/config.OSX_GFORTRAN.mk ${SRC_DIR}/config/config.mk;
elif [[ "$target_platform" == linux-* ]]; then
  cp ${SRC_DIR}/config/defaults/config.LINUX_GFORTRAN.mk ${SRC_DIR}/config/config.mk;
fi

make;
mv ${SRC_DIR}/lib/libspline.a ${PREFIX}/lib;

${PYTHON} -m pip install --no-deps --prefix=${PREFIX} . -vv;

