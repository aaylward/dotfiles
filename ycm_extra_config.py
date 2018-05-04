import os
import subprocess

flags = [
        '-DUSE_CLANG_COMPLETER',
        '-Wall',
        '-Werror',
        '-Wextra',
        '-std=c++17',
        '-x',
        'c++',
        '-I/usr/include/',
        ]

def FlagsForFile(filename):
    return {
            'flags': flags,
            'do_cache': True
            }
