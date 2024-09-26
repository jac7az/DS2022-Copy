#!/usr/bin/python3
import boto3
import sys
import urllib.request

s3=boto3.client('s3',region_name='us-east-1')


gif = 'https://www.reactiongifs.us/wp-content/uploads/2018/06/Programming.gif'
computer_gif='downloaded_gif.gif'

with urllib.request.urlopen(gif) as file:
	with open(computer_gif,'wb') as file2:
		file2.write(file.read())

bucket = 'ds2022-jac7az'
local_file='uploads/downloaded_gif.gif'

resp = s3.put_object(
	Body = local_file,
	Bucket = bucket,
	Key = local_file,
	ACL = 'public-read')
response=s3.generate_presigned_url('get_object',Params={'Bucket': bucket, 'Key': local_file}, ExpiresIn=604800)
print(response)
