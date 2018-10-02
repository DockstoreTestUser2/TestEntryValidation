cwlVersion: "cwl:draft3.0"
class: Workflow

inputs:
  input_file: File

outputs:
  output_file:
    type: File
    outputSource: md5sum/output_file

steps:
  md5sum:
    run: validTool.cwl
    in:
      input_file: input_file
    out: [output_file]
