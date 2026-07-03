class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.24.tar.gz"
  sha256 "6cad93cacac030f528903611b1044f20de7f6ac6cc67e8ac9860bc54f6b247f8"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.24"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "49c359efa56861ab5b26d73d142ea1fcb8cfde39a0ad149477c0ae6d71d150b1"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a769480cf1022d3ee80406681df0f55a7c1294475cd20916bfca8aef5e0137f5"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
