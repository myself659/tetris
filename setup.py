# setup.py
from setuptools import setup, find_packages

setup(
    name="TetrisPy",
    version="1.0",
    packages=find_packages(),
    install_requires=[
        "pygame",
    ],
    entry_points={
        "console_scripts": [
            "tetrispy=tetris:main",
        ],
    },
    author="沉风网事",
    author_email="myself659@gmail.com",
    description="A simple Tetris game built with Python and Pygame",
    long_description=open("README.md").read(),
    long_description_content_type="text/markdown",
    url="https://github.com/myself659/TetrisPy",
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
)