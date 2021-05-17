# this script converts the ncat.exe file (located in the same folder) to base64
#run $> python3 1-encoding_binary.py

import base64

# you can change the file name here
with open('ncat.exe', 'rb') as binary_file:
    binary_file_data = binary_file.read()
    base64_encoded_data = base64.b64encode(binary_file_data)
    base64_message = base64_encoded_data.decode('utf-8')

    print(base64_message)

# copy and paste the output into a file (ncatbase64)
