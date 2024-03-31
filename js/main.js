const mangaStore = Vue.createApp({
    created() {
        fetch('http://localhost:8888/AnimeManga/public/mangas')
        .then(res => res.json())
        .then(data =>{
            console.log(data)
            this.mangasData = data;
        })
        .catch(error => {
            console.log(error);
            //let the user know in app, something has gone wrong 
        })
    },
    data() {
        return {
            mangasData: [],
            firstSentence:"",
            ratingsAverage:"",
            authorName:"",
            numberOfPages: "",
            error: ""
        }
    },
    methods: {
        getManga(whichManga){
            console.log(whichManga);
            let title = whichManga;
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
                    this.firstSentence = manga.first_sentence ? manga.first_sentence[0]: 'Not available';
                    this.ratingsAverage = manga.ratings_average ? manga.ratings_average.toFixed(2): 'Not available';
                    this.mangakaName = manga.mangaka_name? manga.mangaka_name[0] : 'Not available';
                    this.numberOfPages = manga.number_of_pages_median ? manga.number_of_pages_median : 'Not available';
                }else {
                    this.error = "No Manga Was Found. Please Try Again";
                }
            })
            .catch(error => {
                console.log(error);
                //Let the user know something went wrong in the app
            })
        }
    }
});
mangaStore.mount("#app");