const artsDatabase = new Arts();

function pushDefaults() {
    const m1 = new Art(
        "M1", 
        "La Roseta Del Vinci", 
        "Leonardo Da Vinci", 
        "Natural Arts", 
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita eaque voluptatibus, aperiam voluptas incidunt rerum perspiciatis dolorem reprehenderit saepe iure porro modi magnam illo obcaecati. Laudantium quam praesentium in quasi?"
    );

    artsDatabase.pushArt("m1", m1);
}

pushDefaults();
artsDatabase.loadArtsInConsole();