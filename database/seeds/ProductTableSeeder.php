<?php

use Illuminate\Database\Seeder;

class ProductTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $product = new \App\Product([
            'imagePath' => 'http://www.barasado.com/resources/uploads/sun32.jpg',
            'title' => 'Tales of Berseria',
            'description' => 'PS4',
            'price' => 20
        ]);
        $product->save();
        $product = new \App\Product([
            'imagePath' => 'http://www.barasado.com/resources/uploads/professional-video-camera.jpg',
            'title' => 'Sonny',
            'description' => 'Professional Camera with high resolutions!',
            'price' => 10
        ]);
        $product->save();
        $product = new \App\Product([
            'imagePath' => 'http://www.barasado.com/resources/uploads/sun45.jpg',
            'title' => 'Addidas Running shoe',
            'description' => 'Great for walking and running',
            'price' => 79
        ]);
        $product->save();
        $product = new \App\Product([
            'imagePath' => 'http://www.barasado.com/resources/uploads/sun1.jpg',
            'title' => 'Elegant dress for special occassion',
            'description' => 'Great for wedding occassions and that special day!',
            'price' => 250
        ]);
        $product->save();
        $product = new \App\Product([
            'imagePath' => 'http://www.barasado.com/resources/uploads/sun58.jpg',
            'title' => 'HERP4 ',
            'description' => 'With high resolutions and motion detectors',
            'price' => 500
        ]);
        $product->save();
        
        $product = new \App\Product([
            'imagePath' => 'http://www.barasado.com/resources/uploads/sun50.jpg',
            'title' => 'Canon',
            'description' => 'Perfect for safari travellers and site seeing vacations!',
            'price' => 20
        ]);
        $product->save();
    }
}

