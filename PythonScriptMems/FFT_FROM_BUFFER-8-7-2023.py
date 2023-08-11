# import numpy as np
# import matplotlib.pyplot as plt
# from scipy.fft import fft

# # PCM_Buffer data
# pcm_data = [31153, 63686, 30439, 63705, 29700, 63777, 28947, 63906, 28182, 64018, 27435, 64129, 26704, 64276, 26007, 64460, 25325, 64606, 24622, 64732, 23877, 64859, 23105, 64986, 22312, 65116, 21557, 65287, 20814, 65457, 20057, 115, 19344, 306, 18671, 500, 18042, 699, 17497, 867, 17063, 998, 16715, 1130, 16507, 1241, 16479, 1352, 16468, 1440, 16430, 1450, 16442, 1366, 16492, 1255, 16558, 1127, 16598, 1031, 16627, 893, 16656, 756, 16638, 590, 16672, 465, 16779, 351, 16931, 217, 17105, 87, 17265, 65475, 17410, 65310, 17557, 65139, 17673, 64952, 17755, 64757, 17787, 64582, 17769, 64426, 17682, 64279, 17492, 64156, 17141, 64035, 16661, 63928]

# # Convert PCM data to floating-point format
# pcm_data = np.array(pcm_data, dtype=np.float32)

# # Calculate the sampling frequency
# sampling_frequency = 48000.0  # Assuming the sampling frequency is 48 kHz

# # Perform the FFT on the PCM data
# fft_output = fft(pcm_data)

# # Calculate the corresponding frequencies for the FFT output
# fft_size = len(fft_output)
# print(fft_size)
# frequency_resolution = sampling_frequency / fft_size
# frequencies = np.arange(0, fft_size) * frequency_resolution

# # Plot the magnitude spectrum
# plt.figure()
# plt.plot(frequencies[:fft_size // 2], np.abs(fft_output[:fft_size // 2]))
# plt.xlabel('Frequency (Hz)')
# plt.ylabel('Magnitude')
# plt.title('FFT Magnitude Spectrum')
# plt.grid(True)
# plt.show()

# import numpy as np
# import matplotlib.pyplot as plt
# from scipy.fft import fft

# # PCM_Buffer data
# pcm_data = [31153, 63686, 30439, 63705, 29700, 63777, 28947, 63906, 28182, 64018, 27435, 64129, 26704, 64276, 26007, 64460, 25325, 64606, 24622, 64732, 23877, 64859, 23105, 64986, 22312, 65116, 21557, 65287, 20814, 65457, 20057, 115, 19344, 306, 18671, 500, 18042, 699, 17497, 867, 17063, 998, 16715, 1130, 16507, 1241, 16479, 1352, 16468, 1440, 16430, 1450, 16442, 1366, 16492, 1255, 16558, 1127, 16598, 1031, 16627, 893, 16656, 756, 16638, 590, 16672, 465, 16779, 351, 16931, 217, 17105, 87, 17265, 65475, 17410, 65310, 17557, 65139, 17673, 64952, 17755, 64757, 17787, 64582, 17769, 64426, 17682, 64279, 17492, 64156, 17141, 64035, 16661, 63928]

# # Convert PCM data to floating-point format
# pcm_data = np.array(pcm_data, dtype=np.float32)

# # Calculate the sampling frequency
# sampling_frequency = 48000.0  # Assuming the sampling frequency is 48 kHz

# # Zero-pad the PCM data to the nearest power of 2 (128 in this case)
# fft_size = 128
# pcm_data = np.pad(pcm_data, (0, fft_size - len(pcm_data)), mode='constant')

# # Perform the FFT on the PCM data
# fft_output = fft(pcm_data)

# # Calculate the corresponding frequencies for the FFT output
# frequency_resolution = sampling_frequency / fft_size
# frequencies = np.arange(0, fft_size) * frequency_resolution

# # Find the top 3 peak values and their corresponding frequencies
# num_peaks = 3
# peak_indices = np.argsort(np.abs(fft_output))[-num_peaks:]
# peak_frequencies = frequencies[peak_indices]
# peak_values = np.abs(fft_output[peak_indices])

# # Plot the magnitude spectrum
# plt.figure()
# plt.plot(frequencies[:fft_size // 2], np.abs(fft_output[:fft_size // 2]))
# plt.xlabel('Frequency (Hz)')
# plt.ylabel('Magnitude')
# plt.title('FFT Magnitude Spectrum')
# plt.grid(True)
# plt.show()

# # Print the top 3 peak frequencies and values
# for i in range(num_peaks):
#     print(f"Peak {i + 1} frequency: {peak_frequencies[i]:.2f} Hz")
# #     print(f"Peak {i + 1} value: {peak_values[i]:.2f}")
# import numpy as np
# import matplotlib.pyplot as plt
# from scipy.fft import fft

# # PCM_Buffer data
# pcm_data = [31153, 63686, 30439, 63705, 29700, 63777, 28947, 63906, 28182, 64018, 27435, 64129, 26704, 64276, 26007, 64460, 25325, 64606, 24622, 64732, 23877, 64859, 23105, 64986, 22312, 65116, 21557, 65287, 20814, 65457, 20057, 115, 19344, 306, 18671, 500, 18042, 699, 17497, 867, 17063, 998, 16715, 1130, 16507, 1241, 16479, 1352, 16468, 1440, 16430, 1450, 16442, 1366, 16492, 1255, 16558, 1127, 16598, 1031, 16627, 893, 16656, 756, 16638, 590, 16672, 465, 16779, 351, 16931, 217, 17105, 87, 17265, 65475, 17410, 65310, 17557, 65139, 17673, 64952, 17755, 64757, 17787, 64582, 17769, 64426, 17682, 64279, 17492, 64156, 17141, 64035, 16661, 63928]

# # Convert PCM data to floating-point format
# pcm_data = np.array(pcm_data, dtype=np.float32)

# # Calculate the sampling frequency
# sampling_frequency = 48000.0  # Assuming the sampling frequency is 48 kHz

# # Apply the Hann window to the PCM data
# windowed_data = pcm_data * np.hanning(len(pcm_data))

# # Calculate the FFT size after zero-padding (128 in this case)
# fft_size = 128

# # Zero-pad the windowed data to the FFT size
# windowed_data = np.pad(windowed_data, (0, fft_size - len(windowed_data)), mode='constant')

# # Perform the FFT on the windowed data
# fft_output = fft(windowed_data)

# # Calculate the corresponding frequencies for the FFT output
# frequency_resolution = sampling_frequency / fft_size
# frequencies = np.arange(0, fft_size) * frequency_resolution

# # Find the top 3 peak values and their corresponding frequencies
# num_peaks = 3
# peak_indices = np.argsort(np.abs(fft_output))[-num_peaks:]
# peak_frequencies = frequencies[peak_indices]
# peak_values = np.abs(fft_output[peak_indices])

# # Plot the magnitude spectrum
# plt.figure()
# plt.plot(frequencies[:fft_size // 2], np.abs(fft_output[:fft_size // 2]))
# plt.xlabel('Frequency (Hz)')
# plt.ylabel('Magnitude')
# plt.title('FFT Magnitude Spectrum with Hann Window')
# plt.grid(True)
# plt.show()

# # Print the top 3 peak frequencies and values
# for i in range(num_peaks):
#     print(f"Peak {i + 1} frequency: {peak_frequencies[i]:.2f} Hz")
# #     print(f"Peak {i + 1} value: {peak_values[i]:.2f}")
# import numpy as np
# import matplotlib.pyplot as plt
# from scipy.fft import fft

# # PCM_Buffer data
# pcm_data = [31153, 63686, 30439, 63705, 29700, 63777, 28947, 63906, 28182, 64018, 27435, 64129, 26704, 64276, 26007, 64460, 25325, 64606, 24622, 64732, 23877, 64859, 23105, 64986, 22312, 65116, 21557, 65287, 20814, 65457, 20057, 115, 19344, 306, 18671, 500, 18042, 699, 17497, 867, 17063, 998, 16715, 1130, 16507, 1241, 16479, 1352, 16468, 1440, 16430, 1450, 16442, 1366, 16492, 1255, 16558, 1127, 16598, 1031, 16627, 893, 16656, 756, 16638, 590, 16672, 465, 16779, 351, 16931, 217, 17105, 87, 17265, 65475, 17410, 65310, 17557, 65139, 17673, 64952, 17755, 64757, 17787, 64582, 17769, 64426, 17682, 64279, 17492, 64156, 17141, 64035, 16661, 63928]

# # Convert PCM data to floating-point format
# pcm_data = np.array(pcm_data, dtype=np.float32)

# # Calculate the sampling frequency
# sampling_frequency = 48000.0  # Assuming the sampling frequency is 48 kHz

# # Apply Hann window to the PCM data
# hann_window = np.hanning(len(pcm_data))
# pcm_data_windowed = pcm_data * hann_window

# # Perform the FFT on the windowed PCM data
# fft_output = fft(pcm_data_windowed)

# # Calculate the corresponding frequencies for the FFT output
# fft_size = len(fft_output)
# frequency_resolution = sampling_frequency / fft_size
# frequencies = np.arange(0, fft_size) * frequency_resolution

# # Find the top 3 peak values and their corresponding frequencies
# num_peaks = 3
# peak_indices = np.argsort(np.abs(fft_output))[-num_peaks:]
# peak_frequencies = frequencies[peak_indices]
# peak_values = np.abs(fft_output[peak_indices])

# # Plot the log frequency spectrum
# plt.figure()
# plt.semilogx(frequencies[:fft_size // 2], np.abs(fft_output[:fft_size // 2]))
# plt.xlabel('Frequency (Hz)')
# plt.ylabel('Magnitude')
# plt.title('Log Frequency Spectrum with Hann Window')
# plt.grid(True)

# # Print the top 3 peak frequencies and values
# for i in range(num_peaks):
#     print(f"Peak {i + 1} frequency: {peak_frequencies[i]:.2f} Hz")
#     print(f"Peak {i + 1} value: {peak_values[i]:.2f}")

# plt.show()

# import numpy as np
# import matplotlib.pyplot as plt
# from scipy.signal import find_peaks

# # Replace 'audio_buffer' with your actual audio data buffer (NumPy array)
# # For example, audio_buffer = np.array([sample1, sample2, sample3, ...])
# # Ensure the buffer contains integer PCM values in the range of -128 to 127 (for 8-bit) or -32768 to 32767 (for 16-bit), etc.
# pcm_data = [31153, 63686, 30439, 63705, 29700, 63777, 28947, 63906, 28182, 64018, 27435, 64129, 26704, 64276, 26007, 64460, 25325, 64606, 24622, 64732, 23877, 64859, 23105, 64986, 22312, 65116, 21557, 65287, 20814, 65457, 20057, 115, 19344, 306, 18671, 500, 18042, 699, 17497, 867, 17063, 998, 16715, 1130, 16507, 1241, 16479, 1352, 16468, 1440, 16430, 1450, 16442, 1366, 16492, 1255, 16558, 1127, 16598, 1031, 16627, 893, 16656, 756, 16638, 590, 16672, 465, 16779, 351, 16931, 217, 17105, 87, 17265, 65475, 17410, 65310, 17557, 65139, 17673, 64952, 17755, 64757, 17787, 64582, 17769, 64426, 17682, 64279, 17492, 64156, 17141, 64035, 16661, 63928]
# audio_buffer = np.array(pcm_data)

# # Calculate the FFT
# fft_result = np.fft.fft(audio_buffer)
# magnitude_spectrum = np.abs(fft_result)

# # Calculate the corresponding frequencies for the spectrum
# sampling_frequency = 48000  # Replace with the actual sampling frequency of your audio (e.g., 48000 Hz)
# frequencies = np.fft.fftfreq(len(magnitude_spectrum), d=1.0/sampling_frequency)

# # Define the frequency range of interest (300 Hz to 10000 Hz)
# frequency_min = 300
# frequency_max = 10000

# # Find the indices corresponding to the frequency range of interest
# indices_of_interest = np.where((frequencies >= frequency_min) & (frequencies <= frequency_max))[0]

# # Get the magnitudes and frequencies within the frequency range of interest
# magnitudes_of_interest = magnitude_spectrum[indices_of_interest]
# frequencies_of_interest = frequencies[indices_of_interest]

# # Find the peak frequencies within the frequency range
# peaks, _ = find_peaks(magnitudes_of_interest, height=1000)  # Adjust 'height' as needed
# peak_frequencies = frequencies_of_interest[peaks]

# # Plot the spectrum for the frequency range of interest
# plt.figure(figsize=(10, 6))
# plt.plot(frequencies_of_interest, magnitudes_of_interest)
# plt.xlabel('Frequency (Hz)')
# plt.ylabel('Magnitude')
# plt.title('FFT Spectrum (300 Hz - 10000 Hz)')
# plt.grid()

# # Mark the peak frequencies on the plot
# plt.plot(peak_frequencies, magnitudes_of_interest[peaks], 'ro', label='Peaks')
# plt.legend()

# plt.show()

# print("Peak frequencies:")
# for peak_freq in peak_frequencies:
#     print(f"{peak_freq:.2f} Hz")

# import numpy as np
# from scipy.fft import fft

# def calculate_fft(pcm_buffer, sampling_frequency):
#     # Convert PCM_Buffer data to numpy array
#     pcm_data = np.array(pcm_buffer, dtype=np.uint16)

#     # Normalize the data to the range [-1.0, 1.0]
#     pcm_data_normalized = (pcm_data.astype(np.float32) - 32768) / 32768.0

#     # Perform the FFT
#     fft_result = fft(pcm_data_normalized)

#     # Calculate the magnitude spectrum
#     fft_magnitude = np.abs(fft_result)[:len(fft_result) // 2]

#     # Calculate the corresponding frequencies
#     frequencies = np.fft.fftfreq(len(fft_result), 1.0 / sampling_frequency)[:len(fft_result) // 2]

#     return frequencies, fft_magnitude

# # Assuming the sampling frequency is 48kHz (48000 samples per second)
# sampling_frequency = 48000

# # Example usage with your PCM_Buffer data
# PCM_Buffer = [3724, 63212, 3495, 63395, 3232, 63601, 2890, 63750, 2470, 63895, 2094, 64078, 1809, 64320, 1592, 64557, 1341, 64783, 999, 64904, 471, 65027, 65499, 65187, 64977, 65402, 64494, 130, 64001, 382, 63562, 654, 63173, 886, 62804, 1070, 62426, 1245, 62057, 1393, 61779, 1601, 61679, 1818, 61814, 2008, 62145, 2143, 62463, 2139, 62728, 1960, 63004, 1764, 63353, 1612, 63751, 1458, 64132, 1284, 64409, 1057, 64609, 821, 64848, 597, 65194, 444, 102, 335, 625, 168, 1142, 65491, 1619, 65233, 2079, 64967, 2518, 64717, 2931, 64496, 3277, 64331, 3602, 64174, 3906, 64001, 4173, 63792, 4307, 63579, 4128, 63376]
# frequencies, fft_magnitude = calculate_fft(PCM_Buffer, sampling_frequency)

# # Now you have the frequencies and corresponding magnitude spectrum after the FFT
# print(frequencies)     # Array of frequencies
# print(fft_magnitude)   # Array of magnitude values

# import matplotlib.pyplot as plt

# # Plot the magnitude spectrum
# plt.figure()
# plt.plot(frequencies, fft_magnitude)
# plt.xlabel('Frequency (Hz)')
# plt.ylabel('Magnitude')
# plt.grid()
# plt.show()
# import numpy as np
# from scipy.fft import fft

# # Given data from PCM_Buffer (replace this with your actual PCM_Buffer data)
# # Sample rate (sampling frequency) in Hz
# sample_rate = 48000
# # PCM_Buffer data (replace this with your actual PCM_Buffer data)
# pcm_buffer_data = [3724, 63212, 3495, 63395, 3232, 63601, 2890, 63750, 2470, 63895, 2094, 64078, 1809, 64320, 1592, 64557, 1341, 64783, 999, 64904, 471, 65027, 65499, 65187, 64977, 65402, 64494, 130, 64001, 382, 63562, 654, 63173, 886, 62804, 1070, 62426, 1245, 62057, 1393, 61779, 1601, 61679, 1818, 61814, 2008, 62145, 2143, 62463, 2139, 62728, 1960, 63004, 1764, 63353, 1612, 63751, 1458, 64132, 1284, 64409, 1057, 64609, 821, 64848, 597, 65194, 444, 102, 335, 625, 168, 1142, 65491, 1619, 65233, 2079, 64967, 2518, 64717, 2931, 64496, 3277, 64331, 3602, 64174, 3906, 64001, 4173, 63792, 4307, 63579, 4128, 63376, 3789, 63273]  # Add the entire buffer data here

# # Convert the PCM_Buffer data to a numpy array of float32
# pcm_data_float = np.array(pcm_buffer_data, dtype=np.float32)

# # Normalize the data to the range [-1, 1]
# pcm_data_float /= 2**15  # Since it's a 16-bit unsigned integer (2^16), we use 2^15 for signed range

# # Perform the FFT on the PCM data
# fft_result = fft(pcm_data_float)

# # Get the magnitudes of the positive frequencies (ignoring negative frequencies)
# magnitude_spectrum = np.abs(fft_result[:len(fft_result) // 2])

# # Find the indices of the top 3 peaks (excluding the DC component)
# num_peaks = 3
# peak_indices = magnitude_spectrum.argsort()[-num_peaks:][::-1]

# # Calculate the corresponding frequencies of the peaks
# frequencies = np.fft.fftfreq(len(pcm_buffer_data), d=1/sample_rate)
# peak_frequencies = frequencies[peak_indices]

# # Print the peak frequencies
# print("Peak Frequencies (Hz):", peak_frequencies)

# # Optionally, you can also print the magnitudes of the peaks
# peak_magnitudes = magnitude_spectrum[peak_indices]
# print("Peak Magnitudes:", peak_magnitudes)

# import numpy as np
# from scipy.fft import fft

# Given data from PCM_Buffer (replace this with your actual PCM_Buffer data)
# Sample rate (sampling frequency) in Hz
# sample_rate = 48000
# # PCM_Buffer data (replace this with your actual PCM_Buffer data)
# pcm_buffer_data = [
#     3724, 63212, 3495, 63395, 3232, 63601, 2890, 63750, 2470, 63895,
#     2094, 64078, 1809, 64320, 1592, 64557, 1341, 64783, 999, 64904,
#     471, 65027, 65499, 65187, 64977, 65402, 64494, 130, 64001, 382,
#     63562, 654, 63173, 886, 62804, 1070, 62426, 1245, 62057, 1393,
#     61779, 1601, 61679, 1818, 61814, 2008, 62145, 2143, 62463, 2139,
#     62728, 1960, 63004, 1764, 63353, 1612, 63751, 1458, 64132, 1284,
#     64409, 1057, 64609, 821, 64848, 597, 65194, 444, 102, 335, 625,
#     168, 1142, 65491, 1619, 65233, 2079, 64967, 2518, 64717, 2931,
#     64496, 3277, 64331, 3602, 64174, 3906, 64001, 4173, 63792, 4307,
#     63579, 4128, 63376, 3789, 63273
# ]
#   # Add the entire buffer data here

# # Convert the PCM_Buffer data to a numpy array of float32
# pcm_data_float = np.array(pcm_buffer_data, dtype=np.float32)

# # Normalize the data to the range [-1, 1]
# pcm_data_normalized = pcm_data_float / 32768.0  # Since int16 has a range of -32768 to 32767

# # Perform the FFT on the PCM data
# fft_result = fft(pcm_data_normalized)

# # Get the magnitudes of the positive frequencies (ignoring negative frequencies)
# magnitude_spectrum = np.abs(fft_result[:len(fft_result) // 2])

# # Find the indices of the top 3 peaks (excluding the DC component)
# num_peaks = 3
# peak_indices = magnitude_spectrum.argsort()[-num_peaks:][::-1]

# # Calculate the corresponding frequencies of the peaks
# frequencies = np.fft.fftfreq(len(pcm_buffer_data), d=1/sample_rate)
# peak_frequencies = frequencies[peak_indices]

# # Print the peak frequencies
# print("Peak Frequencies (Hz):", peak_frequencies)

# # Optionally, you can also print the magnitudes of the peaks
# peak_magnitudes = magnitude_spectrum[peak_indices]
# print("Peak Magnitudes:", peak_magnitudes)

import numpy as np
import scipy.signal as signal

# Replace this with the actual PCM data from the buffer
pcm_data = [32760, 64198, 32760, 63883, 32760, 63620, 32760, 63412, 32760, 63236, 32760, 63069, 32760, 62905, 32760, 62794, 32760, 62709, 32470, 62729, 31757, 62871, 31124, 63109, 30446, 63365, 29687, 63570, 28919, 63720, 28180, 63858, 27514, 64024, 26902, 64188, 26243, 64329, 25437, 64447, 24523, 64558, 23624, 64783, 22752, 65114, 21943, 65513, 21168]
# Convert the PCM data to a NumPy array and normalize it to the range [-1, 1]
pcm_data = np.array(pcm_data, dtype=np.float32)
pcm_data /= 2 ** 15  # Assuming 16-bit PCM

# Perform FFT on the PCM data
fft_result = np.abs(np.fft.rfft(pcm_data))

# Find the indices of the 3 peaks with the highest magnitude in the FFT result
num_peaks = 3
peak_indices = signal.find_peaks(fft_result, distance=50, height=100)[0][:num_peaks]

# Calculate the corresponding frequencies for the peaks
sample_rate = 48000  # 48kHz, same as the sampling frequency
frequencies = np.fft.rfftfreq(len(pcm_data), d=1 / sample_rate)
peak_frequencies = frequencies[peak_indices]

# Print the peak frequencies
print("Peak Frequencies (Hz):", peak_frequencies)

# Optionally, you can plot the FFT result
import matplotlib.pyplot as plt

plt.plot(frequencies, fft_result)
plt.xlabel('Frequency (Hz)')
plt.ylabel('Magnitude')
plt.title('FFT Result')
plt.grid(True)
plt.show()

