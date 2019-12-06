cwlVersion: v1.0
class: CommandLineTool
hints:
  DockerRequirement:
    dockerPull: kernsuite/base:5
baseCommand: do-something
inputs:
  src:
    type: File
    inputBinding:
      position: 1
outputs:
  classfile:
    type: File
    outputBinding:
      glob: "output.txt"

