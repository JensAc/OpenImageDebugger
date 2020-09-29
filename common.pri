# BUILD_MODE variable can be either release or debug
isEmpty(BUILD_MODE) {
  BUILD_MODE = release
}

# Instalation instructions
isEmpty(PREFIX) {
  PREFIX = /usr/local
}

QMAKE_CXXFLAGS += \
  -fPIC \
  -fvisibility=hidden \
  -pthread

CONFIG += $$BUILD_MODE

# Prevent strip from producing spurious error messages
QMAKE_STRIP = echo "strip disabled: "

QT_CONFIG -= no-pkg-config

CONFIG += \
  link_pkgconfig \
  warn_on \
  c++11 \
  no_keywords \

QT += \
  network
