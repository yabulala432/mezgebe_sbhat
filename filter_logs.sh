# This script filters out unwanted log messages.
# Adjust the grep command to match the logs you want to exclude.

while IFS= read -r line; do
  # Exclude lines containing specific keywords
  if ! echo "$line" | grep -q -e 'gralloc4' -e 'MediaPlayerNative' -e 'MediaPlayer' -e 'MediaPlayer-JNI' -e 'ViewRootImpl' -e 'WindowOnBackDispatcher'; then
    echo "$line"
  fi
done