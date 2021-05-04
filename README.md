# Moo Chop

moo-chop is a simple python3 Flask application, including an easy way to run it in a container.



# Run the app manually

* export FLASK_APP=app.py
* export ENV FLASK_ENV=development
* flask run --host=0.0.0.0
* Visit http://0.0.0.0:5000/ in your browser (xdg-open http://0.0.0.0:5000/)

# Building a container image

Get the ubi-8 python image (so authentication isn't needed)
* podman pull registry.access.redhat.com/ubi8/python-36

Build the image
* buildah bud -t moo-chop .

Run the container locally
* podman run --rm -it -p 5000:5000 localhost/moo-chop
