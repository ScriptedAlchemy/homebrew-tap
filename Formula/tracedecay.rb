class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.74.tar.gz"
  sha256 "af63d2244eab77457c574a0e4b1d2df9d636b36bc721d63c1defe5e793cc348e"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.74"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "3b498e719ae81da538ede814469e9db3edd030f29414b2437bac858b8af78f5e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e0f7cba7383861ac059c41950bdcef0259ec595297804566fc4649f59dd6ff8d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
