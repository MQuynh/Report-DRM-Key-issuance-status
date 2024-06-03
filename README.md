# Personal project
# Overview
At present, monitoring and predicting the number of DRM keys used for content encryption is a crucial issue not only for the Technical Solutions team but also for other departments in general, as it directly relates to the costs and business planning of FPT Television. However, despite its importance, we currently lack a BI Dashboard or regular reports on this matter. Therefore, this report aims to address the issue by providing accurate information on the key issuance situation and predicting future key issuance. IamQuyt, our dedicated team member, will take charge of resolving this matter. IamQuyt will develop a comprehensive report that provides precise insights into the key issuance status and forecasts the future key issuance trends. This report will enable the Technical Solutions team and other relevant departments to have a holistic view of the current situation and the evolving trends in DRM key issuance. It will support business decision-making and optimize the operations of FPT Television.
# Conceptual Map
![image](https://github.com/MQuynh/Report-DRM-Key-issuance-status-for-FPT/assets/120617972/0d155d89-b4dc-41fb-adad-a4559127a0ab)
# Data Model 
![image](https://github.com/MQuynh/Report-DRM-Key-issuance-status-for-FPT/assets/120617972/a489f476-9c5a-4010-853b-d83b1c7790d6)
# Description of tables 
- Customer: Contain customer information: customer identifier (customerid), customer device identifier (mac), customer information creation date and time (created_date).
- CustomerService: Contains information about customer services and corresponding transactions: customer identifier (CustomerID), service identifier (ServiceID), transaction amount (Amount), transaction date and time (Date)
- Log_Get_DRM_List: Contains information about the customer's DRM (Digital Rights Management) history: customer identifier (CustomeID), date DRM was obtained (Date), device identifier when DRM was obtained (Mac)
- Log_BHD_MovieID: Record activities related to watching customer BHD movies: customer identifier (CustomerID), movie identifier (MovieID), file type (FTYPE), movie playing time (REALTIMEPLAYING), ...
- MV_PropertiecShowVN: Contains information about movies: movie identifier (id), main genre (toptitle), title (titleEN), release year (release), actors (actors), directors (directors), flag only DRM support with 0 being no DRM support and 1 being DRM support (isDRM),...
- Log_Fimplus_movieID: Record activities related to watching customer Film Plus movies: customer identifier (customerid), movie identifier (movieid), file type (Ftype), movie playing time (Realtimeplaying), movie viewing time ( Date), movie folder (Folder), user type (Utype).
# Dashboard 
![image](https://github.com/MQuynh/Report-DRM-Key-issuance-status-for-FPT/assets/120617972/e5ebbd4d-b568-48c4-9513-162a52409dd7)




