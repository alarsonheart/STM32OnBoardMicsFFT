# import usb.core

# VID = 0x0483  # Replace with your device's vendor ID
# PID = 0x374E  # Replace with your device's product ID

# dev = usb.core.find( idVendor=VID, idProduct=PID)

# if dev is None:
#     raise ValueError("Device not found")

# dev.set_configuration(1)

# # Replace endpoint_address with your IN endpoint address (0x81 in this case)
# endpoint_address = 0x80
# endpoint = dev[0][(0, 0)][endpoint_address]

# size = 64  # Replace with the size of data you transmitted from the device
# data = endpoint.read(size)

# print(data)
# import usb.core

# # Find your USB device using vendor ID and product ID
# dev = usb.core.find(idVendor=0x0483, idProduct=0x374E, backend=usb.backend.libusb1.get_backend())

# # Check if the device is found
# if dev is None:
#     raise ValueError("USB device not found.")

# # Open the USB device
# dev.set_configuration()

# # IN endpoint address
# endpoint_address = 0x81

# # Data size to read (adjust the size according to your data format)
# data_size = 64

# # Read data from the USB device
# data = dev.read(endpoint_address, data_size)

# # Now, 'data' contains the received bytes from the device.
# # You can parse it and perform FFT as needed.

# # Close the USB device when you're done
# usb.util.dispose_resources(dev)


# import usb.core
# import usb.util

# # Find the USB device based on vendor and product IDs
# dev = usb.core.find(idVendor=0x0483, idProduct=0x374E)

# # Check if the device is found
# if dev is None:
#     raise ValueError("USB device not found.")

# # Set the configuration of the device
# dev.set_configuration()

# # Example: Read data from endpoint 0x81 (IN endpoint) with size 64 bytes
# data = dev.read(0x81, 64)

# # Process and analyze the received data (perform FFT, etc.)
# # Example: Print the received data as hexadecimal values
# print(data.hex())



import usb.core
import usb.util
import struct

# Find the USB device using idVendor and idProduct
dev = usb.core.find(idVendor=0x0483, idProduct=0x374E)

# Check if the device was found
if dev is None:
    raise ValueError("Device not found")

# Set the configuration (if needed)
if dev.get_active_configuration() is None:
    dev.set_configuration()

# The endpoint address (change this according to your device configuration)
endpoint_address = 0x80

# Data size to receive from the device (change this to match your FFT_SIZE)
data_size = 64

# Open the endpoint
ep = usb.util.find_descriptor(dev.get_active_configuration(), custom_match=lambda e: usb.util.endpoint_direction(e.bEndpointAddress) == usb.util.ENDPOINT_IN)

# Check if the endpoint is found
if ep is None:
    raise ValueError("Endpoint not found")

# Receive data from the endpoint
data = dev.read(endpoint_address, data_size)

# Convert the received data to the desired format (e.g., 32-bit floats)
# You may need to adjust the struct.unpack format based on your FFT_SIZE and data format
received_data = struct.unpack('f' * (data_size // 4), data)

# Save the received data to a file
with open('received_data.txt', 'w') as file:
    for value in received_data:
        file.write(f'{value}\n')
