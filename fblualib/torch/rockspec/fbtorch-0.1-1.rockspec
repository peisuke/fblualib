--
--  Copyright (c) 2014, Facebook, Inc.
--  All rights reserved.
--
--  This source code is licensed under the BSD-style license found in the
--  LICENSE file in the root directory of this source tree. An additional grant
--  of patent rights can be found in the PATENTS file in the same directory.
--

package = 'fbtorch'
version = '0.1-1'
source = {
    url = 'https://github.com/facebook/fblualib',
}
description = {
    summary = 'FB Basic Lua Utilities',
    detailed = [[
      XXX
    ]],
    homepage = 'https://github.com/facebook/fblualib',
    license = 'BSD',
}
supported_platforms = {
    'unix',
}
source = {
    url = 'https://github.com/facebook/fblualib',
    dir = 'fblualib/torch',
}
build = {
    type = 'command',
    build_command = [[
        cmake -E make_directory build &&
        cd build &&
        cmake -DROCKS_PREFIX=$(PREFIX) \
              -DROCKS_LUADIR=$(LUADIR) \
              -DROCKS_LIBDIR=$(LIBDIR) \
              -DLUA_INCDIR="$(LUA_INCDIR)" \
              .. &&
        $(MAKE)
    ]],
    install_command = [[
        cd build && $(MAKE) install
    ]],
}
