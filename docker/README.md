Forest Plot wrapper for normami
================================

This is a set of scripts to let you run the forest plot extraction tools from ContentMine's normami toolset. It primarily consists of some tooling to generating Docker images of the normami toolset, and python scripts to run over them and generate output excel files with data from any forest plots found.

Requirements
------------

To run the tool you must have [Docker Desktop](https://www.docker.com/products/docker-desktop) installed. For development you can run the tools locally, but in production it is expected that you will run everything in a Docker container to save juggling the java and python dependancies.

On Windows you must ensure that Docker has permissions to access the local drive. To do this go to Settings, and find the Shared Drives section. Ensure that the drive you have you PDF files on is properly shared. Look up the Shared Drives section on the [Get started with Docker for Windows](https://docs.docker.com/docker-for-windows/) documentation if necessary.


Running instructions
---------------------

If you have been provided with the saved docker image, you can load that into docker using the following command:

    docker load -i forestplot.tar

If on Windows, once the image is installed, assuming you have a folder of PDF papers from which you'd like to extract forest plots you run:

    forestplot.bat [PATH TO PDF FOLDER]

Or on macOS or other UNIX based platforms:

    forestplot.sh [PATH TO PDF FOLDER]

Note that the folder path should be absolute.

This will then process the PDF files, and generate a `results.xml` file in the root folder containing a summary of all the located forest plots.


Build instructions
------------------

To build the software, you will required docker and Make installed. To build run the following commands:

    git submodule update --recursive --init
    make

This will then build the docker container containing the ContentMine tools and their dependancies. This will leave you with a docker image called "forestplot". You can then save this using:

    docker save -o foresplot.tar forestplot

This can then be distributed as required.


Development instructions
-----------------------

There's two ways to run things locally: firstly you can run the Python code locally and have normami run in docker still (to save installing Java/Maven locally) or you can run it all locally if you have Maven installed. For that use case see the normami build instructions and check that the normami tools are on your path.

To run the python code it is recommended you use virtualenv to create your python environment:

    virtualenv --python=python3.7 venv
    . ./venv/bin/activate
    python3.7 -m pip install -r requirements.txt

You can control whether normami is ran using Docker by setting `FORESTPLOT_USE_DOCKER` to yes or no. The default is yes. You can now run the foresplot tool like so:

    ./forestplots.py [PATH TO PDF FOLDER]

You can run the tests with:

    make test

You can run pylint using:

    make lint

You can invoke the docker image directly without using the shell script or batch file like so:

    docker run -it --rm -v [PATH TO PDF FOLDER]:/tmp/project forestplot python3.7 forestplots.py /tmp/project

