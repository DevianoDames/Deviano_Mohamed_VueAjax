import HeaderComp from '../js/components/MyHeader.js'

const mangaApp = Vue.createApp({
components:{
    headerdom: HeaderComp
},
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
            mangakaName: null,
            isLoading: false,
            error: '',
            lightboxOpen:false,
        };
    },
    methods: {
        openLightbox(){
            this.lightboxOpen=true;
        },
        closeLightbox(){
            this.lightboxOpen=false;
        },
        getManga(passedData){
            // we are declaring the passed data as passedData
            console.log(passedData);
            fetch(`http://localhost:8888/AnimeManga-api/public/mangas/${passedData}`)
            .then(res => res.json())
            .then(data => {
                console.log(data);
                //shortcut to the data i want
                const manga = data[0];
                    // this.error = false;
                    this.mangakaName = manga.title;
                    this.mangakaPublish = manga.published_date;
                    this.mangakaSummary = manga.summary;
                    this.mangakaImage = manga.manga_image;

            })
            .catch(error => {
                console.log(error);
                //Let the user know something went wrong in the app
            })
        }
    }
});

mangaApp.mount('#app');
