#!/usr/bin/env cwl-runner

cwlVersion: v1.2

class: CommandLineTool

doc: "hash input through sha512"

hints:
  - class: DockerRequirement
    dockerPull: kubler/openssl:20230330

inputs:
  - id: input
    type: File
    doc: "original content"
    inputBinding:
      position: 1

outputs:
  - id: output
    type: stdout

stdout: whirpool

baseCommand: ["openssl", "dgst"]

arguments: ["-sha512"]
