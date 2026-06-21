class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.6.tar.gz"
  sha256 "66b711ab37fc9189ebd66ab90de7fb9406890a537473dfe6785d81472d9d78d1"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.6"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "8c8a15cffc04407c728e2f86e5c2d4a6b8f39352dfa330f62bd6fa460d7bdbf9"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6a7c5865c5fea7ca97f9feb47328b3f1a671228d3a02bac6db2f1d12ea763688"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
