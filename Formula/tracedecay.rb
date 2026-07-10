class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.51.tar.gz"
  sha256 "697298ad43b2ab694fa2bb2b4c599418d01a0dce2f7c0f930f46d6fd5e1c5e48"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.51"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "8ac7713a03ad7c0ae980313211b94a37af2ed274164e16dcb6c6525e22627cf5"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "502996afc8b981aa7bbcd5a835ebe1b523fb67da098a9e98dfd8ba09c429130d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
