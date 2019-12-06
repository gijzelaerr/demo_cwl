cwlVersion: v1.0
class: CommandLineTool
hints:
  DockerRequirement:
    dockerPull: kernsuite/base:5
baseCommand: do-something
inputs:
  an_input_file:
    type: File
    inputBinding:
      position: 1
  a_string_argument:
    type: string
    inputBinding:
      position: 2
outputs:
  first_output:
    type: File
    outputBinding:
      glob: "output.txt"

