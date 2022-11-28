[![New Relic Experimental header](https://github.com/newrelic/opensource-website/raw/master/src/images/categories/Experimental.png)](https://opensource.newrelic.com/oss-category/#new-relic-experimental)

# pyenv-devcontainer 
![GitHub forks](https://img.shields.io/github/forks/newrelic-experimental/pyenv-devcontainer?style=social)
![GitHub stars](https://img.shields.io/github/stars/newrelic-experimental/pyenv-devcontainer?style=social)
![GitHub watchers](https://img.shields.io/github/watchers/newrelic-experimental/pyenv-devcontainer?style=social)

![GitHub all releases](https://img.shields.io/github/downloads/newrelic-experimental/pyenv-devcontainer/total)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/newrelic-experimental/pyenv-devcontainer)
![GitHub last commit](https://img.shields.io/github/last-commit/newrelic-experimental/pyenv-devcontainer)
![GitHub Release Date](https://img.shields.io/github/release-date/newrelic-experimental/pyenv-devcontainer)


![GitHub issues](https://img.shields.io/github/issues/newrelic-experimental/pyenv-devcontainer)
![GitHub issues closed](https://img.shields.io/github/issues-closed/newrelic-experimental/pyenv-devcontainer)
![GitHub pull requests](https://img.shields.io/github/issues-pr/newrelic-experimental/pyenv-devcontainer)
![GitHub pull requests closed](https://img.shields.io/github/issues-pr-closed/newrelic-experimental/pyenv-devcontainer)

The pyenv-devcontainer allows containerized Python development in VS Code with a wide array of preinstalled Python versions made possible through [pyenv](https://github.com/pyenv/pyenv).

The image provides a wide set of preinstalled Python versions, with the ability to easily install more. This includes any specific version CPython version, debug builds, and alternative interpreters such as [PyPy](https://www.pypy.org/), [Cinder](https://github.com/facebookincubator/cinder), and [Pyston](https://www.pyston.org/). The preinstalled versions come with several preinstalled tools such as [tox](https://pypi.org/project/tox/) and [virtualenv](https://pypi.org/project/virtualenv/) to make matrix testing simple.

This project is aimed at supporting development of the [New Relic Python Agent](https://github.com/newrelic/newrelic-python-agent). The project has been open sourced to allow others to develop using the same tools the maintainers use without any lengthy and complex setup.

## Installation

See the documentation for [Developing Inside a Container](https://code.visualstudio.com/docs/devcontainers/containers) provided by VSCode. Follow the example quick start to get started.

Set the image for your container (in your `.devcontainer/devcontainer.json` file) to `ghcr.io/newrelic-experimental/pyenv-devcontainer:latest`.

Here is an example `.devcontainer/devcontainer.json` file.

```json
{
	"name": "pyenv",
	"image": "ghcr.io/newrelic-experimental/pyenv-devcontainer:latest",
	"features": {},
	"settings": {}
}
```

## Usage

The image is a fully functional development environment and can be used the same as an ordinary terminal. Python should be available on your path through pyenv. To manipulate which version is used, or install more versions of Python, see the [pyenv documentation](https://github.com/pyenv/pyenv#usage).

## Building

To build locally from source, you must have the [devcontainer CLI](https://code.visualstudio.com/docs/devcontainers/devcontainer-cli) installed. It can be installed through [npm](https://www.npmjs.com/) with:

```bash
npm install -g @devcontainers/cli
```

You can then build the image with any options available for `devcontainer build`. Running this command displays a list of options. An example build would look like the following:

```bash
devcontainer build --image-name newrelic-experimental/pyenv-devcontainer --workspace-folder=./
```

## Support

New Relic has open-sourced this project. This project is provided AS-IS WITHOUT WARRANTY OR DEDICATED SUPPORT. Issues and contributions should be reported to the project here on GitHub.

>We encourage you to bring your experiences and questions to the [Explorers Hub](https://discuss.newrelic.com) where our community members collaborate on solutions and new ideas.

## Contributing

We encourage your contributions to improve pyenv-devcontainer! Keep in mind when you submit your pull request, you'll need to sign the CLA via the click-through using CLA-Assistant. You only have to sign the CLA one time per project. If you have any questions, or to execute our corporate CLA, required if your contribution is on behalf of a company, please drop us an email at opensource@newrelic.com.

**A note about vulnerabilities**

As noted in our [security policy](../../security/policy), New Relic is committed to the privacy and security of our customers and their data. We believe that providing coordinated disclosure by security researchers and engaging with the security community are important means to achieve our security goals.

If you believe you have found a security vulnerability in this project or any of New Relic's products or websites, we welcome and greatly appreciate you reporting it to New Relic through [HackerOne](https://hackerone.com/newrelic).

## License

pyenv-devcontainer is licensed under the [Apache 2.0](http://apache.org/licenses/LICENSE-2.0.txt) License.

> pyenv-devcontainer also uses source code from third-party libraries. You can find full details on which libraries are used and the terms under which they are licensed in the third-party notices document.

## Reference Links

* [Developing Inside a Container (VS Code)](https://code.visualstudio.com/docs/remote/containers)
* [Dev Container Specification](https://containers.dev/)
