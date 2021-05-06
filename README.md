# Moo Chop

moo-chop is a simple python3 Flask application, including an easy way to run it in a container.



# Running the app manually

* export FLASK_APP=app.py
* export ENV FLASK_ENV=development
* flask run --host=0.0.0.0
* Visit http://0.0.0.0:5000/ in your browser (xdg-open http://0.0.0.0:5000/)

# Build and run a container image

Build the image
* buildah bud -t moo-chop .

Run the container locally
* podman run --rm -it -p 5000:5000 localhost/moo-chop

# Pull down a container image and run that
* Note: Pre-built container images for {amd64, ppc64le, s390x} container images are available here: https://quay.io/repository/mrdaredhat/moo-chop?tab=tags
* podman run --rm -it -p 5000:5000 quay.io/mrdaredhat/moo-chop
