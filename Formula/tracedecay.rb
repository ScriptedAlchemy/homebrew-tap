class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.72.tar.gz"
  sha256 "567797f122a9af53fcbb0fa872e639b411e9ff2a0100d39703c32972d51da2bf"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.72"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "cff2080e5c88dc202247ad6b8d26b45535eb318506b481eb63ed1ecb9d5d2e7b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a2db1708f7e790071ba5875899feb6cac040fe865b996de590ac5a4a74e988a2"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
