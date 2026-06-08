# 🏠 House Prices Analysis — End-to-End ML Engine

<p align="center">
  <img src="M3_logo.png" width="120" alt="M3 Logo"/>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Python-3.10+-blue?logo=python&logoColor=white"/>
  <img src="https://img.shields.io/badge/Streamlit-1.x-red?logo=streamlit&logoColor=white"/>
  <img src="https://img.shields.io/badge/MATLAB-R2021a-orange?logo=mathworks&logoColor=white"/>
  <img src="https://img.shields.io/badge/Scikit--Learn-1.3+-green?logo=scikit-learn&logoColor=white"/>
  <img src="https://img.shields.io/badge/Status-Complete-brightgreen"/>
</p>

---

## 📌 Project Overview

A complete **End-to-End Machine Learning Engine** for house price data analysis,
built in parallel using **Python (Streamlit)** and **MATLAB (App Designer)**.

This project does not aim to compare MATLAB and Python.
Instead, it demonstrates how data analysis and predictive modeling tasks
can be effectively completed using the best available tools:

- **Python** → ML models, EDA pipeline, interactive Streamlit dashboard
- **MATLAB** → Advanced visualization, App Designer interactive dashboard

> **Dataset:** King County House Sales (`kc_house_data.csv`)
> 21,613 records · 21 features · Target: `price`

---

## 🎯 Objectives

- Analyze housing price data and identify key influencing features
- Apply data preprocessing, outlier detection, and feature engineering
- Build and evaluate 6 Regression + 6 Classification models
- Present insights through professional interactive dashboards
- Create a reusable ML Engine template for future datasets

---

## 🏗️ Architecture — Python Streamlit App

```
📁 Repo_1_House_Prices_Analysis/
├── 🏠 Home.py                      ← Multipage launcher
├── 🖼️ M3_logo.png                  ← Project logo
├── 🖼️ 3M_logo.png         
├── 📄 requirements.txt
├── 📄 .gitignore
│
├── 📁 pages/
│   ├── 1_EDA_Dashboard.py          ← Stage 1 (Tabs 1–8)
│   └── 2_ML_Models.py              ← Stage 2 (Tabs 9–13)
│
├── 📁 data/
│   ├── raw/
│   │   └── kc_house_data.csv
│   └── processed/                  ← cleaned exports
│
├── 📁 matlab/
│   ├── app/
│   │   └── ML_Engine.mlapp         ← MATLAB App Designer
│   │   └── ML_Engine_Classifier.mlapp         ← MATLAB App Designer
│   └── scripts/                    ← .m model scripts
├── 📁 Dashbords/
│   ├── ml_engine_review_END-TO-END-MATLAB.HTML
│   └── ml_engine_review_PYTHON_Streamlit.HTML

├── 📁 reports/
│   ├── House_Prices_Report.pdf
│   └── Technical_Appendix.pdf
│
├── 📁 saved_models/           ← trained model packages (.pkl)
│
└── 📁 screenshots/
    ├── home.png
    ├── stage1_tab1_overview.png
    ├── stage1_tab8_insights.png
    ├── stage2_tab9_regression.png
    ├── stage2_tab10_classification.png
    ├── stage2_tab11_comparison.png
    ├── stage2_tab12_predict.png
    └── stage2_tab13_final_report.png
```

---

## 📊 Stage 1 — EDA Dashboard (Tabs 1–8)

| Tab | Name | Description |
|-----|------|-------------|
| 1 | Data Overview | Shape, types, preview, basic stats |
| 2 | Univariate Analysis | Distributions, histograms, boxplots |
| 3 | Bivariate Analysis | Feature vs target scatter plots |
| 4 | Correlation Analysis | Heatmap, correlation ranking |
| 5 | Feature Engineering | Encoding, scaling, transformations |
| 6 | Missing Values & Imputation | Detection + Mean/Median/KNN strategies |
| 7 | Multicollinearity / VIF | VIF scores, collinearity flags |
| 8 | Insights & Recommendations | Auto-generated EDA report + export |

---

## 🤖 Stage 2 — ML Models Engine (Tabs 9–13)

| Tab | Name | Description |
|-----|------|-------------|
| 9  | Regression Models | 6 models · metrics · learning curves |
| 10 | Classification Models | 6 models · confusion matrix · ROC |
| 11 | Comparison & Report | Side-by-side ranking · export |
| 12 | Predict New Data | Single row + batch CSV prediction |
| 13 | Final Insights & Report | Combined Stage 1 + Stage 2 summary |

### 6 Regression Models
`Linear` · `Ridge` · `Lasso` · `Decision Tree` · `Random Forest` · `Gradient Boosting`

### 6 Classification Models
`Logistic` · `KNN` · `Decision Tree` · `Random Forest` · `Gradient Boosting` · `SVM`

---

## ⚡ Key Features

- **Parallel Training** — ThreadPoolExecutor with adjustable CPU cores slider
- **Safe Mode** — Default uses `max_cores - 1` to protect system stability
- **Learning Curves** — Visual overfitting/underfitting diagnosis
- **Cross-Validation** — 5-fold CV for all models
- **Feature Importance** — Bar charts for tree-based models
- **Save / Load Models** — Export trained model packages (.pkl)
- **Export Reports** — TXT · Word (.docx) · PDF for all tabs
- **Predict New Data** — Single row + batch CSV upload
- **Session State Bridge** — Stage 1 data flows directly into Stage 2
- **Professional Logo** — M3 branding across all pages

---

## 🚀 How to Run

### 1. Clone the repository
```bash
git clone https://github.com/YOUR_USERNAME/Repo_1_House_Prices_Analysis.git
cd Repo_1_House_Prices_Analysis
```

### 2. Install dependencies
```bash
pip install -r requirements.txt
```

### 3. Launch the app
```bash
streamlit run Home.py
```

### 4. Navigate
- Open browser at `http://localhost:8501`
- Use sidebar: **Home → EDA Dashboard → ML Models**
- Load `data/raw/kc_house_data.csv` in Stage 1
- Run EDA → then switch to Stage 2 for modeling

---

## 🛠️ Tools & Technologies

| Tool | Version | Purpose |
|------|---------|---------|
| Python | 3.10+ | Core language |
| Streamlit | 1.x | Interactive dashboard |
| Pandas | 2.x | Data manipulation |
| NumPy | 1.x | Numerical computing |
| Scikit-learn | 1.3+ | ML models + metrics |
| Matplotlib | 3.x | Static plots |
| Seaborn | 0.x | Statistical plots |
| FPDF2 | 2.x | PDF export |
| python-docx | 0.x | Word export |
| psutil | 5.x | CPU monitoring |
| MATLAB | R2021a | App Designer version |

---

## 📸 Screenshots

### Home Page
![Home](screenshots/home.png)

### Stage 1 — EDA Dashboard
![EDA](screenshots/stage1_tab1_overview.png)

### Stage 2 — ML Models
![ML](screenshots/stage2_tab9_regression.png)

### Final Report
![Report](screenshots/stage2_tab13_final_report.png)

---

## 📈 Results & Insights

- **Best Regression Model:** Random Forest (R² ≈ 0.88)
- **Best Classification Model:** Gradient Boosting (Accuracy ≈ 87%)
- **Top Features:** `sqft_living`, `grade`, `sqft_above`, `lat`, `bathrooms`
- **Key Insight:** Living area and grade are the strongest price predictors

---

## 🔭 Future Improvements

- Apply to new datasets (Titanic, Diabetes, Customer Churn...)
- Add SHAP explainability (XAI) module
- Add Time Series module (ARIMA, Prophet)
- Deploy to Streamlit Cloud
- Add A/B testing framework
- Build unified single-file version

---

## 👤 Author

**Mohamed**
Mechanical Engineer / Data Analyst
- 🔗 GitHub:https://github.com/mohamedsayed980
- 📧 Email: mohamed.sayed980@gmail.com

---

## 📄 License

This project is licensed under the MIT License.

---

## ⭐ If you find this useful, please star the repository!
