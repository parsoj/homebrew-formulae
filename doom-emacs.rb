class Foo < Formula
  desc "Installer for Doom Emacs"
  homepage "https://github.com/hlissner/doom-emacs"

  depends_on "emacs-plus --with-no-titlebar"

  def install
    system "git clone -b develop https://github.com/hlissner/doom-emacs.git ~/.emacs.d"
    system "~/.emacs.d/bin/doom quickstart"
  end

end
