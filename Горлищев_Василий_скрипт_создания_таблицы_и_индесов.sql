
CREATE TABLE transactions (
    id SERIAL PRIMARY KEY,
    transaction_id INT,
    product_id INT,
    customer_id INT,
    transaction_date DATE,
    online_order BOOLEAN,
    order_status VARCHAR(50)
);
-- Залил данные руками

CREATE TABLE customers (
    id SERIAL PRIMARY KEY,         
    first_name VARCHAR(50),        
    last_name VARCHAR(50),          
    gender VARCHAR(10),            
    dob DATE,                       
    job_title VARCHAR(100),       
    job_industry_category VARCHAR(50),
    wealth_segment VARCHAR(50),     
    deceased_indicator CHAR(1),    
    owns_car BOOLEAN,              
    address VARCHAR(255),          
    postcode VARCHAR(10),           
    state VARCHAR(50),            
    country VARCHAR(50),           
    property_valuation INTEGER    
);
-- Залил данные руками

CREATE TABLE products (
    id SERIAL PRIMARY KEY,          
    brand VARCHAR(100),            
    product_line VARCHAR(50),      
    product_class VARCHAR(20),     
    product_size VARCHAR(20),      
    list_price NUMERIC(10,2),      
    standard_cost NUMERIC(10,2)     
);

-- Залил руками

-- Свяжем по индексам

-- Создание индексов для оптимизации запросов
-- Индексы для таблицы transactions
CREATE INDEX idx_transactions_customer ON transactions(customer_id);
CREATE INDEX idx_transactions_product ON transactions(product_id);


