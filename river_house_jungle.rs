//Create a struct to store data information
struct EnvironmentData {
    temperature: f32,
    air_quality: i32,
    water_quality: i32,
    noise_level: i32,
}

//Function to capture and store data information from the environment
fn capture_environment_data() -> EnvironmentData {
    let temp = 37.5;
    let air_quality = 8;
    let water_quality = 10;
    let noise_level = 5;
    let env_data = EnvironmentData {
        temperature: temp,
        air_quality: air_quality,
        water_quality: water_quality,
        noise_level: noise_level,
    };

    env_data
}

//Function to print Environment Data
fn print_environment_data(env_data: EnvironmentData) {
    println!("Temperature: {}", env_data.temperature);
    println!("Air Quality: {}", env_data.air_quality);
    println!("Water Quality: {}", env_data.water_quality);
    println!("Noise Level: {}", env_data.noise_level);
}

//Function to set up a timer to regularly check the environment data
fn setup_timer(interval: u64, env_data: EnvironmentData) {
    let env_data_ref = &env_data;
    thread::spawn(move || {
        loop {
            thread::sleep(Duration::from_millis(interval));
            println!("Environmental data received");
            print_environment_data(env_data_ref.clone());
        }
    });
}

//Function to display message when environment changes
fn display_message(env_data: EnvironmentData) {
    let temp_difference = env_data.temperature - 30.0;
    let air_difference = env_data.air_quality - 5;
    let water_difference = env_data.water_quality - 8;
    let noise_difference = env_data.noise_level - 3;

    if temp_difference >= 5.0 {
        println!("The temperature has changed drastically!");
    }
    if air_difference >= 3 {
        println!("Air quality is not ideal!");
    }
    if water_difference >= 3 {
        println!("Water quality is not ideal!");
    }
    if noise_difference >= 3 {
        println!("Noise level is not ideal!");
    }
    
}

//Main function
fn main() {
    let env_data = capture_environment_data();
    setup_timer(1000, env_data.clone());
    display_message(env_data);
}