class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.50.tar.gz"
  sha256 "a2165404775de668d127fb833db1ffdc2d4c6e54ddd95cc019a79fed3060aa64"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.50"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "13f6e3b6b4b4f18344da6852d16989a18b708a03db8f2d60cece97c843034b27"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f8d3894aad7ecc02574c1b4cc903d05681d12d6ffdd6e4923f62e661e92692a1"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
