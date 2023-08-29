# SummerWave Hotels (Final Capstone)

<a id="readme-top"></a>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
  - [🎬 Representation](#representation)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 SummerWave Hotels (Backend) <a id="about-project"></a>

**SummerWave Hotels** is a website to reserve rooms for the SummerWave Hotel chains. You can select available rooms from a gaphic list in the home page of the website, or you can just click on the reserve menu item and see the full list of available rooms and the city in which they are available. You can find the repository for the [front end ](https://github.com/dev89s/final-capstone-front-end)here.

Backend is implemented as API-only. The front end is implemented utilizing the React framework.

You can find the setup of the Kanban board [here](https://github.com/abeltsew/final_capstone_be/issues/13).

## 🛠 Built With <a id="built-with"></a>

### Tech Stack <a id="tech-stack"></a>

<details>
  <summary>Ruby on Rails</summary>
  <ul>
    <li><a>https://rubyonrails.org/</a></li>
    <!-- <li><a>https://rubyonrails.org/</a></li> -->
  </ul>
</details>

<!-- Features -->

### Key Features <a id="key-features"></a>

- **Ability to see the featured rooms in the homepage**
- **The ability to reserve rooms based by selecting the city, date and room name**
- **The ability to add rooms the the database**
- **The ability to deactivate rooms and make them unavailable to reserve**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🚀 Live Demo <a id="live-demo"></a>

You can see a live demo for the backend-api [here](https://summerwave.onrender.com/).
You can find the documentation for the backend api [here](https://summerwave.onrender.com/api-docs/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ## 🎬 Representaition <a id="representation"></a> -->

<!-- not added -->

<!-- <p align="right">(<a href="#readme-top">back to top</a>)</p> -->

<!-- GETTING STARTED -->

## 💻 Getting Started <a id="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- Install Ruby
- Install Rails
- Install Postgresql
<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Setup

Clone this repository to your desired folder:

```
git clone https://github.com/abeltsew/final_capstone_be.git
```

### Install

Install this project with these commands:

```
  cd final_capstone_be
  bundle install
  rails db:create
  rails db:migrate
  rails db:seed
```
<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Usage

To run the project, execute the following command:

```
  rails s -p 3000
```

or

```
./bin/dev
```
<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Tests

To run the tests, the following command should be executed:

```
  rspec spec
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ### Deployment <a id="triangular_flag_on_post-deployment"></a>

- [N/A]

<p align="right">(<a href="#readme-top">back to top</a>)</p> -->

<!-- AUTHORS -->

## 👥 Author <a id="authors"></a>

👤 **Sasan Moshirabadi**

- GitHub: [@dev89s](https://github.com/dev89s)
- LinkedIn: [LinkedIn](https://linkedin.com/in/sasan-moshirabadi)

👤 **Abel Tsegaye**

- GitHub: [@abeltsew](https://github.com/abeltsew)
- Twitter: [@abeltsew](https://twitter.com/abeltsew)
- LinkedIn: [abeltsew](https://linkedin.com/in/abeltsew)

👤 **Ikoote Rasuli**

- GitHub: [@ikoote1](https://github.com/ikoote1)
- LinkedIn: [Ikoote Rasuli](https://www.linkedin.com/in/ikooterasuli/)

👤 **TayyabKM**

- Github: [@TayyabKM](https://github.com/TayyabKM)
- Twitter: [@TayyabI83126361](https://twitter.com/TayyabI83126361)
- Linkedin: [@tayyab-irfan-01b72b1aa](https://www.linkedin.com/in/tayyab-irfan-01b72b1aa/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a id="future-features"></a>

- [ ] **Make the rooms unavailable to be reserved if there is a reservation for the same period**
- [ ] **Add Dark Mode**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a id="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/abeltsew/final_capstone_be/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a id="support"></a>

If you like this project please show support by staring ⭐️.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a id="acknowledgements"></a>

- We would like to thank my team and my coding partners for their support and guidance.
- The Design reference for the website belongs to [Murat Korkmaz](https://www.behance.net/muratk). You can find the reference [here](https://www.behance.net/gallery/26425031/Vespa-Responsive-Redesign)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a id="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
