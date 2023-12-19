require_relative "../helpers"
require "semantic_logger"

module Rust
  def self.l
    @l ||= SemanticLogger["rust"]
  end

  def self.dependencies
    l.info "installing rust toolchain..."
    system "curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh"
  end

  def self.install
    l.info "checking if Rust installed and installing if not..."
    dependencies unless (command? "cargo") && (command? "rustup")
    l.info "installing rust-src..."
    return false unless system "rustup", "component", "add", "rust-src"
    l.info "installing rust-analyzer..."
    false unless system "rustup", "component", "add", "rust-analyzer"
  end
end
