# TeX Live on Docker

TeX typesetting is a fantastic tool that scientists are using around the globe to write their articles, their thesis, etc.

While being nicely backward compatible, sometimes the same sources files might lead to different results according to which version is being used.

These Docker images contain full versions of TeX Live and are tagged according to the year of the release.

These images allow you to work with a specific version of LaTeX (i.e., the one used by your teammates) without having to install this version on your system.

## Integration
### [Visual Studio Code](https://code.visualstudio.com/)
The most popular extension on VSCode, [Latex Workshop](https://github.com/James-Yu/LaTeX-Workshop), handles *compilation through a Docker image*

The image has to be  selected with the following setting ID:
 `latex-workshop.docker.image.latex`

---
2019 - fever.ch - Raphaël P. Barazzutti
