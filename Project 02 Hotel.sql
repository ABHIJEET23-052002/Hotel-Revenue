-- making one data
with hostel as (
select * from dbo.[2018]
union
select * from dbo.[2019]
union
select * from dbo.[2020]
)

select * from hostel

-- number of days stay
with hostel as (
select * from dbo.[2018]
union
select * from dbo.[2019]
union
select * from dbo.[2020]
)

select arrival_date_year, arrival_date_month,(stays_in_weekend_nights+ stays_in_week_nights)*adr as revenue from hostel

-- number of days stay
with hostel as (
select * from dbo.[2018]
union
select * from dbo.[2019]
union
select * from dbo.[2020]
)

select arrival_date_year, hotel,
round(sum((stays_in_weekend_nights+ stays_in_week_nights)*adr),2) as revenue from hostel group by hotel,arrival_date_year

-- join the table

select * from market_segment

with hostel as (
select * from dbo.[2018]
union
select * from dbo.[2019]
union
select * from dbo.[2020]
)

select * from hostel
left join market_segment
on hostel.market_segment=market_segment.market_segment
left join meal_cost
on meal_cost.meal=hostel.meal