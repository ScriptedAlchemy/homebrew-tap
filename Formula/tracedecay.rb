class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.32.tar.gz"
  sha256 "b7848f88c56bae77f4de5d3b953fa964c516b418464237d932b7e5cb4ecda132"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.32"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "5854ab1e3dc7fca196dd60b4affc05b295d2332191d96d030adfa95eb85f62f1"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "2696a74a1a4ec2f88181d2a0e0cf5f6b121b79885bb330d2ac86b65d4043d752"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
