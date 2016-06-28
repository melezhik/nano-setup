tabsize=$(config tabsize)
user=$(config user)

if (( $tabsize > 0 )); then
  cat << EOF > /tmp/.nanorc && echo rc file generated from template
set tabstospaces
set tabsize $tabsize
EOF
else
  echo bad tabsize: $tabsize
  echo 'should be int, > 0'
  exit 1
fi

chmod a+r /tmp/.nanorc || exit 1

if test -z $user; then

  mv /tmp/.nanorc /root/ && echo rc file updated for user root
  
else

  su --shell `which bash` --login -c "cp /tmp/.nanorc ~/" $user && echo rc file updated for user $USER

fi
