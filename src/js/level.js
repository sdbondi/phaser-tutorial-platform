export default function createLevel(game) {
  //  The platforms group contains the ground and the 2 ledges we can jump on
  const platforms = game.add.group();

  //  We will enable physics for any object that is created in this group
  platforms.enableBody = true;

  // Here we create the ground.
  const ground = platforms.create(0, game.world.height - 64, 'ground');

  //  Scale it to fit the width of the game (the original sprite is 400x32 in size)
  ground.scale.setTo(2, 2);

  //  This stops it from falling away when you jump on it
  ground.body.immovable = true;

  //  Now let's create two ledges
  const ledge = platforms.create(400, 400, 'ground');

  ledge.body.immovable = true;

  const ledge2 = platforms.create(-150, 250, 'ground');

  ledge2.body.immovable = true;

  return platforms;
}
