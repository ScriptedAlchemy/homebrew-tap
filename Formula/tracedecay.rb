class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.56.tar.gz"
  sha256 "ea7be2491e967a0484514969bb7b7eb2c841993c2fad8e39ce27a98733afbd0c"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.56"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "88c86ddfee378242be4238e9ada908d5f2de9c780d1ca428ea1f3109c60fe0c6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "af954eb4de2c7ba0e5154d85096e45485df4ff45497c6e26ad78050f75771714"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
