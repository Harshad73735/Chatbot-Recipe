CREATE DATABASE recipeDB;
USE recipeDB;

CREATE TABLE recipes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    instructions TEXT NOT NULL
);

INSERT INTO recipes (name, instructions) VALUES 

('pasta', '1. Boil water. 2. Add pasta. 3. Cook for 10-12 minutes. 4. Drain and add sauce.'),
('pancakes', '1. Mix flour, milk, and eggs. 2. Cook on a hot griddle until golden brown.'),
('salad', 'Combine lettuce, tomatoes, cucumbers, and your favorite dressing.'),
('dal tadka', '1. Rinse 1 cup of toor dal. 2. Cook in a pressure cooker with water, turmeric, and salt. 3. Prepare a tadka with ghee, cumin seeds, garlic, onion, and tomatoes. 4. Mix with cooked dal. 5. Simmer and serve hot.'),
('aloo paratha', '1. Prepare a potato filling with spices. 2. Roll dough with filling into a flat paratha. 3. Cook on tawa with ghee. 4. Serve with yogurt or pickle.'),
('tea', '1. Boil water with tea leaves, ginger, cardamom, and cloves. 2. Add milk and sugar. 3. Strain and serve hot.'),
('jeera rice', '1. Sauté cumin seeds in ghee. 2. Add soaked rice and water. 3. Cook until rice is tender. 4. Serve hot.'),
('poha', '1. Rinse poha and set aside. 2. Sauté mustard seeds, onions, and spices. 3. Add poha and mix. 4. Garnish with coriander and lemon juice.'),
('upma', '1. Roast semolina in ghee. 2. Sauté mustard seeds, dal, onions, and spices. 3. Add boiling water to semolina. 4. Cook until thickened. 5. Serve hot.'),
('mango lassi', '1. Blend mango pulp, yogurt, and sugar. 2. Add a splash of milk. 3. Serve chilled.'),
('chicken curry', '1. Marinate chicken with spices. 2. Sauté onions, garlic, and ginger. 3. Add tomatoes and spices. 4. Cook chicken in the gravy. 5. Serve with rice.'),
('fish fry', '1. Marinate fish with turmeric, chili powder, and salt. 2. Shallow fry in oil until golden. 3. Serve hot with lemon wedges.'),
('masala dosa', '1. Prepare dosa batter. 2. Cook dosa on tawa. 3. Fill with spiced potato filling. 4. Serve with chutney and sambar.'),
('chole', '1. Soak chickpeas overnight. 2. Cook with onions, tomatoes, and spices. 3. Simmer until thick. 4. Serve with bhature or rice.'),
('paneer tikka', '1. Marinate paneer cubes with yogurt and spices. 2. Grill or bake until golden. 3. Serve with mint chutney.'),
('gulab jamun', '1. Prepare dough with khoya. 2. Fry dough balls until golden. 3. Soak in sugar syrup. 4. Serve warm.'),
('idli', '1. Steam fermented rice and urad dal batter. 2. Serve with sambar and coconut chutney.'),
('vada pav', '1. Make spiced potato filling. 2. Coat in gram flour batter and fry. 3. Serve in a bun with chutney.'),
('pav bhaji', '1. Cook mixed vegetables with spices. 2. Mash and simmer. 3. Serve with buttered pav.'),
('pulao', '1. Sauté rice with spices and vegetables. 2. Add water and cook until tender. 3. Serve hot.'),
('rajma', '1. Soak kidney beans overnight. 2. Cook with onions, tomatoes, and spices. 3. Simmer until thick. 4. Serve with rice.'),
('biryani', '1. Layer marinated meat and partially cooked rice. 2. Cook on low heat with saffron and ghee. 3. Serve with raita.'),
('carrot halwa', '1. Grate carrots and cook with milk. 2. Add sugar, cardamom, and ghee. 3. Simmer until thick. 4. Serve warm.'),
('butter chicken', '1. Marinate chicken with yogurt and spices. 2. Cook in a creamy tomato sauce. 3. Serve with naan or rice.'),
('dahi puri', '1. Fill puris with potatoes, yogurt, and chutneys. 2. Sprinkle with sev and spices. 3. Serve immediately.'),
('kheer', '1. Cook rice with milk and sugar. 2. Add cardamom, nuts, and saffron. 3. Serve chilled or warm.'),
('matar paneer', '1. Cook paneer and peas with tomatoes and spices. 2. Simmer until thick. 3. Serve with naan or rice.'),
('aloo gobi', '1. Sauté potatoes and cauliflower with spices. 2. Cook until tender. 3. Serve hot.'),
('kachori', '1. Prepare spiced filling. 2. Fill dough balls and fry until golden. 3. Serve with chutney.'),
('malai kofta', '1. Make paneer and potato koftas. 2. Cook in a creamy tomato gravy. 3. Serve with naan or rice.'),
('rava dosa', '1. Prepare a thin batter with semolina and spices. 2. Cook on a hot tawa. 3. Serve with chutney.'),
('baingan bharta', '1. Roast and mash eggplant. 2. Cook with onions, tomatoes, and spices. 3. Serve with roti.'),
('samosa', '1. Prepare spiced potato filling. 2. Fill dough triangles and fry. 3. Serve with chutney.'),
('pani puri', '1. Make spicy and tangy water. 2. Fill puris with potatoes and chickpeas. 3. Dip in water and serve.'),
('thepla', '1. Prepare dough with spices and methi leaves. 2. Roll into thin theplas. 3. Cook on tawa. 4. Serve with yogurt or pickle.'),
('sambar', '1. Cook toor dal with tamarind, vegetables, and spices. 2. Simmer until thick. 3. Serve with rice or idli.'),
('rasam', '1. Cook tamarind water with tomatoes and spices. 2. Add cooked dal. 3. Simmer and serve hot.'),
('dosa', '1. Spread fermented batter on a hot tawa. 2. Cook until crisp. 3. Serve with chutney and sambar.'),
('medu vada', '1. Grind urad dal into a batter. 2. Shape into donuts and fry. 3. Serve with chutney and sambar.'),
('poori', '1. Roll dough into small circles. 2. Fry until puffed and golden. 3. Serve with aloo curry.'),
('chutney', '1. Blend coconut, green chilies, and ginger. 2. Add tempering of mustard seeds and curry leaves. 3. Serve fresh.'),
('bhindi masala', '1. Sauté okra with onions and spices. 2. Cook until tender. 3. Serve hot.'),
('dhokla', '1. Prepare fermented batter with gram flour. 2. Steam until fluffy. 3. Add tempering and serve.'),
('phirni', '1. Cook ground rice with milk and sugar. 2. Add cardamom and nuts. 3. Serve chilled.'),
('jalebi', '1. Prepare a fermented batter. 2. Pipe into hot oil and fry until crispy. 3. Soak in sugar syrup and serve.'),
('bhature', '1. Prepare dough with flour and yogurt. 2. Roll and fry until puffed. 3. Serve with chole.'),
('moong dal halwa', '1. Cook moong dal with ghee and sugar. 2. Add milk and cardamom. 3. Serve warm.'),
('shahi paneer', '1. Cook paneer in a rich tomato and cream sauce. 2. Garnish with nuts. 3. Serve with naan.'),
('veg cutlet', '1. Mix boiled vegetables with spices. 2. Shape into cutlets and fry. 3. Serve with chutney.'),
('gobi manchurian', '1. Fry cauliflower florets. 2. Toss in a spicy soy sauce. 3. Serve hot as a snack or side.'),
('egg curry', '1. Boil eggs. 2. Cook in a spicy tomato and onion gravy. 3. Serve with rice or roti.')
;
select * from recipes;


CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

select * from users;



