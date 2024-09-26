#!/bin/bash


curl https://logos-world.net/wp-content/uploads/2020/10/Yahoo-Logo-2013-2019.png > picture.png
aws s3 cp picture.png s3://ds2022-jac7az/
https://s3.amazonaws.com/ds2022-jac7az/picture.png
aws s3 presign --expires-in 604800 s3://ds2022-jac7az/picture.png


