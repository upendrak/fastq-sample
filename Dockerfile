FROM continuumio/miniconda:latest
MAINTAINER Upendra Devisetty <upendra@cyverse.org>
RUN conda install -y -c bioconda fastq-tools=0.8
ENTRYPOINT ["fastq-sample"]
