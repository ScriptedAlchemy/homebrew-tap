class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.57.tar.gz"
  sha256 "1d7c767cc0c373148a92a5b6301d035c794f70be9ac6d3d9e45920d21bcfb4cf"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.57"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "2806979e6110cac732afd667ad6219dacc84c35a5a835363d2d4857c4c79c67a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "edf01ad94c74f48967f95d9d63079a24a9183e34b9b514b4838af7ae76f8f01b"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
