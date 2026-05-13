# 📊 Student Performance Predictor

An End-to-End Machine Learning project designed to predict a student's math score based on various demographic and academic factors. The project features a complete machine learning pipeline integrated with a user-friendly Flask web application.

## 📝 Overview

The **Student Performance Predictor** takes in various data points about a student to estimate their math score. This helps in understanding the impact of personal and socio-economic factors on a student's educational performance. 

The application considers the following factors:
- **Gender** (Male / Female)
- **Race / Ethnicity** (Groups A, B, C, D, E)
- **Parental Level of Education** (High School, Some College, Associate's, Bachelor's, Master's)
- **Lunch Type** (Standard or Free/Reduced)
- **Test Preparation Course** (None or Completed)
- **Reading Score** (0-100)
- **Writing Score** (0-100)

## 🏗️ Project Architecture

This project is built using a modular structure to ensure maintainability and scalability of the machine learning pipeline:

- **`src/components/data_ingestion.py`**: Handles loading the raw dataset and splitting it into training and testing sets.
- **`src/components/data_transformation.py`**: Responsible for data preprocessing, including handling missing values, encoding categorical variables, and scaling numerical features.
- **`src/components/model_trainer.py`**: Trains various machine learning models, evaluates their performance, and selects the best-performing model (using algorithms like Random Forest, XGBoost, CatBoost, etc.).
- **`src/pipeline/predict_pipeline.py`**: Loads the trained model and preprocessor to make predictions on new data points coming from the web app.
- **`app.py`**: The Flask web server that handles HTTP requests, renders the HTML templates, and communicates with the prediction pipeline.

## 🚀 Technologies Used

- **Programming Language**: Python 3
- **Web Framework**: Flask
- **Data Manipulation**: Pandas, NumPy
- **Machine Learning**: Scikit-Learn, XGBoost, CatBoost
- **Data Visualization**: Matplotlib, Seaborn
- **Frontend**: HTML5, Vanilla CSS
- **Serialization**: dill

## ⚙️ Installation & Setup

Follow these steps to run the project locally on your machine:

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   cd studentperformance-app
   ```

2. **Create a virtual environment (optional but recommended):**
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows use `venv\Scripts\activate`
   ```

3. **Install the required dependencies:**
   ```bash
   pip install -r requirements.txt
   ```
   *(Alternatively, you can install the package in editable mode using `pip install -e .`)*

4. **Run the Flask application:**
   ```bash
   python app.py
   ```

5. **Access the application:**
   Open your web browser and go to `http://127.0.0.1:5000/`.

## 📂 Folder Structure

```text
studentperformance-app/
│
├── artifacts/             # Contains the trained model (model.pkl) and preprocessor (preprocessor.pkl)
├── notebook/              # Jupyter notebooks for exploratory data analysis (EDA) and model experiments
├── src/                   # Source code for the ML pipelines and components
│   ├── components/        # Data ingestion, transformation, and model training modules
│   ├── pipeline/          # Training and prediction pipelines
│   ├── exception.py       # Custom exception handling module
│   ├── logger.py          # Custom logging module
│   └── utils.py           # Helper functions for saving/loading models
│
├── static/                # CSS and static assets for the web app
├── templates/             # HTML templates (index.html, home.html)
├── app.py                 # Main Flask application
├── requirements.txt       # Project dependencies
└── setup.py               # Package setup configuration
```

## 🧠 How It Works

1. **User Input:** The user accesses the web interface and fills out the form with the student's details.
2. **Data Processing:** The Flask app receives the input data and passes it to the `PredictPipeline`. The data is converted into a Pandas DataFrame and transformed using the pre-trained `preprocessor.pkl`.
3. **Prediction:** The scaled features are fed into the pre-trained `model.pkl` to predict the Math Score.
4. **Output:** The predicted score is returned to the user and displayed on the web page.## End to End Machine Learning Project
