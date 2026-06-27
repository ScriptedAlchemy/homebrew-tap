class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.14.tar.gz"
  sha256 "d1fbc770f60b43b8cf870f9caa4a1a6ade7372b65444b534805ac134249955b1"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.14"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "6af5ccfd274231b952158f03a2ee35b18cea251cf1f96a6169fe8582da617abb"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6cbbcb8270bc2175f9de859311e223edc3f4f59c7e135f6577da2ec821ae2b2a"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
