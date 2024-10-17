QT       += core gui opengl

TARGET = myViewer
TEMPLATE = subdirs
SUBDIRS += trimesh2 viewer
CONFIG += ordered debug

copydata.commands = $(COPY_DIR) $$PWD/viewer/models $$OUT_PWD/viewer && $(COPY_DIR) $$PWD/viewer/textures $$OUT_PWD/viewer && $(COPY_DIR) $$PWD/viewer/shaders $$OUT_PWD/viewer
first.depends = $(first) copydata
export(first.depends)
export(copydata.commands)
QMAKE_EXTRA_TARGETS += first copydata
