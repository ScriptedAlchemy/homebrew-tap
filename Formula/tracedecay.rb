class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.48.tar.gz"
  sha256 "d12472a1d156333ed46b37edb1607fa2345b91e580d9af702ce2222d1a1bf33f"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.48"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "39d92f0c75f58762af9e77a51feb5d01aa2c266db8bf117e2adfd2bead9cca24"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9cdbf848c78efffad8def408a886e078213cc2ebb5dedb3089b055caad4ce96f"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
