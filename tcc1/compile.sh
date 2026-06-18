#!/bin/bash

pandoc slides.md -o slides.pdf -t beamer --pdf-engine=tectonic
