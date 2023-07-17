//This code will help create an interactive web page which focuses on the topic of environmentalism. 

//initialize global variables
let globalCO2Level = 400;
let globalPopulation = 7.6;
let globalClimateChange = false;

// functions

//increases the global CO2 level
function increaseCO2(amount) {
	globalCO2Level += amount;
}

//decreases the global CO2 level
function decreaseCO2(amount) {
	globalCO2Level -= amount;
}

//updates the global population
function updatePopulation(num) {
	globalPopulation = num;
}

//changes the value of globalClimateChange
function changeClimateChange(bool) {
	globalClimateChange = bool;
}

//Page content

//Header
const headerContainer = document.querySelector("#header-container");

const headerText = document.createElement("h1");
headerText.classList.add("header-text");
headerText.innerText = "Environmentally Speaking";
headerContainer.appendChild(headerText);

// Introduction
const introContainer = document.querySelector("#intro-container");

const introText = document.createElement("p");
introText.classList.add("intro-text");
introText.innerText = `Welcome! This page is dedicated to educating visitors about the importance of environmentalism and how we as individuals can be more mindful of our actions and their consequences on the environment.`;
introContainer.appendChild(introText);

//Statistics
const statContainer = document.querySelector("#stat-container");

const statText = document.createElement("p");
statText.classList.add("stat-text");
statText.innerText = `Currently, the global CO2 level is at ${globalCO2Level}ppm, the global population is at ${globalPopulation} billion people, and climate change is ${globalClimateChange ? "occurring" : "not occurring"}.`;
statContainer.appendChild(statText);

//Tips
const tipContainer = document.querySelector("#tip-container");

const tipHeading = document.createElement("h2");
tipHeading.classList.add("tip-heading");
tipHeading.innerText = "Here are some tips to help reduce your impact on the environment:";
tipContainer.appendChild(tipHeading);

const tipList = document.createElement("ul");
tipList.classList.add("tip-list");
tipContainer.appendChild(tipList);

const tip1 = document.createElement("li");
tip1.classList.add("tip-item");
tip1.innerText = "Drive less - use public transportation or carpool whenever possible";
tipList.appendChild(tip1);

const tip2 = document.createElement("li");
tip2.classList.add("tip-item");
tip2.innerText = "Minimize water usage - take shorter showers, use energy-efficient appliances, and water your plants in the evening";
tipList.appendChild(tip2);

const tip3 = document.createElement("li");
tip3.classList.add("tip-item");
tip3.innerText = "Reduce energy consumption - turn off lights and unplug appliances when not in use";
tipList.appendChild(tip3);

const tip4 = document.createElement("li");
tip4.classList.add("tip-item");
tip4.innerText = "Reduce waste - use reusable products, bring your own bags to the store, and compost food scraps";
tipList.appendChild(tip4);

//Donations
const donateContainer = document.querySelector("#donate-container");

const donateHeading = document.createElement("h2");
donateHeading.classList.add("donate-heading");
donateHeading.innerText = "If you would like to do more to help the environment, consider donating to one of these non-profit organizations:";
donateContainer.appendChild(donateHeading);

const donateList = document.createElement("ul");
donateList.classList.add("donate-list");
donateContainer.appendChild(donateList);

const donate1 = document.createElement("li");
donate1.classList.add("donate-item");
donate1.innerHTML = `<a href="https://www.nrdc.org/" target="_blank">Natural Resources Defense Council</a>`;
donateList.appendChild(donate1);

const donate2 = document.createElement("li");
donate2.classList.add("donate-item");
donate2.innerHTML = `<a href="https://www.edf.org/" target="_blank">Environmental Defense Fund</a>`;
donateList.appendChild(donate2);

const donate3 = document.createElement("li");
donate3.classList.add("donate-item");
donate3.innerHTML = `<a href="https://www.greenpeace.org/" target="_blank">Greenpeace</a>`;
donateList.appendChild(donate3);

const donate4 = document.createElement("li");
donate4.classList.add("donate-item");
donate4.innerHTML = `<a href="https://www.sierraclub.org/" target="_blank">Sierra Club</a>`;
donateList.appendChild(donate4);

//Conclusion
const conclusionContainer = document.querySelector("#conclusion-container");

const conclusionText = document.createElement("p");
conclusionText.classList.add("conclusion-text");
conclusionText.innerText = `We all can do our part in protecting the environment. Everyone's actions matter, and with enough small changes, we can make a big difference. Thanks for visiting!`;
conclusionContainer.appendChild(conclusionText);