class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.10.tar.gz"
  sha256 "10bfb26c9a8f842a6725b5aecb06f20bb07085763136da91d8222ef1ff6a1be6"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.10"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "ec4f17fb21206890814da5322a73c7ad7506d53840a484c0b712c57bd77f8b4d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "feb08e3f37c28cfb0e961b94e29c7c645938e7d34e1a615f38207a3307c20771"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
