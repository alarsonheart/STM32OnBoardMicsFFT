
import numpy as np
import matplotlib.pyplot as plt


'''This is data taken from  a 7kHz tone  playing'''
# pcm_data = [32760, 19299, 28076, 10821, 52474, 58665, 32776, 48244, 32776, 50488, 50643, 31, 27045, 15452, 32760, 18977, 23812, 8442, 46678, 56353, 32776, 47677, 32776, 51845, 57614, 2642, 32043, 16777, 32760, 18350, 18887, 5907, 41068, 54249, 32776, 47367, 32776, 53536, 64555, 5182, 32760, 17777, 32760, 17395, 13462, 3190, 35775, 52370, 32776, 47281, 32776, 55484, 5813, 7662, 32760, 18618, 32760, 16187, 7491, 523, 32776, 50865, 32776, 47608, 34162, 57805, 12338, 10042, 32760, 19221, 32760, 14727, 1326, 63415, 32776, 49599, 32776, 48160, 39983, 60256, 18612, 12158, 32760, 19460, 32760, 12866, 60546, 60781, 32776, 48553, 32776, 48974, 46127, 62846, 23078, 14025]

'''This is data taken from a 10kHz tone playing'''
# pcm_data = [446, 2723, 55159, 62736, 59301, 62322, 6146, 2656, 9175, 5910, 64184, 1121, 55109, 61712, 61599, 62782, 7813, 3635, 7792, 5259, 61457, 65426, 55009, 61313, 64130, 63900, 9024, 4684, 5912, 4531, 58999, 64284, 55667, 61264, 1170, 65205, 9601, 5407, 3614, 3548, 57000, 63262, 57110, 61474, 3695, 1041, 9561, 5736, 1053, 2386, 55609, 62365, 59023, 61991, 5839, 2379, 8845, 5673, 63847, 1142, 54826, 61752, 61365, 62846, 7572, 3653, 7521, 5246, 61232, 65440, 54843, 61363, 63970, 63869, 8840, 4638, 5708, 4480, 58831, 64232, 55573, 61222, 1039, 65142, 9422, 5293, 3448, 3456, 56859, 63166, 56992, 61393, 3557, 944, 9371, 5624]


'''This is data taken from a 5kHz tone playing'''
# pcm_data =[32760, 43171, 32760, 32776, 30080, 32776, 61363, 39882, 32776, 5508, 32776, 29547, 32776, 32760, 42265, 32760, 11136, 23043, 32760, 57270, 32760, 35259, 32760, 32776, 16212, 32776, 48731, 51990, 32776, 16080, 32776, 32760, 32776, 32760, 56285, 32760, 22885, 9820, 32760, 47185, 32760, 32776, 32760, 32776, 2176, 34175, 37112, 64677, 32776, 25155, 32776, 32760, 34912, 32760, 5272, 28984, 32760, 62733, 32760, 38690, 32760, 32776, 23488, 32776, 55348, 45232, 32776, 10353, 32776, 32457, 32776, 32760, 50010, 32760, 17680, 15502, 32760, 51266, 32760, 32776, 32760, 32776, 9451, 32776, 43237, 57910, 32776, 20165, 32776, 32760, 32776, 32760, 63748, 32760, 28709, 2607]

'''This is data taken from a 1kHz tone playing'''
pcm_data = [2929, 64084, 5369, 62593, 7936, 60739, 10522, 58706, 13067, 56700, 15480, 54864, 17662, 53241, 19634, 51816, 21256, 50619, 22436, 49644, 23223, 49030, 23325, 48774, 21876, 48989, 18789, 50098, 15511, 52303, 13022, 54602, 10887, 56564, 8637, 58345, 6262, 59854, 4133, 61211, 2427, 62632, 948, 64036, 65054, 65264, 63371, 788, 61204, 1880, 58768, 3345, 56168, 5158, 53527, 7160, 50951, 9165, 48541, 11012, 46351, 12658, 44354, 14086, 42669, 15339, 41438, 16326, 40623, 17020, 40571, 17368, 42163, 17190, 45381, 15982, 48654, 13725, 51204, 11424, 53494, 9398, 55904, 7532, 58355, 5947, 60483, 4517, 62156, 3058, 63549, 1718, 64967, 575, 1161, 65135]

'''This is data taken from a 15kHz tone playing'''
# pcm_data = [60574, 61352, 4946, 2032, 681, 2401, 59567, 61430, 3434, 496, 2891, 3513, 59423, 62122, 1299, 64404, 4595, 4038, 60140, 63306, 64473, 62977, 5566, 3967, 61727, 64845, 62303, 61924, 5678, 3273, 63762, 946, 60472, 61380, 4879, 2075, 590, 2448, 59457, 61485, 3297, 566, 2786, 3573, 59325, 62184, 1219, 64475, 4539, 4122, 60127, 63371, 64469, 63043, 5573, 4001, 61698, 64878, 62248, 61949, 5678, 3305, 63809, 972, 60547, 61436, 4945, 2103, 613, 2459, 59513, 61496, 3382, 526, 2852, 3545, 59377, 62167, 1265, 64465, 4605, 4075, 60211, 63335, 64539, 63011, 5656, 3986, 61816, 64855, 62352, 61929, 5799, 3264, 63935, 939]

'''This is data taken from a 2kHz tone which data was stored as a csv from HSDataLog'''
# pcm_data= [-4597, -4882, -5025, -4983, -4677, -4185, -3640, -3051, -2412, -1729,
#     -1047, -455, 7, 333, 521, 530, 284, -144, -635, -1167, -1746,
#     -2366, -2985, -3528, -3943, -4231, -4392, -4354, -4059, -3589, -3054, -2468,
#     -1835, -1165, -492, 99, 555, 877, 1061, 1061, 817, 386, -114,
#     -655, -1239, -1861, -2491, -3043, -6495, -6752, -6867, -6802, -6491, -5999,
#     -5433, -4833, -4176, -3481, -2787, -2178, -1701, -1352, -1133, -1100, -1320,
#     -1731, -2208, -2724, -3292, -3905, -4511, -5044, -5454, -5725, -5867, -5808,
#     -5492, -4995, -4441, -3851, -3204, -2516, -1833, -1232, -764, -431, -231,
#     -215, -433, -848, -1335, -1868, -2436, -3053, -3668, -4212, -4566, -4835,
#     -4979, -4936, -4631, -4141, -3591, -3003, -2372, -1690, -1013, -416, 41,
#     362, 553, 568, 341, -84, -578, -1108, -1691, -2317, -2939,
#     -3486, -3910, -4206, -4359, -4317, -4024, -3547, -3009, -2427, -1795, -1127,
#     -459, 132, 588, 903, 1091, 1101, 857, 427, -71, -615,
#     -1204, -1833, -2463, -3017, -6479, -6739, -6870, -6805, -6476, -5959, -5387,
#     -4776, -4111, -3408, -2713, -2102, -1618, -1276, -1066, -1034, -1254, -1662,
#     -2138, -2647, -3204, -3810, -4416, -4951, -5357, -5632, -5779, -5725, -5412,
#     -4915, -4356, -3758, -3115, -2425, -1742, -1146, -680, -352, -159, -134,
#     -358, -770, -1252, -1783, -2358, -2972, -3589, -4119, -4478, -4764, -4916,
#     -4867, -4556, -4068, -3520, -2933, -2300, -1623, -944, -348, 103, 424,
#     612, 619, 386, -29, -516, -1055, -1647, -2271, -2897, -3449,
#     -3873, -4160, -4310, -4270, -3965, -3481, -2939, -2365, -1737, -1061, -391,
#     194, 644, 957, 1140, 1140, 900, 474, -25, -572, -1163,
#     -1792, -2426, -2981, -6438, -6692, -6814, -6742, -6411, -5903, -5328, -4720,
#     -4059, -3358, -2656, -2052, -1577, -1237, -1028, -991, -1207, -1615, -2090,
#     -2606, -3166, -3777, -4385, -4912, -5316, -5579, -5713, -5655, -5340, -4840,
#     -4288, -3689, -3038, -2349, -1668, -1071, -601, -275, -76, -53, -276,
#     -687, -1167, -1693, -2270, -2889, -3507, -4051, -4421, -4707, -4860, -4811,
#     -4512, -4031, -3489, -2905, -2270, -1596, -927, -336, 115, 425, 616,
#     631, 386, -52, -550, -1092, -1673, -2295, -2915, -3455, -3866,
#     -4152, -4298, -4254, -3952, -3470, -2932, -2349, -1716, -1046, -376, 205,
#     658, 969, 1155, 1154, 909, 480, -18, -562, -1152, -1778,
#     -2403, -2953, -6402, -6654, -6773, -6698, -6379, -5875, -5306, -4704, -4046,
#     -3342, -2654, -2050, -1576, -1235, -1028, -1002, -1227, -1639, -2107, -2625,
#     -3185, -3789, -4398, -4926, -5332, -5603, -5738, -5683, -5364, -4875, -4325,
#     -3724, -3072, -2385, -1698, -1098, -631, -301, -109, -100, -334,
#     -757, -1243, -1769, -2342, -2950, -3565, -4101, -4459, -4736, -4879, -4837,
#     -4542, -4068, -3520]

left_channel = pcm_data[::2]
right_channel = pcm_data[1::2]

print(f" length + {len(pcm_data)}")
print(f" length 1 + {len(right_channel)}")
print(f" length 2 + {len(left_channel)}")
combined_channel = np.add(left_channel, right_channel)

print(f" length 3 + {len(combined_channel)}")
fft_result = np.fft.fft(combined_channel)
magnitude_spectrum = np.abs(fft_result)

# Calculate the corresponding frequencies for the spectrum
sampling_frequency = 48000  # Replace with the actual sampling frequency of your audio (e.g., 48000 Hz)
frequencies = np.fft.fftfreq(len(magnitude_spectrum), d=1.0/sampling_frequency)

# Find the indices of the top 3 peaks
num_peaks = 3
peak_indices = np.argpartition(magnitude_spectrum, -num_peaks)[-num_peaks:]

print("Top 3 Frequency Peaks:")
for i in peak_indices:
    print(f"{frequencies[i]:.2f} Hz   {magnitude_spectrum[i]:.2f}")

# Plot the spectrum for the frequency range of interest
plt.figure(figsize=(10, 6))
plt.plot(frequencies, magnitude_spectrum)
plt.xlabel('Frequency (Hz)')
plt.ylabel('Magnitude')
plt.title('FFT Spectrum')
plt.grid()

plt.show()




# Print out FFT data for the frequency range of interest
# frequency_min = -1000
# frequency_max = 30000
# indices_of_interest = np.where((frequencies >= frequency_min) & (frequencies <= frequency_max))[0]

# print("Frequency (Hz)  Magnitude")
# for i in indices_of_interest:
#     print(f"{frequencies[i]:.2f} Hz   {magnitude_spectrum[i]:.2f}")

# # Plot the spectrum for the frequency range of interest
# plt.figure(figsize=(10, 6))
# plt.plot(frequencies[indices_of_interest], magnitude_spectrum[indices_of_interest])
# plt.xlabel('Frequency (Hz)')
# plt.ylabel('Magnitude')
# plt.title('FFT Spectrum (300 Hz - 10000 Hz)')
# plt.grid()

# plt.show()