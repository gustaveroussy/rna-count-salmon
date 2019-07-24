Material and Methods:
#####################

Quality control were made on raw `FastQ <https://en.wikipedia.org/wiki/FASTQ_format>`_ files with FastQC. Quality reports were gathered with MultiQC. Abundance estimation was performed with Salmon. Optional parameters (if any) are listed below. Aggregation was performed with an in-house python script available in the `scripts` directory.

* Salmon index optional arguments: `{{snakemake.config.params.salmon_index_extra}}`
* Salmon quantification optional arguments: `{{snakemake.config.params.salmon_quant_extra}}`


Citations:
##########

MultiQC
  EWELS, Philip, MAGNUSSON, Måns, LUNDIN, Sverker, et al. MultiQC: summarize analysis results for multiple tools and samples in a single report. Bioinformatics, 2016, vol. 32, no 19, p. 3047-3048.

  https://multiqc.info/

FastQC
  ANDREWS, Simon, et al. FastQC: a quality control tool for high throughput sequence data. 2010.

  https://www.bioinformatics.babraham.ac.uk/projects/fastqc/

Salmon
  Patro, Rob, et al. “Salmon provides fast and bias-aware quantification of transcript expression.” Nature Methods (2017). Advanced Online Publication. doi: 10.1038/nmeth.4197.

  https://salmon.readthedocs.io/