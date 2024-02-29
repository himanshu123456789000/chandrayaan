# Chandrayaan 3 Lunar Craft: Galactic Space Craft Control
# Problem Statement
As a scientist at ISRO controlling the latest lunar spacecraft Chandrayaan 3, your task is to develop a program that translates commands sent from Earth into instructions understood by the spacecraft. The spacecraft navigates through the galaxy using galactic coordinates, represented by x, y, z coordinates (x for east or west location, y for north or south location, and z for distance above or below the galactic plane).

# Requirements
You will be given the initial starting point (x, y, z) of the spacecraft and the direction it is facing (N, S, E, W, Up, Down). The spacecraft receives a character array of commands, and you are required to implement the following functionalities:

Move the spacecraft forward/backward (f, b): The spacecraft moves one step forward or backward based on its current direction.
Turn the spacecraft left/right (l, r): The spacecraft rotates 90 degrees to the left or right, changing its facing direction.
Turn the spacecraft up/down (u, d): The spacecraft changes its angle, rotating upwards or downwards.
Note:

The spacecraft’s initial direction (N, S, E, W, Up, Down) represents the reference frame for movement and rotation.
The spacecraft cannot move or rotate diagonally; it can only move in the direction it is currently facing.
Assume that the spacecraft’s movement and rotations are rigid, and it cannot move beyond the galactic boundaries.

# Example
Given the starting point (0, 0, 0) following (x, y, z) and initial direction N, the following commands should result in the indicated final position and direction:

Commands: [“f”, “r”, “u”, “b”, “l”]

Starting Position: (0, 0, 0)

Initial Direction: N

“f” - (0, 1, 0) - N
“r” - (0, 1, 0) - E
“u” - (0, 1, 0) - U
“b” - (0, 1, -1) - U
“l” - (0, 1, -1) - N
Final Position: (0, 1, -1)

Final Direction: N

# Things To Keep In Mind
1. Host your solution on a public GitHub/GitLab repository.
2. Follow best practices for TDD.
3. Commit your changes frequently to show how your code evolves with every step of TDD.
4. Ensure your code is clean, readable, and modularized.
5. Do not throw exceptions/handle cases for invalid arguments.
6. Take your time and provide your best work.
7. Send us the link to your repository once you’re happy with what you’ve done.


# Setup the Chandrayaan

1. Clone the repository to your local machine: 
```bash 
git clone https://github.com/himanshu123456789000/chandrayaan.git
```

2. Navigate to the project directory
```bash
cd chandrayaan
```

3. Setup the rvm from official site https://rvm.io/rvm/install and install RUBY 3.0.0
```bash
rvm install 3.0.0
```

# Testing the Chandrayaan

On console Run:
```bash
rspec
```

# Take input from the user in Chandrayaan

To run Chandrayaan from user input:
```bash
ruby main.rb
```

Example:
```bash
developer@developer:~/Desktop/incubyte-master$ ruby main.rb
Welcome to Chandrayaan 3 Lunar Craft Control!
Enter the initial x-coordinate: 0       
Enter the initial y-coordinate: 0
Enter the initial z-coordinate: 0
Enter the initial direction (N/S/E/W/Up/Down): N
Enter commands (e.g., f for forward, l for left, etc.): f
Final Position: (0, 1, 0)
Final Direction: N
```

Ensure you have Ruby installed on your machine