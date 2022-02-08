

CREATE TABLE cars(
    id SERIAL PRIMARY KEY, 
    make VARCHAR(255),
    model VARCHAR(255),
    year VARCHAR(255),
    color VARCHAR(255),
    user_id INT REFERENCES users(id)
);

INSERT INTO cars(make, model, year, color, user_id) VALUES('bmw', '328i','2008', 'gray',1);
INSERT INTO cars(make, model, year, color, user_id) VALUES('toyota', 'rav4','2018', 'gray',2);
INSERT INTO cars(make, model, year, color, user_id) VALUES('honda', 'accord','2012', 'silver',3);
INSERT INTO cars(make, model, year, color, user_id) VALUES('honda', 'pilot','2003', 'black',2);



CREATE TABLE users(
    id SERIAL PRIMARY KEY, 
    name VARCHAR(255),
    age VARCHAR(255), 
    gender VARCHAR(255),
    occupation VARCHAR(255)
);

INSERT INTO users(name, age, gender, occupation) VALUES('Alvin Nguyen','32','male','developer');

INSERT INTO users(name, age, gender, occupation) VALUES('Ryan Nguyen','34','male','developer');

INSERT INTO users(name, age, gender, occupation) VALUES('Angelina Truong','26','female','developer');

//what is the color of the car owned by alvin nguyen 
select color from cars where id=(select car_id from users where name='Alvin Nguyen');

//what  is the make of the car owned by the guy who is 34 years old 
select make from cars where id=(select car_id from users where age='34');

//give me the full car information from the guy who owns the car and that guy is Ryan Nguyen 

select * from cars where id=(select car_id from users where name='Ryan Nguyen');

give me the make an model owned by avlin nguyen 

select make, model from cars where id=(select car_id from users where name='Alvin Nguyen');

select * from cars where id=(select user_id from users where name='Ryan Nguyen');

SELECT * FROM cars WHERE user_id=(SELECT id FROM users WHERE name='Ryan Nguyen');

//return the car details owned by Alvin Nguyen 

select * from cars where user_id=(select id from users where name='Alvin Nguyen');

