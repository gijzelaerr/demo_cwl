#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow
inputs:
  an_input_file: File
  a_string_argument: string

outputs:
  some_output:
    type: File
    outputSource: compile/classfile

steps:
  first:
    run: first.cwl
    in:
      an_input_file: an_input_file
      a_string_argument: a_string_argument
    out: [first_output]

  second:
    run: second.cwl
    in:
      src: first/first_output 
    out: [second_output]
