Card.delete_all
Deck.delete_all
User.delete_all

card_content = [
  {question: 'What type of currency did Croatia use before switching to the Euro?', answer: 'Kuna', deck_id: 1},
  {question: 'Which country has the highest denomination of currency?', answer: 'Zimbabwe', deck_id: 1},
  {question: 'Which country has the highest value banknote?', answer: 'Switzerland', deck_id: 1},
  {question: 'How many countries call their currency "dollar"?', answer: '37', deck_id: 1},
  {question: 'What type of currency do they use in Madagascar?', answer: 'Ariary', deck_id: 1},
]

card_content2 = [
  {question: 'What is the Latin origin of the word "Ruby"?', answer: 'Rubens', deck_id: 2},
  {question: 'What mineral gives rubies their red color?', answer: 'Chromium', deck_id: 2},
  {question: 'How many million was the most expensive ruby ever sold?', answer: '7', deck_id: 2},
  {question: 'Which country discovered the ruby?', answer: 'India', deck_id: 2},
  {question: 'In what year was Ruby discovered?', answer: '1993', deck_id: 2}
]

card_content3 = [
  {question: 'What country was Bruce Willis born in?', answer: 'Germany', deck_id: 3},
  {question: "What is Jean-Claude Van Damme's nickname?", answer: 'muscles from brussles', deck_id: 3},
  {question: 'Which 90s action star is also a professionally trained opera singer?', answer: 'Jackie Chan', deck_id: 3},
  {question: 'Which 90s action star had parents who joined the Nazi party?', answer: 'Arnold Schwarzenegger', deck_id: 3},
  {question: 'What is the number on the roof of the bus in Speed?', answer: '2525', deck_id: 3}
]

users = [
  {email: "susan@susan.com", password: "00000"},
  {email: "ena@ena.com", password: "00000"},
  {email: "david@david.com", password: "00000"},
  {email: "homer@homer.com", password: "00000"},
  {email: "marge@marge.com", password: "00000"},
  {email: "lisa@lisa.com", password: "00000"}
]
Card.create!(card_content)
Card.create!(card_content2)
Card.create!(card_content3)
Deck.create!(category: 'World Currency')
Deck.create!(category: 'Ruby Facts')
User.create!(users)
