#!/bin/bash

DIR="$(cd "$(dirname "$0")" && pwd)"

bash "$DIR/handle_logos.sh"
bash "$DIR/handle_readme.sh"