#!/usr/bin/env cwl-runner

cwlVersion: v1.2

class: CommandLineTool

doc: "hash input through sha1"

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
  - id: sha_output
    type: stdout

stdout: sha

baseCommand: ["openssl", "dgst"]

arguments: ["-sha1"]
