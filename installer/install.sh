function print_main_menu {
  echo "Select"
  echo "  1) Install"
  echo "  2) Uninstall"

  read n
  case $n in
    1)
      install;;
    2)
      uninstall;;
    *)
      echo "invalid option $REPLY"
      print_main_menu;;
  esac
}

function install {
  cp ./aliases.sh ~/.config/aliases/micro-frontend.sh
  cp ./tmuxinator.yml ~/.config/tmuxinator/micro-frontend.yml
}

function uninstall {
  rm -rf ~/.config/aliases/micro-frontend.sh  
  rm -rf ~/.config/tmuxinator/micro-frontend.yml
}

print_main_menu 
