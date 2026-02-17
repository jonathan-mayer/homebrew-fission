class Fission < Formula
  desc "Fission CLI for Kubernetes serverless functions"
  homepage "https://fission.io"
  version "1.22.0"
  
  on_linux do
    url "https://github.com/fission/fission/releases/download/v1.22.0/fission-v1.22.0-linux-amd64"
    sha256 "1d6ca778dd3ef676572ed077650721fb9fbaecc3106c9152372dd36b9a730422" # to be filled by automation
  end

  def install
    bin.install "fission-#{version}-linux-amd64" => "fission"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fission version")
  end
end
