run:
    cwltool --singularity hashsplitter-workflow.cwl hashsplitter-test.yml

openssl_apptainer_help:
    apptainer exec --contain --ipc --cleanenv --userns \
        /home/eric/repositories/common-workflow-language/examples/cwl-example-workflows/kubler_openssl.sif \
        openssl dgst -help

openssl_apptainer:
    apptainer exec --contain --ipc --cleanenv --userns \
        /home/eric/repositories/common-workflow-language/examples/cwl-example-workflows/kubler_openssl.sif \
        openssl dgst -sha

openssl_old_apptainer:
    # apptainer pull docker://kubler/openssl:20180928
    apptainer exec --contain --ipc --cleanenv --userns \
        openssl_20180928.sif \
        openssl -h
    apptainer exec --contain --ipc --cleanenv --userns \
        openssl_20180928.sif \
        openssl dgst -h
