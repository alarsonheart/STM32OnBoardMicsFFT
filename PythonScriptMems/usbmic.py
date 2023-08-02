import serial

def main():
    # Configure the serial port (adjust the port and baudrate accordingly)
    ser = serial.Serial('d', baudrate=115200, timeout=1)  # Replace 'COMx' with the actual port name

    try:
        # Open the file to save the received data
        with open('received_data.txt', 'w') as file:
            while True:
                # Read data from the serial port
                data = ser.readline()
                
                # Convert data to string (optional)
                data_str = data.decode('utf-8').strip()
                
                # Process the data (e.g., save it to a file)
                file.write(data_str + '\n')

                # Print the received data (optional)
                print(data_str)

    except KeyboardInterrupt:
        print("Serial communication interrupted.")
        ser.close()

if __name__ == "__main__":
    main()
