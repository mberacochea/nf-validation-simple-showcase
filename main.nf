include { validateParameters; paramsHelp; paramsSummaryLog; fromSamplesheet } from 'plugin/nf-validation'

// Print help message, supply typical command line usage for the pipeline
if (params.help) {
   log.info paramsHelp("nextflow run main.nf --say_txt_file=say.txt --outdir=results")
   exit 0
}

// Validate input parameters
validateParameters()

// Print summary of supplied parameters
log.info paramsSummaryLog(workflow)

say_txt_file_ch = Channel.fromPath( params.say_txt_file )

include { COWSAY_WF } from './workflows/cowsay_wf'

workflow {
    COWSAY_WF ( say_txt_file_ch )
}
