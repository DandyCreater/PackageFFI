# cat > android/CMakeLists.txt << EOF
cmake_minimum_required(VERSION 3.4.1)  # for example

add_library( native_revolution

             # Sets the library as a shared library.
             SHARED

             # Provides a relative path to your source file(s).
             ../ios/Classes/native_revolution.cpp )
# EOF
