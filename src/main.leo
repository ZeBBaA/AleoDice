// The 'dice' program.
program dice.aleo {
    mapping player_to_dice: address => Dice;

    struct Dice {
        player: address,
        number_of_rolls: u8,
        number_of_sides: u8,
        total: u16,
    }

    transition main(number_of_rolls: u8, number_of_sides: u8) -> Dice {
        let dice: Dice = Dice {
            player: self.caller,
            number_of_rolls: number_of_rolls,
            number_of_sides: number_of_sides,
            total: 0u16,
        };

        return dice then finalize(dice);
    }

    finalize main (dice: Dice) {
        assert(dice.number_of_rolls > 0u8);
        assert(dice.number_of_sides > 0u8);

        let total: u16 = 0u16;

        for throw: u8 in 0u8..255u8 {
            if (throw < dice.number_of_rolls) {
                total += (ChaCha::rand_u8() % dice.number_of_sides + 1u8) as u16;
            }
        }

        let newDice: Dice = Dice {
            player: dice.player,
            number_of_rolls: dice.number_of_rolls,
            number_of_sides: dice.number_of_sides,
            total: total,
        };

        Mapping::set(player_to_dice, dice.player, newDice);
    }
}
