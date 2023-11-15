include { COWSAY } from '../modules/cowsay'

workflow COWSAY_WF {

    take:
    say_txt_file

    main:

    COWSAY(
        say_txt_file.splitText()
    )

    emit:
    cowsay_result = COWSAY.out.say
}
