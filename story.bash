tabsize=$(config tabsize)

if (( $tabsize > 0 )); then
  cat << EOF > ~/.nanorc && echo OK
set tabstospaces
set tabsize $tabsize
EOF
else
  echo bad tabsize: $tabsize
  echo 'should be int, > 0'
  exit 1
fi
