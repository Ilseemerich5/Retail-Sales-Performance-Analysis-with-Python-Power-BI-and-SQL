# Phase 4: Statistical Forecasting Model – Revenue Prediction

In this phase, a statistical forecasting model was applied to predict monthly revenue trends for the retail store, building on the insights obtained during the EDA. The analysis used Python and specifically the Prophet library to model time series data and forecast future revenue.

## Tools and Libraries
- **pandas** for data preparation and manipulation  
- **matplotlib** for plotting forecasts and visual trends  
- **Prophet** for time series modeling and revenue prediction  

## Methodology
- The dataset included historical monthly sales from January 2014 to February 2018.  
- Revenue data was aggregated by month and preprocessed to match Prophet's required format.  
- A Prophet model was trained to predict monthly revenue from March to December 2018.  
- Forecast results were analyzed to identify expected seasonal peaks in revenue.  

## Key Findings
- The model predicted significant revenue peaks in March, August, November, and December, consistent with seasonal trends observed in the EDA.  
- Peaks in March and August likely reflect spring and mid-year promotions, while November and December correspond to holiday season and year-end sales cycles.  
- The Prophet model demonstrates how historical patterns can be leveraged to anticipate future revenue, supporting strategic planning, inventory management, and sales forecasting.  

## Overall Conclusion
The statistical forecasting model with Prophet provided actionable revenue forecasts that align with historical seasonality. These predictions enable the business to prepare inventory, plan promotions, and optimize operational decisions, forming a basis for deeper predictive modeling and data-driven strategy.
