#!/bin/bash
#
set -eu -o pipefail

# Windows
# #
# win-x86
./setup.sh libdeflate-1.7-windows-i686-bin.zip \
	https://github.com/ebiggers/libdeflate/releases/download/v1.7/libdeflate-1.7-windows-i686-bin.zip \
	"8b3f61ac9bdffa061fd277b5e2c8e7bd4175719e2e903b8aca437efa4fa2de09" \
	"win-x86"
# win-x64
./setup.sh libdeflate-1.7-windows-x86_64-bin.zip \
	https://github.com/ebiggers/libdeflate/releases/download/v1.7/libdeflate-1.7-windows-x86_64-bin.zip \
	"35ed1d516968623f354ce099c2e71d0a849571c18813ba6a3cd2ceced8d685eb" \
	"win-x64"

# Mac
# #
# osx.11.0-arm64
./setup.sh libdeflate-1.7.arm64_big_sur.bottle.tar.gz \
	https://bintray.com/homebrew/bottles/download_file?file_path=libdeflate-1.7.arm64_big_sur.bottle.tar.gz \
	"df5771ac751913a0eae915367ba0ace049ed47d9f9862197b75bbd96bced9507" \
	"osx.11.0-arm64"
# osx.11.0-x64
./setup.sh libdeflate-1.7.big_sur.bottle.tar.gz \
	https://bintray.com/homebrew/bottles/download_file?file_path=libdeflate-1.7.big_sur.bottle.tar.gz \
	"fbce754935620074120dd4cb0e24df65d371505c453b4ac95ee73bf6fa098eba" \
	"osx.11.0-x64"
# osx.10.13-x64
./setup.sh libdeflate-1.7.high_sierra.bottle.tar.gz \
	https://bintray.com/homebrew/bottles/download_file?file_path=libdeflate-1.7.high_sierra.bottle.tar.gz \
	"1c16f650b82c5e7b910b98249e635353d9beee3a3a0cd4f0c841b0d8d19e19c6" \
	"osx.10.13-x64"
# osx.10.14-x64
./setup.sh libdeflate-1.7.mojave.bottle.tar.gz \
	https://bintray.com/homebrew/bottles/download_file?file_path=libdeflate-1.7.mojave.bottle.tar.gz \
	"02fb406299f342554d4c236955b6c0cf0e917afb76ed7c8bfe622b03fd6a2b55" \
	"osx.10.14-x64"
# osx.10.15-x64
./setup.sh libdeflate-1.7.catalina.bottle.tar.gz \
	https://bintray.com/homebrew/bottles/download_file?file_path=libdeflate-1.7.catalina.bottle.tar.gz \
	"e270c74afc8fbd5171ba5b5e9cecd2c429e4934a6db9b0da1830b0a2a4298b8f" \
	"osx.10.15-x64"

# Linux
# #
# linux-x64
./setup.sh libdeflate-1.7.x86_64_linux.bottle.tar.gz \
	https://bintray.com/linuxbrew/bottles/download_file?file_path=libdeflate-1.7.x86_64_linux.bottle.tar.gz \
	"a95dd72a6636853ef9a343ffc5f0c268b871be19309b7b2f278ddff3ec70bc77" \
	"linux-x64"