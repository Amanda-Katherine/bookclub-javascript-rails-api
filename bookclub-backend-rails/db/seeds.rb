Book.create(title: "The Count of Monte Cristo", author: "Alexandre Dumas", image: "http://books.google.com/books/content?id=MVtoAwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api", description: "Wrongfully imprisoned for 14 years, Edmond Dantès escapes to the island of Monte Cristo. What awaits him there is a fortune in gold--and a new identity with which to pursue his revenge and redemption.")
Book.create(title: "Born A Crime", author: "Trevor Noah", image: "http://books.google.com/books/content?id=dAzJCwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api", description: "Trevor Noah grew up in South Africa with a black South African mother and a white Swiss father at a time when it was against the law for a mixed race child to exist. But Trevor did exist. In Born a crime, Trevor shares what his life was like growing up. The stories he tells in this book will make you laugh, cry and fill you with wonder and inspirations as you learn how this mischievous young boy used his quick wits and humour to get through his day-to-day life. Against all odds and with his mother's unfailing love and belief in him. Trevor overcame many obstacles to create a promising future for himself.")
Book.create(title: "Into the Wild", author: "John Krakauer", image: "http://books.google.com/books/content?id=waBwNtI6rSwC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api", description: "INTO THE WILD is based on a true story and the bestselling book by Jon Krakauer. After graduating from Emory University in 1992, top student and athlete Christopher McCandless (Hirsch) abandons his possessions, gave his entire $24,000 savings account to charity and hitchhiked to Alaska to live in the wilderness. Along the way, Christopher encounters a series of characters that shape his life.")
Book.create(title: "Moby Dick", author: "Herman Melville", image: "https://images-na.ssl-images-amazon.com/images/I/41WMBltiqdL._SL160_.jpg", description: "First published in 1851, Melville's masterpiece is, in Elizabeth Hardwick's words, 'the greatest novel in American literature.' The saga of Captain Ahab and his monomaniacal pursuit of the white whale remains a peerless adventure story but one full of mythic grandeur, poetic majesty, and symbolic power. Filtered through the consciousness of the novel's narrator, Ishmael, Moby-Dick draws us into a universe full of fascinating characters and stories, from the noble cannibal Queequeg to the natural history of whales, while reaching existential depths that excite debate and contemplation to this day.")
Book.create(title: "One Hundred Years of Solitude", author: "Gabriel Garcia Marquez",image: "https://images-na.ssl-images-amazon.com/images/I/51tkcSAhSDL._SL160_.jpg", description: "One of the 20th century's enduring works, One Hundred Years of Solitude is a widely beloved and acclaimed novel known throughout the world, and the ultimate achievement in a Nobel Prize–winning career. The novel tells the story of the rise and fall of the mythical town of Macondo through the history of the Buendía family. It is a rich and brilliant chronicle of life and death, and the tragicomedy of humankind. In the noble, ridiculous, beautiful, and tawdry story of the Buendía family, one sees all of humanity, just as in the history, myths, growth, and decay of Macondo, one sees all of Latin America. Love and lust, war and revolution, riches and poverty, youth and senility — the variety of life, the endlessness of death, the search for peace and truth — these universal themes dominate the novel. Whether he is describing an affair of passion or the voracity of capitalism and the corruption of government, Gabriel García Márquez always writes with the simplicity, ease, andpurity that are the mark of a master. Alternately reverential and comical, One Hundred Years of Solitude weaves the political, personal, and spiritual to bring a new consciousness to storytelling. Translated into dozens of languages, this stunning work is no less than an accounting of the history of the human race.")
Book.create(title: "The Great Gatsby", image: "https://images-na.ssl-images-amazon.com/images/I/41iers%2BHLSL._SL160_.jpg", description: "The novel chronicles an era that Fitzgerald himself dubbed the 'Jazz Age'. Following the shock and chaos of World War I, American society enjoyed unprecedented levels of prosperity during the 'roaring' 1920s as the economy soared. At the same time, Prohibition, the ban on the sale and manufacture of alcohol as mandated by the Eighteenth Amendment, made millionaires out of bootleggers and led to an increase in organized crime, for example the Jewish mafia. Although Fitzgerald, like Nick Carraway in his novel, idolized the riches and glamor of the age, he was uncomfortable with the unrestrained materialism and the lack of morality that went with it, a kind of decadence.")

BookGroup.create(name: "The Bookworms", password: "pass")
BookGroup.create(name: "The Wild Readers", password: "pass")
BookGroup.create(name: "All Booked", password: "pass")
BookGroup.create(name: "Booked Ends", password: "pass")

Member.create(first_name: "Megan", last_name: "Rapinoe", password: "pass", book_group_id: "2")
Member.create(first_name: "Sue", last_name: "Bird", password: "pass", book_group_id: "2")
Member.create(first_name: "Larry", last_name: "Fitzgerald", password: "pass", book_group_id: "1")
Member.create(first_name: "LeBron", last_name: "James", password: "pass", book_group_id: "4")
Member.create(first_name: "Randy", last_name: "Johnson", password: "pass", book_group_id: "1")
Member.create(first_name: "Jackie", last_name: "Robinson", password: "pass", book_group_id: "4")
Member.create(first_name: "Babe", last_name: "Ruth", password: "pass", book_group_id: "3")
Member.create(first_name: "Brett", last_name: "Favre", password: "pass", book_group_id: "1")
Member.create(first_name: "Wes", last_name: "Welker", password: "pass", book_group_id: "3")
Member.create(first_name: "Joe", last_name: "Montana", password: "pass", book_group_id: "4")
Member.create(first_name: "Al", last_name: "Horford", password: "pass", book_group_id: "2")
Member.create(first_name: "Ryan", last_name: "Fitzpatrick", password: "pass", book_group_id: "2")
Member.create(first_name: "Gardner", last_name: "Minshew", password: "pass", book_group_id: "3")


Gathering.create(host: "Larry", date: "11/15/20", address: "123 Cardinal St, Phoenix, AZ 01010", time: "7:30 PM", book_group_id: "1", book_id: "1")
Gathering.create(host: "Megan", date: "11/10/20", address: "456 Sound Ave, Seattle, WA 02341", time: "6:45 PM", book_group_id: "2", book_id: "1")
Gathering.create(host: "Al", date: "11/28/20", address: "21 Celtics Way, Miami, FL 92987", time: "5:30 PM", book_group_id: "2", book_id: "2")
Gathering.create(host: "Babe", date: "12/5/20", address: "76 Yankee Lane, NY, NY, 00010", time: "7:00 PM", book_group_id: "3", book_id: "3")
Gathering.create(host: "Gardner", date: "1/2/21", address: "8 Jaguar Ct, Jacksonville, FL, 92873", time: "7:00 PM", book_group_id: "3", book_id: "4")
Gathering.create(host: "Ryan", date: "12/17/20", address: "76 Dolphin Loop, Miami, FL, 23452", time: "7:15 PM", book_group_id: "2", book_id: "5")
Gathering.create(host: "Sue", date: "11/15/20", address: "76 Stormy Way, Seattle, WA, 02341", time: "6:00 PM", book_group_id: "4", book_id: "6")


Suggestion.create(book_id: "1", book_group_id: "1")
Suggestion.create(book_id: "1", book_group_id: "2", vote: "7")
Suggestion.create(book_id: "1", book_group_id: "3", vote: "4")

Suggestion.create(book_id: "2", book_group_id: "2", vote: "11")
Suggestion.create(book_id: "2", book_group_id: "3", vote: "2")
Suggestion.create(book_id: "2", book_group_id: "4", vote: "5")


Suggestion.create(book_id: "3", book_group_id: "1", vote: "3")
Suggestion.create(book_id: "3", book_group_id: "2", vote: "9")

Suggestion.create(book_id: "4", book_group_id: "1", vote: "7")
Suggestion.create(book_id: "4", book_group_id: "4", vote: "0")

Suggestion.create(book_id: "5", book_group_id: "1", vote: "9")
Suggestion.create(book_id: "5", book_group_id: "3", vote: "2")
Suggestion.create(book_id: "5", book_group_id: "4", vote: "0")

Suggestion.create(book_id: "6", book_group_id: "2", vote: "1")
Suggestion.create(book_id: "6", book_group_id: "4", vote: "1")
Suggestion.create(book_id: "6", book_group_id: "3", vote: "2")
# Suggestion.create(title: "", author: "", image: "", description: "")
# Suggestion.create(title: "", author: "", image: "", description: "")
# Suggestion.create(title: "", author: "", image: "", description: "")
# Suggestion.create(title: "", author: "", image: "", description: "")