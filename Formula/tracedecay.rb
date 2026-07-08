class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.39.tar.gz"
  sha256 "c70eb734b7b780f2457ecfd5ed26941d9d7ddf25a31f92b6444b46ff1f35ad1b"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.39"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "52213fe4eef29d099f424d7ef4b91c80fdffbfa98b17c0395212e14f5415a810"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e73a279e562ebb6c60bb40a2aeea9250bbd68e89ca2f368269ad7946fbf6058f"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
