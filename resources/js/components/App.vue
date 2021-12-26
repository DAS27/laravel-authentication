<template>
    <div class="w-full">
        <h2 class="text-gray-900 text-2xl mb-8 font-medium title-font">Welcome</h2>
        <div v-for="entry in entries" :id="entry.id">
            <h3 class="text-gray-900 mb-1 font-medium title-font" v-text="entry.title"></h3>
            <p class="text-gray-500 mb-1 font-normal" v-text="entry.content"></p>
        </div>
        <button
            class="text-white bg-indigo-500 border-0 py-2 px-6 mr-4 focus:outline-none hover:bg-indigo-600 rounded text-lg"
            @click="getEntries"
        >Get My Entries</button>
    </div>
</template>
<script>
    export default {
        data() {
            return {
                entries: [],
            }
        },
        methods: {
            getEntries() {
                axios.get('/api/entries').then(response => {
                    this.entries = response.data;
                })
            }
        }
    }
</script>
