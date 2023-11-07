ALIAS_PATH="$(realpath ~/.bash_aliases.d)"
FILES=$(fd -t f . "$ALIAS_PATH")

for FILE in $FILES; do
  source $FILE
done
