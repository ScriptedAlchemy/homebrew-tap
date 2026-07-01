class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.19.tar.gz"
  sha256 "eae3de74cc95acc39377a0295fe93d504e923c61539da13e3ce650b16a5a6961"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.19"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "3775fd774ac56b35b60bf97c754fa19176c7d6a861a1cd4e2dceb96032b61536"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f9094c7726cdb0cbc38a4f09e093abeb1bbdb605a2c42959bce1b5e0fe1121f0"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
