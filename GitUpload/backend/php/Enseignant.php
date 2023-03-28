<?php 
    class Enseignant {
        private int $Id_enseig;
        public string $Nom_enseig;
        public string $grad_enseig;
        public string $Aaddress_enseig;
        public array $themes;
        
        public function __construct(int $id){
            $this->Id_enseig = $id;
            $this->setEnseignantData();
            $this->setThemes();
        }
        
        public static function getEnseignantsIDs():array{
            $connection = new PDO($dsn, $dbuser, $dbuserpassword, $options);
            $sql = "SELECT Id_enseig FROM enseignant ";
            $statement =  $connection->prepare($sql);
            $statement-> execute();
            $result =  $statement-> fetchAll();
            return $result;
        }

        private function getEnseignantData(){
            $connection = new PDO($dsn, $dbuser, $dbuserpassword, $options);
            $sql = "SELECT Nom_enseig, grad_enseig, Aaddress_enseig FROM enseignant WHERE Id_enseig = :Id_enseig";
            $statement =  $connection->prepare($sql);
            $statement->bindValue('Id_enseig',this->Id_enseig);
            $statement-> execute();
            $result =  $statement-> fetch();
            return $result;
        }
        private function setEnseignantData(){
            $data = $this->getEnseignantData();
            $this->Nom_enseig = $data['Nom_enseig'];
            $this->grad_enseig = $data['grad_enseig'];
            $this->Aaddress_enseig = $data['Aaddress_enseig'];
        }
        private function getThemes(){
            $connection = new PDO($dsn, $dbuser, $dbuserpassword, $options);
            $sql = "SELECT Id_theme, intitule FROM theme WHERE Id_enseig = :Id_enseig";
            $statement =  $connection->prepare($sql);
            $statement->bindValue('Id_enseig',this->Id_enseig);
            $statement->execute();
            $result =  $statement->fetchAll();
            return $result;
        }
        private function setThemes(){
            $datas = $this->getThemes();
            $this->themes = [];
            foreach ($datas as $data){
                $this->themes[] = [
                    'Id_theme' => $data['Id_theme'],
                    'intitule' => $data['intitule']
                ];
            }
        }
    }