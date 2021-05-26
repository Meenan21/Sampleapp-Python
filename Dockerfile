version: '1.0'
stages:
  - checkout
  - package
steps:
  main_clone:
    title: Cloning main repository...
    type: git-clone
    repo: 'Sampleapp-Python'
    revision: 1
    stage: checkout
  MyAppDockerImage:
    title: Building Docker Image
    type: build
    stage: package
    image_name: my-app-image
    working_directory: ./
    tag: v1.0.0
    dockerfile: Dockerfile
      
