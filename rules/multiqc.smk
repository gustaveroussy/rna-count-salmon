"""
This rule runs MultiQC in order to collect metrics on most of our tools and
raw files: Fastq + Salmon. We need to include the fasta reference for
the report option only.
More information at:
https://snakemake-wrappers.readthedocs.io/en/stable/wrappers/multiqc.html
"""
rule multiqc:
    input:
        **get_targets(no_multiqc=True)
    output:
        report(
            "qc/multiqc_report.html",
            caption="../report/multiqc.rst",
            category="Quality Controls"
        )
    params: ""
    threads: 1
    resources:
        mem_mb = (
            lambda wildcards, attempt: min(attempt * 2048, 10240)
        ),
        time_min = (
            lambda wildcards, attempt: min(attempt * 45, 120)
        )
    version: "1.0"
    log:
        "logs/multiqc.log"
    message:
        "Gathering quality reports with MultiQC"
    wrapper:
        f"{swv}/bio/multiqc"