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


import usb.core
import usb.util

# Find the USB device based on vendor and product IDs
dev = usb.core.find(idVendor=0x0483, idProduct=0x374E)

# Check if the device is found
if dev is None:
    raise ValueError("USB device not found.")

# Set the configuration of the device
dev.set_configuration()

# Example: Read data from endpoint 0x81 (IN endpoint) with size 64 bytes
data = dev.read(0x81, 64)

# Process and analyze the received data (perform FFT, etc.)
# Example: Print the received data as hexadecimal values
print(data.hex())