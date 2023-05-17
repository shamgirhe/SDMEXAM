
create table employer (
  employer_id int primary key,
  name varchar(255) not null,
  industry varchar(255) not null,
  locationvarchar(255) not null
);


create table hrdepartment (
  department_id int primary key,
  name varchar(255) not null,
  contact_person varchar(255) not null,
  contact_email varchar(255) not null,
  employer_id int,
   foreign key  (employer_id) referances Employer (employer_id)
);


create table candidate (
  candidate_id int primary key,
  first_name varchar(255) not null,
  last_name varchar(255) not null,
  email varchar(255) not null,
  phone_number varchar(255) not null,
  address varchar(255) not null,
  skills varchar(255) not null,
  education varchar(255) not null,
  experience varchar(255) not null,
);

create table jobpost (
  job_post_id int primary key,
  title varchar(255) not null,
  description varchar(255) not null,,
  requirements varchar(255) not null,
  application date nut null,
  deadline date not null,
  date_posted date not null,
  employer_id int,
  foreign key  (employer_id) referances Employer (employer_id)
);


create table application (
  application_id int primary key,
  candidate_id int,
  job_post_id int,
  status varchar(255) not null,
  date_submitted date not null,
   foreign key  (candidate_id) referances  Candidate (candidate_id),
  foreign key (job_post_id) referances JobPost (job_post_id)
);





