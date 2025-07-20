export ANDROID_SDK_ROOT="~/Library/Android/sdk"
export NDK_VERSION="r24-linux"

# curl -s "https://dl.google.com/android/repository/android-ndk-${NDK_VERSION}.zip" -o ndk.zip
# unzip -q -o ndk.zip -d .ndk
# export ANDROID_NDK_ROOT="$PWD/.ndk/$(ls .ndk)"
# 위에거 말고 NDK 를 Mac 용으로 받아야 한다.
export ANDROID_NDK_ROOT="/Users/sglim/NDK"

git submodule update --remote src/gmp

# https://github.com/arthenica/ffmpeg-kit/blob/35b99c02f8f5cf67abbcfaa4ebcbb4066c5b859e/.github/workflows/periodic-builds-android.yml
./android.sh --full --enable-gpl --disable-lib-srt --disable-arm-v7a
# .github 에서 가져온 코드
# ./android.sh -d --full --enable-gpl --enable-android-media-codec --enable-android-zlib --disable-arm-v7a
