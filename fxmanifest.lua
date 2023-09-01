fx_version "cerulean"
game "gta5"
author 'brandstation'
description 'police report script made by Brandstation'
version '1.0.1'
lua54 "yes"

escrow_ignore {
  'config.lua',
}

server_scripts {
    "server/main.lua",
    "config.lua",
}

client_scripts {
    "client/main.lua",
    "client/nui.lua",
    "config.lua",
}

files {
  "html/index.html",
  "html/*.js",
  "html/*.css",

  'html/assets/css/materialize.css',
  'html/assets/css/materialize.min.css',
  'html/assets/js/materialize.js',
  'html/assets/js/materialize.min.js',
}

ui_page "html/index.html"