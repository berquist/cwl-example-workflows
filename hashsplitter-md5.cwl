#!/usr/bin/env cwl-runner

cwlVersion: v1.2

class: CommandLineTool

doc: "hash input through md5"

hints:
  - class: DockerRequirement
    dockerPull: kubler/openssl:20230330

  - class: ResourceRequirement
    coresMin: 1
    ramMin: 2
    outdirMin: 1

inputs:
  - id: input
    type: File
    doc: "original content"
    inputBinding:
      position: 1

outputs:
  - id: output
    type: stdout

stdout: md5

baseCommand: ["openssl", "dgst"]

arguments: ["-md5"]
