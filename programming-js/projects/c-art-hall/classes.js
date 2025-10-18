class Arts {
    constructor() {
        this.artsMap = new Map();
    }

    pushArt(identifier, art) {
        this.artsMap.set(identifier, art);
    }
    
    loadArtsInConsole() {
        console.log(this.artsMap);
    }
}

class Art {
    constructor(identifier, artName, artCreator, artType, artDescription) {
        this.identifier = identifier;
        
        this.name = artName;
        this.creator = artCreator;
        this.type = artType;
        this.description = artDescription;
    }
}