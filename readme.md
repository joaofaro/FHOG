# C++ Adaptative Background Subtraction with ALPCA

This repository is meant to provide an easy-to-use implementation of the Felzenszwalb HOG features extractor.
<br />
This approach followed the one presented by Felzenszwalb, Pedro F., et al. "Object detection with discriminatively trained part-based models." Pattern Analysis and Machine Intelligence, IEEE Transactions on 32.9 (2010): 1627-1645.
<br /> 
The OpenCV library have only the original HOG, proposed by Dalal and Triggs. However, the Latent SVM OpenCV implementation have its own FHOG extractor. This code allows you to use it without having do deal with Latent SVM objects.

## Code Example

To use the ALPCA Background subtraction you just need to create the object:
<br />
*HogFeature FHOG(cellSize, scale);*

After that you obtain the FHOG features from your image like this:
<br />
*cv::Mat features = FHOG.getFeature(image);*

## Results

The *out.avi* shows the performance of the presented FHOG extractor when used to detect cars (using a SVM classifier). As can be seen, the cars are correctly identified.
<br />
Another example can be seen here, where the FHOG features are used to detect pedestrians: https://www.youtube.com/watch?v=tW295x025Hw

## Questions and suggestions

You can contact me by email: joaopfaro@gmail.com

