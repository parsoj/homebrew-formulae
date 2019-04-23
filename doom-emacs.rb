class DoomEmacs < Formula
  desc "Installer for Doom Emacs"
  homepage "https://github.com/hlissner/doom-emacs"

  url "file:///dev/null"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  version "1.0"

  depends_on "d12frosted/emacs-plus/emacs-plus" => ["with-no-titlebar", "without-spacemacs-icon", "with-no-frame-refocus", "with-modern-icon"]

  def install
    system "git clone -b develop https://github.com/hlissner/doom-emacs.git ~/.emacs.d"
    system "~/.emacs.d/bin/doom quickstart"
  end

end
