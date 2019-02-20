<?php
namespace App\models;

use Illuminate\Database\Eloquent\Model;

class category extends Model{

    protected $table = 't003_categories';
    private $id;
    public $name, $desc;

    public function __construct($name){
        $this->name = $name;
    }

    public function getName(){
        return $this->name;
    }

    public function getDesc(){
        return $this->desc;
    }

    public function getId(){
        return $this->id;
    }

    public function setName($name){
        $this->name = $name;
    }

    public function setDesc($desc){
        $this->desc = $desc;
    }
}