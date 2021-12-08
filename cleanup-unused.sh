#!/bin/bash
echo Start clean .thumbnails
rm -rf ~/.thumbnails/*
echo Finish clean .thumbnails

echo Start clean trash
rm -rf ~/.local/share/Trash/*
echo Finish clean trash
