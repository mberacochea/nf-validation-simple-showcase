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

say_csv_file_ch = Channel.fromSamplesheet( "say_csv_file" )

say_csv_file_ch.view()

include { COWSAY_WF } from './workflows/cowsay_wf'

workflow {
    COWSAY_WF ( say_csv_file_ch )
}
