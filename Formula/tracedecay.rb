class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.71.tar.gz"
  sha256 "06c57366b8e72bffcc55a7936305426cb611a4cbc13d7bb7e50e06021e74adcd"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.71"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "21280c3a327fb245123cf9e995e108f38c5fc8cb255ea8875abb662a9d5ec98d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a99dcf77142fb9520ee6a8760e32a09ebc645b8056c08abb7ed458a01dae3249"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
