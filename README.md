# Dice Roller on Leo Blockchain

Welcome to the future of decentralized dice rolling! The Dice Roller on Leo Blockchain is a breakthrough project that elevates your dice rolling experience to the next level of transparency and integrity. By utilizing the formidable Leo language, our project allows users to simulate the roll of dice with customizable features - number of rolls and number of sides on each dice.

## Features

- **Customizable Dice Rolling**: Tailor your dice rolling experience according to your preferences. Adjust the number of rolls and the number of sides on the dice effortlessly.

- **Blockchain Integration**: Every dice roll is securely and immutably recorded on the blockchain. This ensures an unprecedented level of trust and verification in the dice rolling process.

- **Leo Language Powered**: Harnessing the powerful and efficient [Leo](https://play.leo-lang.org/) language, the program guarantees a smooth and reliable operation, ensuring that the focus remains solely on the dice rolling.

## Structure

Here’s a quick look at the main components of the program:

### 1. **Structures and Mappings**

   - `Dice` structure: Contains information about the player, the number of rolls, the number of sides on the dice, and the total score.
   - Mapping from player addresses to their corresponding dice structure is maintained for results saving.

### 2. **Main Transition**

   - The `main` transition initializes the dice roll by setting the number of rolls and sides, as per the user input.
   - The total score is initially set to zero.

### 3. **Finalization**

   - The dice rolls are executed and the total score is calculated.
   - The dice structure is updated on the blockchain to reflect the outcome of the dice rolls.

```leo
// Simplified snippet of how dice roll is executed and saved in blockchain
finalize main (dice: Dice) {
    // ... (Dice rolling logic here)
    let newDice: Dice = Dice {
        player: dice.player,
        number_of_rolls: dice.number_of_rolls,
        number_of_sides: dice.number_of_sides,
        total: total,
    };
    
    Mapping::set(player_to_dice, dice.player, newDice);
}
```

## Seamless Blockchain Experience

By adopting blockchain technology, users are gifted with a seamless experience, where each dice roll’s outcome is not just a transient moment, but a permanently etched record in a secure environment. This approach promotes an ecosystem where integrity is innate and the user experience is enriched with the confidence and assurance that blockchain technology provides.
