class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.46.tar.gz"
  sha256 "1c5e30139d86b55763219301b426c48ec8978190a23bf80b61f12b13ebf3d5cd"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.46"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "a73edfd7f8ee433a6337a2fca9581de20fe7b0db4544ec7ce254ff1f6158a389"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1a05e4b3bf555f06aca4ea77b1d8932fd52009b2597e91e7c83a9e79b8d48db1"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
