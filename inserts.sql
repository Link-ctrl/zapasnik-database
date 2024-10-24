INSERT INTO Users (name, email, password_hash, role)
VALUES 
    ('Alice Johnson', 'alice@example.com', 'hash_password_1', 'admin'),
    ('Bob Smith', 'bob@example.com', 'hash_password_2', 'member'),
    ('Charlie Brown', 'charlie@example.com', 'hash_password_3', 'member');

INSERT INTO Families (name, created_at, updated_at)
VALUES 
    ('Johnson Family', '2023-10-01 12:00:00', '2023-10-01 12:00:00'),
    ('Smith Family', '2023-10-02 13:00:00', '2023-10-02 13:00:00');

INSERT INTO FamilyMembers (family_id, user_id, role)
VALUES 
    (1, 1, 'head'),
    (1, 2, 'member'),
    (2, 3, 'head');

INSERT INTO Products (name, category, description, photo_url, barcode, created_at, updated_at)
VALUES 
    ('Milk', 'Dairy', '1 liter of fresh milk', 'http://example.com/milk.jpg', '123456789012', '2023-10-01 12:00:00', '2023-10-01 12:00:00'),
    ('Bread', 'Bakery', 'Whole grain bread', 'http://example.com/bread.jpg', '987654321098', '2023-10-02 13:00:00', '2023-10-02 13:00:00');


INSERT INTO Inventory (family_id, product_id, quantity, expiration_date, created_at, updated_at)
VALUES 
    (1, 1, 10, '2023-12-01 00:00:00', '2023-10-01 12:00:00', '2023-10-01 12:00:00'),
    (1, 2, 5, '2023-10-15 00:00:00', '2023-10-02 13:00:00', '2023-10-02 13:00:00');


INSERT INTO Transactions (family_id, product_id, user_id, action, quantity, created_at)
VALUES 
    (1, 1, 1, 'add', 10, '2023-10-01 12:00:00'),
    (1, 2, 2, 'add', 5, '2023-10-02 13:00:00'),
    (1, 2, 2, 'remove', 1, '2023-10-03 14:00:00');


INSERT INTO Notifications (user_id, product_id, message, sent_at, is_read)
VALUES 
    (1, 1, 'Your milk is expiring soon.', '2023-10-03 09:00:00', FALSE),
    (2, 2, 'Your bread is expiring soon.', '2023-10-04 10:00:00', TRUE);
