module Rust
  def self.l
    @l ||= SemanticLogger["rust"]
  end

  def install
    l.info "checking if Rust installed..."
    return false unless (command? ("cargo") && command? ("rustup"))
    l.info "installing rust-src..."
    return false unless (system "rustup", "component", "add", "rust-src")
    l.info "installing rust-analyzer..."
    return false unless (system "rustup", "component", "add", "rust-analyzer")

  end
end
