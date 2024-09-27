class Book {
  // Properties
  String title;
  String author;
  int publicationYear;
  int pagesRead;

  // Static property to track total number of books
  static int totalBooks = 0;

  // Constructor
  Book({
    required this.title,
    required this.author,
    required this.publicationYear,
    this.pagesRead = 0, // Default value of pagesRead is 0
  }) {
    totalBooks++; // Increment totalBooks when a new Book object is created
  }

  // Method to add pages to pagesRead
  void read(int pages) {
    pagesRead += pages;
  }

  // Getter methods
  int getPagesRead() {
    return pagesRead;
  }

  String getTitle() {
    return title;
  }

  String getAuthor() {
    return author;
  }

  int getPublicationYear() {
    return publicationYear;
  }

  // Method to calculate the age of the book
  int getBookAge() {
    int currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }
}

void main() {
  // Create three Book objects by Humayun Ahmed
  Book book1 = Book(
    title: 'Himu',
    author: 'Humayun Ahmed',
    publicationYear: 1990,
  );

  Book book2 = Book(
    title: 'Misir Ali Unsolved',
    author: 'Humayun Ahmed',
    publicationYear: 1995,
  );

  Book book3 = Book(
    title: 'Amar Ache Jol',
    author: 'Humayun Ahmed',
    publicationYear: 2000,
  );

  // Simulate reading pages for each book
  book1.read(120);
  book2.read(80);
  book3.read(150);

  // Print details for each book
  print('Book 1:');
  print('Title: ${book1.getTitle()}');
  print('Author: ${book1.getAuthor()}');
  print('Publication Year: ${book1.getPublicationYear()}');
  print('Pages Read: ${book1.getPagesRead()}');
  print('Book Age: ${book1.getBookAge()} years old\n');

  print('Book 2:');
  print('Title: ${book2.getTitle()}');
  print('Author: ${book2.getAuthor()}');
  print('Publication Year: ${book2.getPublicationYear()}');
  print('Pages Read: ${book2.getPagesRead()}');
  print('Book Age: ${book2.getBookAge()} years old\n');

  print('Book 3:');
  print('Title: ${book3.getTitle()}');
  print('Author: ${book3.getAuthor()}');
  print('Publication Year: ${book3.getPublicationYear()}');
  print('Pages Read: ${book3.getPagesRead()}');
  print('Book Age: ${book3.getBookAge()} years old\n');

  // Print total number of books created
  print('Total number of books created: ${Book.totalBooks}');
}
