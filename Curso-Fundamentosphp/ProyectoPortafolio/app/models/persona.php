<?php

namespace App\models;

class persona {
    
    public $name = '', $email, $username, $phone, $linkedin, $twitter, $resume, $birthdate, $address, $gender, $pass;
    public $profesion;

    public function __construct($nom, $prof){
        $this->name = $nom;
        $this->profesion = $prof;
    }

    public function setEmail($email){
        $this->email = $email;
    }
    public function setUsername($username){
        $this->username = $username;
    }
    public function setPhone($phone){
        $this->phone = $phone;
    }
    public function setLinkedin($linkedin){
        $this->linkedin = $linkedin;
    }
    public function setTwitter($twitter){
        $this->twitter = $twitter;
    }
    public function setResume($resume){
        $this->resume = $resume;
    }
    public function setBirthdate($birthdate){
        $this->birthdate = $birthdate;
    }
    public function setAddress($address){
        $this->address = $address;
    }
    public function setGender($gender){
        $this->gender = $gender;
    }
    public function setPass($pass){
        $this->pass = $pass;
    }


    public function getName(){
        return $this->name;
    }
    public function getEmail(){
        return $this->email;
    }
    public function getUsername(){
        return $this->username;
    }
    public function getPhone(){
        return $this->phone;
    }
    public function getLinkedin(){
        return $this->linkedin;
    }
    public function getTwitter(){
        return $this->twitter;
    }
    public function getResume(){
        return $this->resume;
    }
    public function getBirthdate(){
        return $this->birthdate;
    }
    public function getAddress(){
        return $this->address;
    }
    public function getGender(){
        return $this->gender;
    }

}