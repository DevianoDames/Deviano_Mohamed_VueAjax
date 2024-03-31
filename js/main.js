const bookStore = Vue.createApp({
    created() {
        fetch('http://localhost:8888/bookstore-api/public/books')
        .then(res => res.json())
        .then(data =>{
            console.log(data)
            this.booksData = data;
        })
        .catch(error => {
            console.log(error);
            //let the user know in app, something has gone wrong 
        })
    },
    data() {
        return {
            booksData: [],
            firstSentence:"",
            ratingsAverage:"",
            authorName:"",
            numberOfPages: "",
            error: ""
        }
    },
    methods: {
        getBook(whichBook){
            console.log(whichBook);
            let title = whichBook;
            let convertedTilte = title.split(' ').join('+');
            console.log(convertedTilte);
            fetch(`https://openlibrary.org/search.json?q=${convertedTilte}`)
            .then(res => res.json())
            .then(data => {
                console.log(data.docs[0]);
                //shortcut to the data i want
                const book = data.docs[0];
                if(data.docs.length > 0) {
                    this.error = false;
                                        //condition ? trueExpression : falseExpression
                    this.firstSentence = book.first_sentence ? book.first_sentence[0]: 'Not available';
                    this.ratingsAverage = book.ratings_average ? book.ratings_average.toFixed(2): 'Not available';
                    this.authorName = book.author_name? book.author_name[0] : 'Not available';
                    this.numberOfPages = book.number_of_pages_median ? book.number_of_pages_median : 'Not available';
                }else {
                    this.error = "No Book Was Found. Please Try Again";
                }
            })
            .catch(error => {
                console.log(error);
                //Let the user know something went wrong in the app
            })
        }
    }
});
bookStore.mount("#app");