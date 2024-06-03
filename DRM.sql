select count(distinct(lbm.CustomerID)) as total_key , cast(lbm.`DATE` as Date) as Date , 'BHD' as Service_Name
from study_data.log_bhd_movieid lbm  
left join study_data.mv_propertiesshowvn mp 
on lbm.MovieID = mp.ID
where isDRM = 1
group by cast(lbm.`DATE` as Date)
union
select count(distinct(lfm.CustomerID)) as total_key , cast(lfm.date as Date) as Date , 'FIM+' as Service_Name
from study_data.log_fimplus_movieid lfm  
left join study_data.mv_propertiesshowvn mp 
on lfm.MovieID = mp.ID
where isDRM = 1
group by cast(lfm.date as Date)
union
select count(distinct(lgdl.CustomerID)) as total_key , lgdl.date , 'PHIM GOI' as Service_Name
from study_data.log_get_drm_list lgdl 
left join study_data.customers c2 on lgdl.CustomerID = c2.customerid and lgdl.Mac = c2.mac
left join study_data.customerservice c  on lgdl.CustomerID = c.CustomerID
group by lgdl.date
order by Date desc