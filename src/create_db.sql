DROP DATABASE IF EXISTS staff_hours;
CREATE DATABASE staff_hours;

\c staff_hours;

CREATE TABLE staff_overview (
    staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR(40) NOT NULL,
    surname VARCHAR(40) NOT NULL,
    staff_start_date DATE,
    sickness_allowance VARCHAR,
    annual_holiday_allowance FLOAT,
    holiday_used FLOAT,
    holiday_booked_before_reset FLOAT,
    sickness_taken FLOAT,
    normal_work_week VARCHAR,
    normal_weekly_hours_total FLOAT,
    hourly_rate FLOAT,
    expected_pay_next_month FLOAT
);

CREATE TABLE month_detail(
    staff_id INT PRIMARY KEY REFERENCES staff_overview(staff_id),
    March_23_expected_hours FLOAT,
    March_23_actual_hours VARCHAR(20),
    March_23_expected_pay VARCHAR(20),
    March_23_actual_pay FLOAT
);

