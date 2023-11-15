# Nextflow Demo Pipeline

## Overview

This repository contains a small demo project showcasing the usage of Nextflow with the nf-validation plugin for pipeline validation.

## Requirements

- [Nextflow](https://www.nextflow.io/docs/latest/getstarted.html#installation) installed
- [Docker](https://www.docker.com/get-started) installed (for this demo, as the pipeline uses a Dockerized process)
- [nf-validation](https://github.com/nextflow-io/nf-plugins#pipeline-validation) plugin installed (`nextflow plugins install nextflow-io/nf-validation`)

## Usage

1. **Clone this repository:**

```bash
git clone https://github.com/yourusername/nextflow-demo.git
cd nextflow-demo
```

2. Run the demo pipeline:

```bash
nextflow run main.nf --say_txt_file=say.txt --outdir=results
```

Check the results in the output/ directory.

## Pipeline Details

main.nf: The main Nextflow script.

processes/demo_process.nf: Example Dockerized process.

## Notes

This demo assumes a basic understanding of Nextflow and Docker.
The pipeline uses the nf-validation plugin for enhanced validation and adherence to best practices.

## References

Nextflow Documentation
nf-validation Plugin