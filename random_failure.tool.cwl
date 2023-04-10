---
cwlVersion: v1.2
class: CommandLineTool

inputs:
  script:
    id: input
    type: File
    inputBinding:
      position: 1
    default:
      class: File
      location: random_failure.py

outputs:
  example_out:
    id: output
    type: stdout

stdout: random_failure

baseCommand: python
