if [ ! -h ~/.emacs ]; then
  source "${0:h}"/external/install.sh
fi

if [ ! -h ~/.emacs-profiles.el ]; then
  ln -s "${0:h}"/emacs-profiles.el "$HOME"/.emacs-profiles.el
fi
