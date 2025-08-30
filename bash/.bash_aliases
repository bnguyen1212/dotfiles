# Directory bookmarks file
BOOKMARKS_FILE=~/.dir_bookmarks

# Save a bookmark
mark() {
  echo "$1:$(pwd)" >>"$BOOKMARKS_FILE"
}

# Jump to a bookmark
goto() {
  target=$(grep "^$1:" "$BOOKMARKS_FILE" | tail -n 1 | cut -d: -f2-)
  if [ -n "$target" ]; then
    cd "$target" || echo "Directory not found"
  else
    echo "No bookmark named '$1'"
  fi
}

# List bookmarks
marks() {
  cat "$BOOKMARKS_FILE"
}
