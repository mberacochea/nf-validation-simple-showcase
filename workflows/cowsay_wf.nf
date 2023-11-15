include { COWSAY } from '../modules/cowsay'

workflow COWSAY_WF {

    take:
    say_csv_file_ch // tuple val(meta), val(say)

    main:

    COWSAY(
        say_csv_file_ch
    )

    emit:
    cowsay_result = COWSAY.out.say
}
