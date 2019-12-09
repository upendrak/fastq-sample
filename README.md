## fastq-sample - sample random reads from a fastq file

### SYNOPSIS

```
fastq-sample [OPTION]... FILE [FILE2]
```

### DESCRIPTION

Given a FASTQ file, random reads are sampled and output, with or without replacement, according to the ’-r’ option. The number of reads to sample can be specifed with the ’-n’ option, or in terms of the proportion of total reads using ’-p’ option.
If two files are given, the input is treated as paired-end, and matching pairs are sampled and output into seperate files: [prefix].1.fastq and [prefix].2.fastq, where [prefix] is set with the ’-o’ option.

### Build

If you want to build it on your own

```
$ docker build -t upendradevisetty/fastq-sample:0.8 .

```

### Push

Push it to dockerhub. Please note that you need to have Dockerhub account for you to be able to push

```
$ docker push upendradevisetty/fastq-sample:0.8
```

### RUN

Run with a pre-built docker image

```
$ docker run --rm -u $(id -u):$(id -g) -v $PWD:/data -w /data upendradevisetty/fastq-sample:0.8 -h

fastq-sample [OPTION]... FILE [FILE2]
Sample random reads from a FASTQ file.Options:
  -n N                    the number of reads to sample (default: 10000)
  -p N                    the proportion of the total reads to sample
  -o, --output=PREFIX     output file prefix
 (Default: "sample")  -c, --complement-output=PREFIX
                          output reads not included in the random sample to
                          a file (or files) with the given prefix (by default,
                          they are not output).
  -r, --with-replacement  sample with replacement
  -s, --seed=SEED         a manual seed to the random number generator
  -h, --help              print this message
  -V, --version           output version information and exit

```

Sample run

```
$ docker run --rm -u $(id -u):$(id -g) -v $PWD:/data -w /data upendradevisetty/fastq-sample:0.8 -n 10 Read1.fastq

```

Outputs

You will find `sample.fastq` output in your working directory with only 10 randomly selected reads

AUTHOR
Written by Daniel C. Jones <dcjones@cs.washington.edu>
