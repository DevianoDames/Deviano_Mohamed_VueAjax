const mangaApp = Vue.createApp({
    created() {
        // Fetch manga data from Lumen API
        fetch('http://localhost:8888/Deviano_Mohamed_VueAjax/mangas')
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
        getManga(title) {
            this.isLoading = true;
            setTimeout(() => {
                const selectedManga = this.mangasData.find(manga => manga.title === title);
                if (selectedManga) {
                    this.mangakaInfo = {
                        name: selectedManga.name,
                        email: selectedManga.email,
                        published_date: selectedManga.published_date,
                        manga_image: selectedManga.manga_image
                    };
                    this.isLoading = false;

                    // Optionally scroll to manga info section
                    // const mangaInfoCon = document.querySelector('#mangaInfoCon');
                    // if (mangaInfoCon) {
                    //     mangaInfoCon.scrollIntoView({ behavior: 'smooth' });
                    // }
                } else {
                    this.error = 'Manga not found. Please try again later.';
                    this.isLoading = false;
                }
            }, 1000);
        }
    }
});

mangaApp.mount('#app');
