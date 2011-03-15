echo "=== FILES ==="
find . -type f -exec chmod 644 {} \; -print
echo "=== DIRECTORIES ==="
find . -type d -exec chmod 755 {} \; -print
