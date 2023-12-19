require "thor"
require_relative "../lib/lsp_servers/rust"
require "semantic_logger"

SemanticLogger.add_appender(io: $stdout, formatter: :color)

class App < Thor
  package_name "LspMgr"

  def self.exit_on_failure?
    true
  end

  desc "install [LSP_NAME]", "install an lsp"
  def install(name)
    if name =~ /rust/i || name =~ /cargo/i
      Rust.install
    else
      puts "well i don't know what #{name} is..."
    end
  end
end

App.start(ARGV)
