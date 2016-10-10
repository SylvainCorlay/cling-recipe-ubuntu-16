cp -r $SRC_DIR/bin/* $PREFIX/bin/
cp -r $SRC_DIR/include/* $PREFIX/include/
cp -r $SRC_DIR/lib/* $PREFIX/lib/
cp -r $SRC_DIR/libexec/* $PREFIX/lib/
cp -r $SRC_DIR/share/* $PREFIX/share/
cd $SRC_DIR/share/cling/Jupyter/kernel/
python $SRC_DIR/share/cling/Jupyter/kernel/setup.py install
jupyter kernelspec install $PREFIX/share/cling/Jupyter/kernel/cling-c++11 --sys-prefix
jupyter kernelspec install $PREFIX/share/cling/Jupyter/kernel/cling-c++14 --sys-prefix
jupyter kernelspec install $PREFIX/share/cling/Jupyter/kernel/cling-c++17 --sys-prefix
