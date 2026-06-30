class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.17.tar.gz"
  sha256 "d74fcdf164a8e033d3a6285ac105c8eec0bb75a7f0ef3a3bee0fc7fe1c0fa168"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.17"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "01bbf3bd51a8656fee966a9e09e3611cacc88d65cb30e8e47aacca81a6217876"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1ecdcc674ad400bd0907c5313f3a0fd4f6108d926eb4a7f666df71341cb2b53d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
