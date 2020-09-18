
rule targets:
    input:
        expand('results/output{i}.txt', i=range(1,3))

rule with_log:
    input:
        R="script.R"
    output:
        txt='results/output1.txt'
    log:
        'log/with_log.txt'
    script:
        "script.R"

rule no_log:
    input:
        R="script.R"
    output:
        txt='results/output2.txt'
    script:
        "script.R"