import ballerina/io;

LibraryClient ep = check new ("http://localhost:9090");


public function main() returns error? {
    
    io:println("\n\n\nCreate-Users");
    io:println("=============================================================================================================================");
    User[] users = [
        {user_id: "1", full_name: "user1", role: "STUDENT"},
        {user_id: "2", full_name: "user2", role: "STUDENT"},
        {user_id: "3", full_name: "user3", role: "LIBRARIAN"}
        ];
    CreateUsersStreamingClient createUsersStreamingClient = check ep->createUsers();
    foreach var user in users{
        check createUsersStreamingClient->sendUser(user);
    }
    check createUsersStreamingClient->complete();
    Message? createUsersResponse = check createUsersStreamingClient->receiveMessage();
    io:println(createUsersResponse);


    // io:println("\nADD BOOK");
    // io:println("=============================================================================================================================");
    // ISBN addBookResponse = check ep->addBook({isbn: "ISBN1", title: "Bible", author1: "author1", author2: "author2", location: "A1", borrowed_by: "", available: true});
    // ISBN addBookResponse2 = check ep->addBook({isbn: "ISBN2", title: "History", author1: "author1", author2: "author2", location: "A1", borrowed_by: "", available: true});
    // ISBN addBookResponse3 = check ep->addBook({isbn: "ISBN3", title: "Science", author1: "author1", author2: "author2", location: "A1", borrowed_by: "", available: true});
    // io:println(addBookResponse);
    // io:println(addBookResponse2);
    // io:println(addBookResponse3);


    // io:println("\n\n\nSearch-Book");
    // io:println("=============================================================================================================================");
    // Message searchBookByTitleRequest = {message: "s"};
    // ListOfBooks searchBookByTitleResponse = check ep->searchBookByTitle(searchBookByTitleRequest);
    // io:println(searchBookByTitleResponse);


    // io:println("\n\n\nList-Available-Books");
    // io:println("=============================================================================================================================");
    // Empty listAvailableBooksRequest00 = {};
    // ListOfBooks listAvailableBooksResponse00 = check ep->listAvailableBooks(listAvailableBooksRequest00);
    // io:println(listAvailableBooksResponse00);


    // io:println("\n\n\nBorrow-Book");
    // io:println("=============================================================================================================================");
    // BorrowingInformation borrowBookRequest = {user_id: "1", isbn: "book1"};
    // Message borrowBookResponse = check ep->borrowBook(borrowBookRequest);
    // io:println(borrowBookResponse);


    // io:println("\n\n\nLocate-Book");
    // io:println("=============================================================================================================================");
    // ISBN locateBookRequest = {isbn: "book3"};
    // BookEnquiryResponse locateBookResponse = check ep->locateBook(locateBookRequest);
    // io:println(locateBookResponse);


    // io:println("\n\n\nUpdate-Book");
    // io:println("=============================================================================================================================");
    // Book updateBookRequest = {isbn: "book1", title: "maths", author1: "N.Nashandi", author2: "I.Makosa", location: "A1", borrowed_by: "", available: true};
    // Message updateBookResponse = check ep->updateBook(updateBookRequest);
    // io:println(updateBookResponse);


    // io:println("\n\n\nRemove-Book");
    // io:println("=============================================================================================================================");
    // ISBN removeBookRequest = {isbn: "book4"};
    // ListOfBooks removeBookResponse = check ep->removeBook(removeBookRequest);
    // io:println(removeBookResponse);


    // io:println("\n\n\nReturn-Book");
    // io:println("=============================================================================================================================");
    // BorrowingInformation returnBookRequest = {user_id: "1", isbn: "book1"};
    // Message returnBookResponse = check ep->returnBook(returnBookRequest);
    // io:println(returnBookResponse);
}



// public function main() returns error? {

//     ISBN isbnResponse = check ep->addBook({isbn: "abc", title: "Intro to Biology", author1: "James Bond", author2: "John Terry", location: "A1", borrowed_by: "", available: true});
//     io:println(isbnResponse);

    
//     ListOfBooks listAvailableBooksResponse00 = check ep->listAvailableBooks({});
//     io:println(listAvailableBooksResponse00);


//     Message updateBookResponse = check ep->updateBook({isbn: "abc", title: "Intro to Mathematics", author1: "Steve Jobs", author2: "Bill Gates", location: "A1", borrowed_by: "", available: true});
//     io:println(updateBookResponse);


//     ListOfBooks removeBookResponse = check ep->removeBook({isbn: "abc"});
//     io:println(removeBookResponse);


//     User[] users = [
//         {user_id: "1", full_name: "user1", role: "STUDENT"},
//         {user_id: "2", full_name: "user2", role: "STUDENT"},
//         {user_id: "3", full_name: "user3", role: "LIBRARIAN"}
//         ];
//     CreateUsersStreamingClient createUsersStreamingClient = check ep->createUsers();
//     foreach var user in users{
//         check createUsersStreamingClient->sendUser(user);
//     }
//     check createUsersStreamingClient->complete();
//     Message? createUsersResponse = check createUsersStreamingClient->receiveMessage();
//     io:println(createUsersResponse);


//     BookEnquiryResponse locateBookResponse = check ep->locateBook({isbn: "book3"});
//     io:println(locateBookResponse);


//     Message borrowBookResponse = check ep->borrowBook({user_id: "1", isbn: "book1"});
//     io:println(borrowBookResponse);


//     ListOfBooks listBorrowedBooksResponse = check ep->listBorrowedBooks({});
//     io:println(listBorrowedBooksResponse);


//     Message returnBookResponse = check ep->returnBook({user_id: "1", isbn: "book1"});
//     io:println(returnBookResponse);


//     ListOfBooks searchBookByTitleResponse = check ep->searchBookByTitle({message: "intro"});
//     io:println(searchBookByTitleResponse);
// }

