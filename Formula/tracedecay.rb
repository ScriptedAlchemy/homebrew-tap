class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.38.tar.gz"
  sha256 "4e958ec2a93f4a40148e9ab9af7a58f78d4bf8e9c0c4c3ad6e439be2dcb21e9c"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.38"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "197c60c2ae402682384aeb0b88b36ea8633bd55358128f742ba45149438a3d28"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3cef8c0e10c114397ec19fef3f29f75481abc23a0bcc92c7c0474c8e8414a9e9"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
