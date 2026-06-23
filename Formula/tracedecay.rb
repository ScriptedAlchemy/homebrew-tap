class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.9.tar.gz"
  sha256 "a69b3a820530dd1ed3926fcecc491381ee4ce86f2d5b0870e902898f808daabd"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.9"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "f8fc44ea5e18a1e2071602d0e62abaeec97954e24506f37184b2b780d2f562e3"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "564f63ee6c5fe862cfa0da27d0992ef927955fc3c0eb397dd27d37405d6aaa20"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
