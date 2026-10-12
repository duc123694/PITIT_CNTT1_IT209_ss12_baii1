#!/usr/bin/env sh
set -e

if command -v gradle >/dev/null 2>&1; then
  exec gradle "$@"
fi

echo "Gradle is not installed. In GitHub Actions, run gradle/actions/setup-gradle before ./gradlew." >&2
exit 1
