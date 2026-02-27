#!/usr/bin/env bash

session_name=$(basename "$0")

active=$(tmux list-sessions | grep "$session_name")

if [ ! -z "$active" ]; then
  tmux a -t "$session_name"
  exit 0
fi

