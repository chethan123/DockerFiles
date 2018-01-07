#!/bin/bash
file_to_compress="${2}"
compress_exit_code=0

if [[ "${file_to_compress}" ]]; then
    echo "Compressing ${file_to_compress} ..."
    gzip -9 "${file_to_compress}"

    compress_exit_code=${?}

    if [[ ${compress_exit_code} == 0 ]]; then
        echo "File ${file_to_compress} was compressed."
        aws s3 cp ${file_to_compress}.gz s3://gemini-gdax/logs/`hostname`/
    else
        echo "Error compressing file ${file_to_compress} (tar exit code: ${compress_exit_code})."
    fi
fi
exit 0
