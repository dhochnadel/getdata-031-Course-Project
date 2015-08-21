#Codebook for run_analysis.R

run_analysis.R takes the dataset and from it produces a table featuring 68 columns on 180 observations. From the dataset, each subject participated in six trial activities. run_analysis.R produces a single averaged (arithmetic mean) of each measurement taken from a subject during an activity. These measurement means are presented in columns 3-68 in the table. 

The objective of run_analysis.R was to produce a tidy data set with an average for each subject for each activity of all variables from the original data set involving a mean or standard deviation.  Therefore, all features from the original data set that were labelled a mean or standard deviation were included.  The features that include the term "mean" but begin with "angle" (such as "angle(tBodyAccMean,gravity)") were not included as these data were not those of a mean, but the angle between the two vectors listed in parenthesis.

Notes on column terms and measurements
======================================
* All axes mentioned in the following variables are the axes of the phone worn on the waist.
* As stated in the dataset's readme, sensor signals consisted of an accelerometer and gyroscope (providing linear acceleration and angular velocity).
* The linear acceleration and angular velocity measures were derived with respect to time to obtain the Jerk data.
* The Magnitude data of the three-dimensional signals were calculated using the Euclidean norm.
* Some data had a Fast Fourier Transformation (FFT) applied to them. These data are labelled with an "F".

Table Columns
=============
1. Subject - The trial subject identifier number
2. Activity - The activity performed by the subject during which the measurement was taken
3. XBodyAccMean - The mean of the acceleration of the body measured on the X-axis
4. YBodyAccMean - The mean of the acceleration of the body measured on the Y-axis
5. ZBodyAccMean - The mean of the acceleration of the body measured on the Z-axis
6. XBodyAccSD - The standard deviation of the acceleration of the body measured on the X-axis
7. YBodyAccSD - The standard deviation of the acceleration of the body measured on the Y-axis
8. ZBodyAccSD - The standard deviation of the acceleration of the body measured on the Z-axis
9. XGravAccMean - The mean of the acceleration of gravity measured on the X-axis
10. YGravAccMean - The mean of the acceleration of gravity measured on the Y-axis
11. ZGravAccMean - The mean of the acceleration of gravity measured on the Z-axis
12. XGravAccSD - The standard deviation of the acceleration of gravity measured on the X-axis
13. YGravAccSD - The standard deviation of the acceleration of gravity measured on the Y-axis
14. ZGravAccSD - The standard deviation of the acceleration of gravity measured on the Z-axis
15. XBodyJerkMean - The mean of the jerk of the body measured on the X-axis
16. YBodyJerkMean - The mean of the jerk of the body measured on the Y-axis
17. ZBodyJerkMean - The mean of the jerk of the body measured on the Z-axis
18. XBodyJerkSD - The standard deviation of the jerk of the body measured on the X-axis
19. YBodyJerkSD - The standard deviation of the jerk of the body measured on the Y-axis
20. ZBodyJerkSD - The standard deviation of the jerk of the body measured on the Z-axis
21. XGyroMean - The mean of the angular velocity of the body measured on the X-axis
22. YGyroMean - The mean of the angular velocity of the body measured on the Y-axis
23. ZGyroMean - The mean of the angular velocity of the body measured on the Z-axis
24. XGyroSD - The standard deviation of the angular velocity of the body measured on the X-axis
25. YGyroSD - The standard deviation of the angular velocity of the body measured on the Y-axis
26. ZGyroSD - The standard deviation of the angular velocity of the body measured on the Z-axis
27. XGyroJerkMean - The mean of the angular jerk of the body measured on the X-axis
28. YGyroJerkMean - The mean of the angular jerk of the body measured on the Y-axis
29. ZGyroJerkMean - The mean of the angular jerk of the body measured on the Z-axis
30. XGyroJerkSD - The standard deviation of the angular jerk of the body measured on the X-axis
31. YGyroJerkSD - The standard deviation of the angular jerk of the body measured on the Y-axis
32. ZGyroJerkSD - The standard deviation of the angular jerk of the body measured on the Z-axis
33. BodyAccMagMean - The mean of the magnitude of the body's acceleration
34. BodyAccMagSD - The standard deviation of the magnitude of the body's acceleration
35. GravAccMagMean - The mean of the magnitude of gravity's acceleration
36. GravAccMagSD - The standard deviation of the magnitude of gravity's acceleration
37. BodyJerkMagMean - The mean of the magnitude of the body's jerk
38. BodyJerkMagSD - The standard deviation of the magnitude of the body's jerk
39. GyroMagMean - The mean of the magnitude of the body's angular velocity
40. GyroMagSD - The standard deviation of the magnitude of the body's angular velocity
41. GyroJerkMagMean - The mean of the magnitude of the body's angular jerk
42. GyroJerkMagSD - The standard deviation of the magnitude of the body's angular jerk
43. F_XBodyAccMean - The FFT data of the XBodyAccMean data
44. F_YBodyAccMean - The FFT data of the YBodyAccMean data
45. F_ZBodyAccMean - The FFT data of the ZBodyAccMean data
46. F_XBodyAccSD - The FFT data of the XBodyAccSD data
47. F_YBodyAccSD - The FFT data of the YBodyAccSD data
48. F_ZBodyAccSD - The FFT data of the ZBodyAccSD data
49. F_XBodyJerkMean - The FFT data of the XBodyJerkMean data
50. F_YBodyJerkMean - The FFT data of the YBodyJerkMean data
51. F_ZBodyJerkMean - The FFT data of the ZBodyJerkMean data
52. F_XBodyJerkSD - The FFT data of the XBodyJerkSD data
53. F_YBodyJerkSD - The FFT data of the YBodyJerkSD data
54. F_ZBodyJerkSD - The FFT data of the ZBodyJerkSD data
55. F_XGyroMean - The FFT data of the XGyroMean data
56. F_YGyroMean - The FFT data of the YGyroMean data
57. F_ZGyroMean - The FFT data of the ZGyroMean data
58. F_XGyroSD - The FFT data of the XGyroSD data
59. F_YGyroSD - The FFT data of the YGyroSD data
60. F_ZGyroSD - The FFT data of the ZGyroSD data
61. F_BodyAccMagMean - The FFT data of the BodyAccMagMean data
62. F_BodyAccMagSD - The FFT data of the BodyAccMagSD data
63. F_BodyJerkMagMean - The FFT data of the BodyJerkMagMean data
64. F_BodyJerkMagSD - The FFT data of the BodyJerkMagSD data
65. F_GyroMagMean - The FFT data of the GyroMagMean data
66. F_GyroMagSD - The FFT data of the GyroMagSD
67. F_GyroJerkMagMean - The FFT data of the GyroJerkMagMean data
68. F_GyroJerkMagSD - The FFT data of the GyroJerkMagSD data