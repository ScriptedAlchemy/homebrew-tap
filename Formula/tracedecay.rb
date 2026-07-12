class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.60.tar.gz"
  sha256 "e3363e2da265b2072e3a1058b81440dad612b79f7203c9c2bcadd70f1a7b94cf"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.60"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "d4c2df7139fdda53fbb950f06ab77796ae19cda4efb2e6cb23b7e3294734439b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7ae2cd54c0ba767900b525cabb09634e84df14af7d004029d3a64a1403e4f02c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
