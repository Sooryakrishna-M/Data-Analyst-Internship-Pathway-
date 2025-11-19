Sales Forecasting Using ARIMA and LSTM
This project performs time series sales forecasting on retail store data using both classical and deep learning models. The notebook walks through the end-to-end workflow for preparing the data, analyzing patterns, training models, and evaluating forecasts.

Overview
Problem Statement: Predict weekly sales for a given retail store using historical data.

Techniques Used: ARIMA (Autoregressive Integrated Moving Average) and LSTM (Long Short-Term Memory) for time series forecasting.

Dataset: Weekly sales transactions, focused on a single store, aggregated at the week level.

Workflow Description
1. Data Preprocessing
Reads the sales data, parsing dates for time series analysis.

Filters for a specific store (Store 1) and aggregates sales across departments per week.

Sets the index to the date column and ensures weekly frequency.

Displays the first few preprocessed rows for validation.

2. Exploratory Data Analysis
Visualizes the time series of weekly sales.

Decomposes the time series to analyze trend and seasonality components.

3. Train/Test Split
Splits the data into training (80%) and testing (20%) periods.

Reports the number of weeks in each split for clarity.

4. ARIMA Modeling
Fits an ARIMA model (order selected based on data inspection, e.g., (5, 1, 0)).

Evaluates the fitted model using metrics such as RMSE and MAPE.

Plots actual vs. predicted sales for the test set.

5. LSTM Deep Learning Forecast
Prepares the data sequence for LSTM input.

Builds and trains an LSTM neural network using Keras/TensorFlow.

Plots loss curves and forecasts for the test period.

Evaluates LSTM with RMSE.

6. Results and Evaluation
Compares the ARIMA and LSTM performance.

Provides plots showing historical data, true sales, and forecast curves.

Results
ARIMA Model: Achieved test set RMSE of about 214,981 and MAPE of 13.01%.

LSTM Model: Achieved RMSE of 85,779 for the test period.

Visualization: Plots illustrate trends, seasonality, and the performance of each forecasting approach side-by-side.

How to Run
Requirements

Python (Anaconda recommended)

Jupyter Notebook

Libraries: pandas, numpy, matplotlib, statsmodels, scikit-learn, tensorflow, keras

Steps

Place the notebook and the dataset (e.g., train.csv) in the same folder.

Open the notebook and run all cells sequentially.

The dataset should have at least "Store", "Dept", "Date", and "Weekly_Sales" columns.

Outputs

The notebook will output summary statistics, plots of decomposition, model diagnostics, and forecast performance.

