select * from donation_data
Limit 10;

--Q1:How much is the total donation?

Select sum(donation) as Total_donation from donation_data;

--Q2: What is the total donation by gender?

select gender, sum(donation) as total_donation_by_gender
from donation_data
group by gender;


--Q3:Show the total donation and number of donations by gender

select gender,count(donation) as number_donation_gender, sum(donation) as total_donation 
from donation_data
group by gender; 



--Q4:Total donation made by frequency of donation

select donation_frequency,count(donation) as number_of_donation,
sum(donation) as total_donation
from donor_data
join donation_data on donation_data.id = donor_data.id
group by donation_frequency;



--Q5:Total donation and number of donation by Job field


select Job_field,count(donation) as number_donation_jobfield, sum(donation) as total_donation 
from donation_data
group by job_field; 

--Q6:Total donation and number of donations above $200

Select sum(donation) as total_donation, count(donation) as donation_above_$200 
from donation_data
where donation > 200;

--Q7: Total donation and number of donations below $200

Select sum(donation) as total_donation, count(donation) as donation_below_$200 
from donation_data
where donation < 200;



--Q8: Which top 10 states contributes the highest donations

select state,count(donation) as highest_donation, sum(donation) as total_donation 
from donation_data
group by  state 
order by highest_donation desc
limit 10;


--Q9:Which top 10 states contributes the least donations

select state,count(donation) as least_donation, sum(donation) as total_donation 
from donation_data
group by  state 
order by least_donation asc
limit 10;

--Q10: What are the top 10 cars driven by the highest donors

select car,sum(donation) as total_donation
from donor_data
join donation_data on donation_data.id = donor_data.id
group by car
order by total_donation desc
limit 10;


--insight and recommendation

--Q1: Increase the number of donors in your database

select count(donation) as Number_of_donation
from donation_data;

--Q2: Increase the donation frequency of your donors.

select donation_frequency,count(donation) as number_of_donation,
sum(donation) as total_donation
from donor_data
join donation_data on donation_data.id = donor_data.id
group by donation_frequency
ORDER BY number_of_donation desc;
