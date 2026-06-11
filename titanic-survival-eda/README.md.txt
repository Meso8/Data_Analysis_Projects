
**Overview:**  
This project examines which features (elements) drove passenger survival and how they rank, using the Titanic dataset (891 passengers).

**Data source:**  
Data was collected from Kaggle at the following URL:  
https://www.kaggle.com/competitions/titanic/data

**Steps taken:**  
Imported data, performed initial exploration, cleaned and handled missing values (e.g., imputed Cabin by checking last name and ticket number; imputed Age using group medians based on Pclass × Sex × Title), conducted feature engineering, created plots, and drew conclusions.

**Results for our ranking (Sex, Class, Age, Family Size):**  
Sex was the strongest driver: 74% of women survived vs. 19% of men. Class came second: survival rates were 63% (first), 47% (second), and 24% (third). The two interact, and sex wins — a third‑class woman (50%) outsurvived a first‑class man (37%), so being female mattered more than being wealthy. Age and family size were weak — survival rose only at the extremes (young children).

**Imports and notes:**  
```python
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
```
`train.csv` is included in this folder. This notebook runs from top to bottom.

**Limitations:**  
- Used the training dataset only; we have not built a model for ML deployment yet. That will be done and attached in another folder.  
- Imputation assumptions (group medians flatten the real age spread).  
- Some bivariate findings rest on small heatmap cells, so they are suggestive, not solid.

