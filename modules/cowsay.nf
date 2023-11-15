process COWSAY {

    container 'quay.io/nf-core/ubuntu:20.04'

    publishDir "${params.outdir}"

    input:
    tuple val(meta), val(say)

    output:
    path("*_say.txt"), emit: say

    script:
    def who_arg = meta.who != "cow" ? "-f ${meta.who}" : "" 
    """
    echo "${say}" | cowsay $who_arg > ${meta.who}_say.txt
    """
}