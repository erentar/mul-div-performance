#!/bin/sh
jq ".results | .[] | [.command] + .times | @csv" < out.json | tr -d '"\\' | datamash transpose --field-separator=','
