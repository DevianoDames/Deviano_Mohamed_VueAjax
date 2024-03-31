
const mangaApp = Vue.createApp({


    created() {
        // Fetch manga data from Lumen API
        fetch('http://localhost:8888/AnimeManga-api/public/mangas/')
            .then(res => res.json())
            .then(data => {
                console.log(data);
                this.mangasData = data;
            })
            .catch(error => {
                console.error('Error fetching manga data:', error);
            });
    },
    data() {
        return {
            mangasData: [],
            mangakaInfo: {},
            isLoading: false,
            error: ''
        };
    },
    methods: {
        getManga(passedData){
            // we are declaring the passed data as passedData
            console.log(passedData);
            fetch(`http://localhost:8888/AnimeManga-api/public/mangas/${passedData}`)
            .then(res => res.json())
            .then(data => {
                console.log(data);
                //shortcut to the data i want
                const manga = data;
                    this.error = false;
                                        //condition ? trueExpression : falseExpression
                    this.mangakaName = manga.name;
 
            })
            .catch(error => {
                console.log(error);
                //Let the user know something went wrong in the app
            })
        }
    }
});
 
mangaApp.mount('#app');