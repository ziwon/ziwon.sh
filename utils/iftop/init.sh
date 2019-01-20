#!/usr/bin/env bash

sudo chown root:wheel /usr/local/Cellar/iftop/1.0pre4/sbin/iftop     
sudo chmod u+s /usr/local/Cellar/iftop/1.0pre4/sbin/iftop
ln -s /usr/local/Cellar/iftop/1.0pre4/sbin/iftop /usr/local/bin/iftop 