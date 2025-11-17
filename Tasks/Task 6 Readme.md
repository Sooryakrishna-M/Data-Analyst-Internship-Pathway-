Overview
This project implements two simple yet effective machine learning classifiers, K-Nearest Neighbors (KNN) and Decision Tree, to classify iris flower species based on their feature measurements. The Iris dataset is used to train, validate, and evaluate these models.

Dataset
The Iris dataset consists of 150 samples from three species of iris flowers (setosa, versicolor, virginica). Each sample contains four features: sepal length, sepal width, petal length, and petal width.

Classifiers Used
K-Nearest Neighbors (KNN): Classifies a test sample based on the majority class among its k-nearest neighbors in the feature space.

Decision Tree: Builds a tree structure where each internal node splits the data based on feature values, and leaf nodes represent predicted classes.

Implementation Details
The dataset is split into training (70%) and testing (30%) sets.

Both classifiers are trained on the training set.

Predictions are made on the testing set.

Performance is evaluated using accuracy and a detailed classification report including precision, recall, and F1-score for each class.

Results
The output includes accuracy scores and classification reports for both KNN and Decision Tree classifiers, which indicate how well each model performs on unseen data.

Usage
To run this code:

Ensure you have Python installed along with numpy and scikit-learn.

Run the provided code in a Python environment or Jupyter notebook.

Review the printed accuracy scores and classification reports to compare model performance.

