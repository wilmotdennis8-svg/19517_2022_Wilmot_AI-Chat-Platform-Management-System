INSERT INTO message (message_id, chat_id, sender_type, message_content)
VALUES (message_seq.NEXTVAL, 1000, 'USER', 'How do I create a list in Python?');


INSERT INTO message (message_id, chat_id, sender_type, message_content, ai_model_used, token_usage, response_time_ms)
VALUES (message_seq.NEXTVAL, 1000, 'AI', 
'In Python, you can create a list using square brackets:
my_list = [1, 2, 3, 4, 5]

You can also create an empty list:
empty_list = []

Lists can hold mixed data types:
mixed = [1, "hello", 3.14, True]',
'GPT-4', 150, 500);


INSERT INTO message (message_id, chat_id, sender_type, message_content)
VALUES (message_seq.NEXTVAL, 1000, 'USER', 'How do I add items to a list?');


INSERT INTO message (message_id, chat_id, sender_type, message_content, ai_model_used, token_usage, response_time_ms)
VALUES (message_seq.NEXTVAL, 1000, 'AI', 
'You can add items to a list using:
1. append() - adds to the end
my_list.append(6)

2. insert() - adds at a specific position
my_list.insert(0, 0)  -- Adds 0 at index 0

3. extend() - adds multiple items
my_list.extend([7, 8, 9])',
'GPT-4', 180, 600);


UPDATE chat_session SET total_messages = 4 WHERE chat_id = 1000;



INSERT INTO message (message_id, chat_id, sender_type, message_content)
VALUES (message_seq.NEXTVAL, 1001, 'USER', 'Can you help me write a cover letter?');

INSERT INTO message (message_id, chat_id, sender_type, message_content, ai_model_used, token_usage, response_time_ms)
VALUES (message_seq.NEXTVAL, 1001, 'AI', 
'Dear Hiring Manager,

I am writing to express my strong interest in the position at your company. With my background in technology and passion for innovation, I am confident I would be a valuable asset.

[Your experience and achievements]

Thank you for considering my application.

Sincerely,
[Your Name]',
'Claude 3', 200, 700);

UPDATE chat_session SET total_messages = 2 WHERE chat_id = 1001;



INSERT INTO message (message_id, chat_id, sender_type, message_content)
VALUES (message_seq.NEXTVAL, 1002, 'USER', 'How do I optimize a slow SQL query?');

INSERT INTO message (message_id, chat_id, sender_type, message_content, ai_model_used, token_usage, response_time_ms)
VALUES (message_seq.NEXTVAL, 1002, 'AI', 
'Key SQL optimization techniques:
1. Add indexes on columns used in WHERE and JOIN
2. Use EXPLAIN PLAN to analyze the query
3. Avoid SELECT * - only select needed columns
4. Use joins instead of subqueries when possible
5. Add LIMIT/ROWNUM for large result sets',
'GPT-5', 220, 800);

UPDATE chat_session SET total_messages = 2 WHERE chat_id = 1002;



INSERT INTO message (message_id, chat_id, sender_type, message_content)
VALUES (message_seq.NEXTVAL, 1003, 'USER', 'What are the latest trends in AI research?');

INSERT INTO message (message_id, chat_id, sender_type, message_content, ai_model_used, token_usage, response_time_ms)
VALUES (message_seq.NEXTVAL, 1003, 'AI', 
'Latest AI research trends include:
1. Large Language Models (LLMs)
2. Multimodal AI (text, image, audio)
3. AI Agents and autonomous systems
4. Quantum Machine Learning
5. Responsible AI and ethics',
'Gemini', 190, 650);

UPDATE chat_session SET total_messages = 2 WHERE chat_id = 1003;



INSERT INTO message (message_id, chat_id, sender_type, message_content)
VALUES (message_seq.NEXTVAL, 1004, 'USER', 'Can you review this Python code?');

INSERT INTO message (message_id, chat_id, sender_type, message_content, ai_model_used, token_usage, response_time_ms)
VALUES (message_seq.NEXTVAL, 1004, 'AI', 
'I notice a few improvements:
1. Add docstrings for documentation
2. Use meaningful variable names
3. Handle edge cases and exceptions
4. Consider using list comprehensions
5. Add type hints for clarity

Overall good code structure!',
'Claude 3', 210, 750);

UPDATE chat_session SET total_messages = 2 WHERE chat_id = 1004;


INSERT INTO message (message_id, chat_id, sender_type, message_content)
VALUES (message_seq.NEXTVAL, 1005, 'USER', 'How do I solve quadratic equations?');

INSERT INTO message (message_id, chat_id, sender_type, message_content, ai_model_used, token_usage, response_time_ms)
VALUES (message_seq.NEXTVAL, 1005, 'AI', 
'Use the quadratic formula:
x = (-b ± √(b² - 4ac)) / 2a

Example: 2x² + 5x - 3 = 0
a = 2, b = 5, c = -3
x = (-5 ± √(25 + 24)) / 4
x = (-5 ± √49) / 4
x = (-5 ± 7) / 4

x₁ = 2/4 = 0.5
x₂ = -12/4 = -3',
'Gemini', 160, 550);

UPDATE chat_session SET total_messages = 2 WHERE chat_id = 1005;



INSERT INTO message (message_id, chat_id, sender_type, message_content)
VALUES (message_seq.NEXTVAL, 1006, 'USER', 'How can I improve my essay writing?');

INSERT INTO message (message_id, chat_id, sender_type, message_content, ai_model_used, token_usage, response_time_ms)
VALUES (message_seq.NEXTVAL, 1006, 'AI', 
'Essay writing tips:
1. Start with a strong thesis statement
2. Use clear topic sentences
3. Provide evidence and examples
4. Use transitions between paragraphs
5. Conclude by summarizing key points

Structure: Introduction → Body → Conclusion',
'GPT-4', 190, 650);

UPDATE chat_session SET total_messages = 2 WHERE chat_id = 1006;



INSERT INTO message (message_id, chat_id, sender_type, message_content)
VALUES (message_seq.NEXTVAL, 1007, 'USER', 'How do I analyze this dataset?');

INSERT INTO message (message_id, chat_id, sender_type, message_content, ai_model_used, token_usage, response_time_ms)
VALUES (message_seq.NEXTVAL, 1007, 'AI', 
'Data analysis steps:
1. Clean the data (handle NULLs, duplicates)
2. Explore with summary statistics
3. Visualize patterns
4. Test hypotheses
5. Draw conclusions

Common tools: Pandas, Matplotlib, SQL',
'GPT-4', 175, 620);

UPDATE chat_session SET total_messages = 2 WHERE chat_id = 1007;



INSERT INTO message (message_id, chat_id, sender_type, message_content)
VALUES (message_seq.NEXTVAL, 1008, 'USER', 'How do I simplify algebraic expressions?');

INSERT INTO message (message_id, chat_id, sender_type, message_content, ai_model_used, token_usage, response_time_ms)
VALUES (message_seq.NEXTVAL, 1008, 'AI', 
'Steps to simplify:
1. Combine like terms
2. Use distributive property
3. Apply exponent rules
4. Factor when possible

Example: 3x + 5 + 2x - 3
= (3x + 2x) + (5 - 3)
= 5x + 2',
'Gemini', 140, 480);

UPDATE chat_session SET total_messages = 2 WHERE chat_id = 1008;



INSERT INTO message (message_id, chat_id, sender_type, message_content)
VALUES (message_seq.NEXTVAL, 1009, 'USER', 'How do I write a good resume?');

INSERT INTO message (message_id, chat_id, sender_type, message_content, ai_model_used, token_usage, response_time_ms)
VALUES (message_seq.NEXTVAL, 1009, 'AI', 
'Resume writing tips:
1. Start with a professional summary
2. List relevant skills
3. Detail work experience with achievements
4. Include education and certifications
5. Proofread for errors

Keep it clean, concise, and focused on results.',
'GPT-4', 185, 660);

UPDATE chat_session SET total_messages = 2 WHERE chat_id = 1009;


SELECT m.message_id, c.title, m.sender_type, SUBSTR(m.message_content, 1, 60) AS message_preview
FROM message m
JOIN chat_session c ON m.chat_id = c.chat_id
ORDER BY m.created_at;