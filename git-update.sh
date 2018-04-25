#!/bin/bash
cd ~/Git && ls | xargs -P10 -I{} git -C {} pull 2>/dev/null

