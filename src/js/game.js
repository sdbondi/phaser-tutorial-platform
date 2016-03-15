import Phaser from 'phaser';

import createLevel from './level';
import createPlayer from './player';

let level, player;

export function preload(game) {
  game.load.image('sky', 'assets/sky.png');
  game.load.image('ground', 'assets/platform.png');
  game.load.image('star', 'assets/star.png');
  game.load.spritesheet('dude', 'assets/dude.png', 32, 48);
}

export function create(game) {
  //  We're going to be using physics, so enable the Arcade Physics system
  game.physics.startSystem(Phaser.Physics.ARCADE);

  //  A simple background for our game
  game.add.sprite(0, 0, 'sky');

  level = createLevel(game);
  player = createPlayer(game);
}

export function update(game) {
  game.physics.arcade.collide(player, level);

  //  Reset the players velocity (movement)
  player.body.velocity.x = 0;

  const cursors = game.input.keyboard.createCursorKeys();

  if (cursors.left.isDown) {
    //  Move to the left
    player.body.velocity.x = -150;

    player.animations.play('left');
  }
  else if (cursors.right.isDown) {
    //  Move to the right
    player.body.velocity.x = 150;

    player.animations.play('right');
  }
  else {
    //  Stand still
    player.animations.stop();

    player.frame = 4;
  }

  //  Allow the player to jump if they are touching the ground.
  if (cursors.up.isDown && player.body.touching.down) {
    player.body.velocity.y = -350;
  }
}
