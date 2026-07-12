class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.64.tar.gz"
  sha256 "f1b3a7324dd95d565ac60a2b54d2e4e0618a312ce6cc91944ea0e37fca46c071"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.64"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "6d642695fe1224bd246d2b56b547389f42d4c353f5b781d516fc16599095d637"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "76fb91a64b978f092d365474943271156eb489fa6363ba2f680d9ea6818f9de1"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
