local util = require 'lspconfig.util'

local root_files = {
  '.git',
}

return {
  default_config = {
    cmd = { 'node', '/home/kuka/code/vscode-spell-checker/packages/_server/dist/main.cjs', '--stdio' },
    filetypes = { '*' },
    root_dir = function(fname)
      return util.root_pattern(unpack(root_files))(fname)
    end,
    single_file_support = true,
    settings = {
      cSpell = {
        logLevel = 3,
        logFile = "/tmp/cspell.log",
        analysis = {
          autoSearchPaths = true,
          useLibraryCodeForTypes = true,
          diagnosticMode = 'openFilesOnly',
        },
      },
    },
  },
  commands = {
  },
  docs = {
    description = [[]],
  },
}
