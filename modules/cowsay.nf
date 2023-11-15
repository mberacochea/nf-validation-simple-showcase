process COWSAY {

    container 'quay.io/nf-core/ubuntu:20.04'

    publishDir "${params.outdir}"

    input:
    val(say)

    output:

    path("say.txt"), emit: say

    script:
    """
    echo "${say}" | cowsay > say.txt
    """
}