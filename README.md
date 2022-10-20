# Gradimio
![Gradimio](static/ss.jpg "Gradimio screenshot")
Gradio based image input-process-output template.
There is nothing new in this repo.
It's just a simpliest demo of the [Gradio](https://gradio.app/ "Gradio") for the purpose of image uploading, processing, and display the result.

**Gradimio** is derived from Gradio + image + input-process-output.
**Yes, that's it!**

# Getting Started
1. Clone this repo and get into it
```bash
git clone https://github.com/geeksloth/gradimio.git && cd gradimio
```
2. Run the container
```bash
docker-compose up
```
3. Access it via your browser:
```127.0.0.1:7860```


## Further practical way

1. Build your own Docker image from provied Dockerfile:
```bash
docker build -t gradimio --network=host .
```

2. Run the container from previous built image, and also binding the current directory into it.
```bash
docker run -it --rm --name=gradimio -p 7860:7860 -v $PWD:/gradimio gradimio:latest bash
```
and then run your script eg. ```python3 main.py```
