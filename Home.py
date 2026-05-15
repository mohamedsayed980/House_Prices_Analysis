# ─────────────────────────────────────────────────────────────────────────────
# Home.py — ML Engine Launcher
# ─────────────────────────────────────────────────────────────────────────────
# Run with:  streamlit run Home.py
# =============================================================================
## path = streamlit run "E:\FINAL PROJECTS\1-House_Prices_Analysis\Home.py"
# ================================================================#


import streamlit as st

import pathlib

LOGO = pathlib.Path(__file__).parent / "M3_logo.png"
col_logo, col_title = st.columns([1, 6])
with col_logo:
    st.image(str(LOGO), width=100)
with col_title:
    st.markdown("""
    <div style="background:linear-gradient(135deg,#1E3A8A,#0891B2);
                border-radius:14px;padding:22px 28px;margin-bottom:28px;">
      <h1 style="color:white;margin:0;font-size:32px;">
          ML Engine — End-to-End Data Analysis
      </h1>
      <p style="color:#BAE6FD;margin:8px 0 0;font-size:15px;">
          Mohamed · Mechanical Engineer / Data Analyst
      </p>
    </div>
    """, unsafe_allow_html=True)

col1, col2 = st.columns(2)

with col1:
    st.markdown("""
    <div style="background:#F0F9FF;border-radius:12px;padding:20px;
                border-left:5px solid #0891B2;">
    <h3 style="color:#1E3A8A;margin:0 0 10px;">📊 Stage 1 — EDA Dashboard</h3>
    <p style="color:#374151;font-size:14px;margin:0;">
        Data Overview · Univariate · Bivariate · Correlation ·
        Feature Engineering · Missing Values · Multicollinearity ·
        Insights & Recommendations
    </p>
    </div>
    """, unsafe_allow_html=True)

with col2:
    st.markdown("""
    <div style="background:#F0FFF4;border-radius:12px;padding:20px;
                border-left:5px solid #059669;">
    <h3 style="color:#1E3A8A;margin:0 0 10px;">🤖 Stage 2 — ML Models Engine</h3>
    <p style="color:#374151;font-size:14px;margin:0;">
        Regression · Classification · Comparison & Reports ·
        Predict New Data · Final Insights & Recommendations
    </p>
    </div>
    """, unsafe_allow_html=True)

st.markdown("---")
st.markdown("""
<div style="text-align:center;color:#6B7280;font-size:13px;margin-top:10px;">
    👈 Use the sidebar to navigate between stages
</div>
""", unsafe_allow_html=True)



# ── Shared session_state initialization ──────────────────────────────────────
# This ensures both pages see the same keys from the start
defaults = {
    "df_raw"          : None,
    "df_work"         : None,
    "target_col"      : None,
    "file_name"       : None,
    "num_cols"        : [],
    "cat_cols"        : [],
    "important_vars"  : [],
    "corr_threshold"  : 0.3,
    "insights_text"   : "",
    "stage2_insights" : "",
    "final_report_text": "",
    "reg_results"     : {},
    "cls_results"     : {},
    "reg_models"      : {},
    "cls_models"      : {},
    "best_reg_name"   : None,
    "best_cls_name"   : None,
}
for key, val in defaults.items():
    if key not in st.session_state:
        st.session_state[key] = val