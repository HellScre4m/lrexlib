dependencies = {
  "lua >= 5.1",
}
description = {
  summary = "Regular expression library binding (PCRE2 flavour).",
  license = "MIT/X11",
  homepage = "http://github.com/rrthomas/lrexlib",
  detailed = "Lrexlib is a regular expression library for Lua 5.1 and 5.2, which\
provides bindings for several regular expression libraries.\
This rock provides the PCRE bindings.",
}
source = {
  url = "git://github.com/rrthomas/lrexlib.git",
}
build = {
  modules = {
    rex_pcre = {
      defines = {
        "VERSION=\"2.8.0.1\"",
        "LUA_COMPAT_5_2",
      },
      incdirs = {
        "locate libpcre|grep lib/lib",
      },
      libraries = {
        "pcre2-8",
      },
      sources = {
        "src/common.c",
        "src/pcre/lpcre2.c",
        "src/pcre/lpcre2_f.c",
      },
      libdirs = {
        "locate libpcre|grep lib/lib",
      },
    },
  },
  type = "builtin",
}
external_dependencies = {
  PCRE2 = {
    header = "pcre2.h",
    library = "pcre2-8",
  },
}
package = "Lrexlib-PCRE2"
version = "2.8.0-1"
