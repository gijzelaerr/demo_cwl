#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: do-something-else
inputs:
  src:
    type: File
    inputBinding:
      prefix: --file
outputs:
  second_output:
    type: File
    outputBinding:
      glob: "second.txt"
