const artsDatabase = new Arts();

function pushDefaults() {
    const m1 = new Art(
        "M1", 
        "La Roseta Del Vinci", 
        "Leonardo Da Vinci",
        "https://images.unsplash.com/flagged/photo-1572392640988-ba48d1a74457?q=80&w=764&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",

        "Natural Arts", 
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita eaque voluptatibus, aperiam voluptas incidunt rerum perspiciatis dolorem reprehenderit saepe iure porro modi magnam illo obcaecati. Laudantium quam praesentium in quasi?"
    );

    for(let a = 1; a <= 4; a++)
        artsDatabase.pushArt(`m${a}`, m1);
}



//pushDefaults();

//artsDatabase.loadArtsInElement(document.getElementById("artsOutput"));