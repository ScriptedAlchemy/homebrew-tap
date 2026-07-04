class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.27.tar.gz"
  sha256 "141c7d258c14ff4d13b9a8e4d962037a4e102d358e6393232a1865aa8fc9afd5"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.27"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "84a4363c217948ce5cd28d4f5b3d9c57cf04547a09f53681491f7e5dabf9dd68"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "2238e27a176007669f16fdb0a9a854e6461bc6f54ed0712e02ee884f140b8d36"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
