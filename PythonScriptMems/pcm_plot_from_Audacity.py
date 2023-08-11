# import wave
# import numpy as np

# # Replace 'your_audio_file.wav' with the path to your WAV file
# audio_file = '1kHzPCM.wav'

# try:
#     # Open the WAV file
#     with wave.open(audio_file, 'rb') as wav_file:
#         # Get the parameters of the audio file
#         num_channels = wav_file.getnchannels()
#         sample_width = wav_file.getsampwidth()
#         frame_rate = wav_file.getframerate()
#         num_frames = wav_file.getnframes()

#         # Read and decode the raw PCM data
#         raw_data = wav_file.readframes(num_frames)
#         pcm_data = np.frombuffer(raw_data, dtype=np.int16)

#     # Print the PCM values
#     print(pcm_data)
# except:
#     print("bruh")
import wave
import numpy as np

# Replace 'your_audio_file.wav' with the path to your WAV file
audio_file = '1kHzPCM.wav'

# Open the WAV file
with wave.open(audio_file, 'rb') as wav_file:
    # Get the parameters of the audio file
    num_channels = wav_file.getnchannels()
    sample_width = 8 #wav_file.getsampwidth()
    frame_rate = wav_file.getframerate()
    num_frames = wav_file.getnframes()

    # Read and decode the raw PCM data
    raw_data = wav_file.readframes(num_frames)
    pcm_data = np.frombuffer(raw_data, dtype=np.int16)

# Set the option to display the full array
np.set_printoptions(threshold=np.inf)

# Print the PCM values
print(pcm_data)
