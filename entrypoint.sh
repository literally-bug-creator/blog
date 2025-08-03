#!/bin/sh

if [ ! -f "config.yaml" ] && [ ! -f "config.yml" ] && [ ! -f "config.toml" ]; then
    echo "WARNING: Configuration file not found!"
fi

HUGO_BASEURL=${HUGO_BASEURL:-"http://lib.bugme.tech"}
HUGO_BIND=${HUGO_BIND:-"0.0.0.0"}

EXTRA_FLAGS=""

if [ "${HUGO_BUILDDRAFTS}" = "true" ]; then
    EXTRA_FLAGS="$EXTRA_FLAGS --buildDrafts"
fi

if [ "${HUGO_BUILDFUTURE}" = "true" ]; then
    EXTRA_FLAGS="$EXTRA_FLAGS --buildFuture"
fi

if [ "${HUGO_WATCH}" = "true" ]; then
    EXTRA_FLAGS="$EXTRA_FLAGS --watch"
fi

if [ -n "${HUGO_THEME}" ]; then
    EXTRA_FLAGS="$EXTRA_FLAGS --theme=${HUGO_THEME}"
fi

echo "Starting Hugo server..."
echo "Base URL: $HUGO_BASEURL"
echo "Bind: $HUGO_BIND"
echo "Extra flags: $EXTRA_FLAGS"

exec hugo server \
    --bind="$HUGO_BIND" \
    --baseURL="$HUGO_BASEURL" \
    $EXTRA_FLAGS
