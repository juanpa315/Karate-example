package examples.books;

import com.intuit.karate.junit5.Karate;

public class BooksRunner {
    @Karate.Test
    Karate testUsers() {
        return Karate.run().tags("@deleteBook").relativeTo(getClass());
    }    
}
