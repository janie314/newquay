require "thor"

class App < Thor
  package_name "LspMgr"

  def self.exit_on_failure?
    true
  end

  desc "install [LSP_NAME]", "install an lsp"
  def install(name)
    puts name
  end
end

App.start(ARGV)
