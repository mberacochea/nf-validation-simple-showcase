include { COWSAY_WF } from './workflows/cowsay_wf'

say_txt_file_ch = Channel.fromPath( params.say_txt_file )

workflow {
    COWSAY_WF ( say_txt_file_ch )
}
