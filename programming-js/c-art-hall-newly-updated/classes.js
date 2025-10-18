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

    loadArtsInElement(html) {
        for(let art of this.artsMap) {
            html.innerHTML += `
            <div class="item">
                <div>
                    <img class="item-image" src="${art[1].imageSource}">
                    <div class="icon"></div>

                </div>

                <div class="item-details"> 
                    <p class="major-title"> ${art[1].name} </p>
                    <p> ${art[1].creator} </p>
                    <p> ${art[1].type} </p>

                    <article> ${art[1].description} </article>
                
                </div>

            </div>`;
        }
    }
}

class Art {
    constructor(identifier, artName, artCreator, artType, artImage, artDescription) {
        this.identifier = identifier;

        this.name = artName;
        this.creator = artCreator;
        
        this.type = artType;
        this.imageSource = artImage; //FOR DEVICE IMAGES??
        
        this.description = artDescription;
    }
}