import 'pixi';
import 'p2';
import Phaser from 'phaser';
import { preload, create, update } from './game.js';

const game = new Phaser.Game(800, 600, Phaser.AUTO, '', { preload, create, update });
