# import wave

# # Replace 'input_file.wav' with the path to your audio file
# input_file = 'new_test.wav'

# output_file = 'output_pcm2.txt'

# # Open the audio file for reading
# with wave.open(input_file, 'rb') as wav_file:
#     num_channels = wav_file.getnchannels()
#     sample_width = wav_file.getsampwidth()
#     frame_rate = wav_file.getframerate()
#     num_frames = wav_file.getnframes()

#     pcm_data = []
#     for _ in range(num_frames):
#         # Read one frame of audio data
#         frame = wav_file.readframes(1)
#         # Unpack the binary data to get the PCM value (Assuming 8-bit audio)
#         pcm_value = int.from_bytes(frame, byteorder='little', signed=False)
#         pcm_data.append(str(pcm_value))

# # Write the PCM data to a text file
# with open(output_file, 'w') as txt_file:
#     txt_file.write('\n'.join(pcm_data))

# print("PCM data has been exported to", output_file)

import wave

# Replace 'input_file.wav' with the path to your audio file

output_file = '16_output_pcm.txt'


input_file = '16-bit-1kHz8-7-2023.wav'

# Open the audio file for reading
with wave.open(input_file, 'rb') as wav_file:
    print("Channels:", wav_file.getnchannels())
    print("Sample Width:", wav_file.getsampwidth())
    print("Frame Rate:", wav_file.getframerate())
    print("Number of Frames:", wav_file.getnframes())
    print("Audio Format:", wav_file.getsampwidth(), wav_file.getframerate(), wav_file.getnchannels(), wav_file.getcomptype(), wav_file.getcompname())

# Open the audio file for reading
with wave.open(input_file, 'rb') as wav_file:
    num_channels = wav_file.getnchannels()
    sample_width = wav_file.getsampwidth()
    frame_rate = wav_file.getframerate()
    num_frames = wav_file.getnframes()

    # Calculate the number of bytes per frame
    bytes_per_frame = num_channels * sample_width

    pcm_data = []
    for _ in range(num_frames):
        # Read one frame of audio data
        frame = wav_file.readframes(1)
        # Unpack the binary data to get the PCM value
        pcm_value = int.from_bytes(frame, byteorder='little', signed=False)
        pcm_data.append(str(pcm_value))

# Write the PCM data to a text file
with open(output_file, 'w') as txt_file:
    txt_file.write('\n'.join(pcm_data))

print("PCM data has been exported to", output_file)
