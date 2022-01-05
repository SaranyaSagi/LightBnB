DELETE FROM users;
DELETE FROM properties;
DELETE FROM reservations;
DELETE FROM property_reviews;

INSERT INTO users(id, name, email, password)
VALUES(1, 'Emma Watson', 'harry_potter@lamda.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
(2, 'Sia Singer', 'sia_popstar@vegan.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
(3, 'Bruce Lee', 'bruce_lee@action.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');

INSERT INTO properties(id, owner_id, title, description,
                       thumbnail_photo_url, cover_photo_url,
                       cost_per_night, parking_spaces,
                       number_of_bathrooms, number_of_bedrooms,
                       country, street, city, province, post_code,
                       active)
VALUES(1, 1, 'Willow Ridge', 'description',
 'https://images.pexels.com/photos/2121122/pexels-photo-2121122.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2121122/pexels-photo-2121122.jpeg',
1000, 2,
4, 5,
'Canada', '536 Thames Highway', 'Toronto', 'Ontario', '28192',
true),
(2, 2, 'Mason resort', 'description',
 'https://images.pexels.com/photos/2121124/pexels-photo-2121124.jpeg?auto=compress&cs=tinysrgb&h=351', 'https://images.pexels.com/photos/2121124/pexels-photo-2121124.jpeg',
5000, 5, 
6, 7,
'Canada', '999 Palace Highway', 'Toronto', 'Ontario', '28132',
true),
(3, 3, 'Eco Oasis', 'description',
 'https://images.pexels.com/photos/2121125/pexels-photo-2121125.jpeg?auto=compress&cs=tinysrgb&h=352', 'https://images.pexels.com/photos/2121125/pexels-photo-2121125.jpeg',
7000, 2,
5, 8,
'Canada', '111 Eco Wonderland', 'Toronto', 'Ontario', '99923',
true);

INSERT INTO reservations(id, start_date, end_date, property_id, guest_id)
VALUES(1, '2017-07-02', '2018-09-22', 1, 1),
(2, '2018-07-03', '2019-09-26', 2, 2),
(3, '2014-09-02', '2018-10-25', 3, 3);

INSERT INTO property_reviews(guest_id, property_id, reservation_id, rating, message)
VALUES(1, 1, 1, 4, 'message1'),
(2, 2, 2, 5, 'message2'),
(3, 3, 3, 2, 'message3');

