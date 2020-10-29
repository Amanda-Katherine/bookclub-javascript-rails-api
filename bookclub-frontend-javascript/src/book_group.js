class BookGroup {

    static allGroups = []

    constructor(group) {
        // debugger
        this.name = group.name
        this.id = group.id
        BookGroup.allGroups.push(this)

        this.books = group.books.map(book => new Book(book))
        this.suggestions = group.suggestions.map(suggestion => new Suggestion(suggestion))
        this.gatherings = group.gatherings.map(gathering => new Gathering(gathering))
        this.members = group.members.map(member => new Member(member))
    }

    static fetchClubNames() {
        // let grpContainer = document.getElementById('group-container')

        fetch("http://localhost:3000/book_groups")
        .then(r => r.json())
        .then(groups => {
            for (let group of groups) {
                let newGroup = new BookGroup(group)
            }
            // console.log(groups)
            // console.log(this)
            this.renderGroups()  
        })
    }
    
    static renderGroups() {
        // let oldCont = document.getElementById("group-container")
        // oldCont.remove()
       
        // appContainer.append(groupContainer)
        grpContainer.innerHTML = ""
        
        for (let group of BookGroup.allGroups) {
            group.renderGroup()
        }
    }

    renderGroup() {
        
        // grpContainer.innerHTML = ""

        let groupDiv = document.createElement('div')

        let pgh = document.createElement('p')
        pgh.id = `group-${this.id}` 
        pgh.innerText = this.name

        groupDiv.append(pgh)
        grpContainer.append(groupDiv)
        appContainer.append(grpContainer)
        let groupId = this.id - 1

        pgh.addEventListener('click', function(){BookGroup.allGroups[groupId].showGroup()})        
    }

    showGroup() {
        debugger
        grpContainer.innerHTML = `<h2>${this.name}</h2>`
        grpContainer.id = `${this.id} - group`
        // let groupId = this.id
        let groupSuggestedBookIds = []
        let groupSuggestedBooks = []
        // let groupSuggestions = this.suggestions

        for (let suggestion of this.suggestions) {
            groupSuggestedBookIds.push(suggestion.book_id)
        }

        for (let bookId of groupSuggestedBookIds) {
            for (let book of Book.allBooks) {
                if (bookId === book.id) {
                    groupSuggestedBooks.push(book)
                }
            }
        }
        debugger
        // findGroupSuggestions()

        // console.log(this)
        // console.log(this.suggestions)

        grpContainer.innerHTML = ""
        // debugger
        // let container = 
    }



}