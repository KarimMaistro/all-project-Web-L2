<?php require_once('Enseignant.php') ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../CSS/style.css">
    <title>Thèmes Proposés</title>
</head>

<body>
    <header>
        <div class="header_left">
            <div class="logo">
                <img src="../image/LOGO.png" alt="#">
            </div>
        </div>
        <div class="header_right">
            <a href="Home.html">Home</a>
            <a href="Login.html">Login</a>
            <a href="Etudiant.html"><i class="fa-regular fa-graduation-cap"></i>Etudiant</a>
            <a href="enseignants.html">Enseignants</a>
            <a href="themes.html">Thèmes Proposés</a>
        </div>
    </header>
    <div class="form">
        <div class="form__box">
            <div class="Tableux">
                <table>
                    <caption>Les sujets proposés pour licence L3</caption>
                    <thead>
                        <tr>
                            <th>Id Theme</th>
                            <th>Nom-Encadrant</th>
                            <th>Grad</th>
                            <th>Email-Encadrant</th>
                            <th>Intitulé</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td rowspan="2">Boughrara</td>
                            <td rowspan="2">MCB</td>
                            <td rowspan="2">asma.bough@gmail.com</td>
                            <td>Développement d'une application web collaborative pour le tourisme local Algérien</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Développement d'une application Web pour guide virtuel des monuments classés en Algérie</td>
                        </tr>

                        <?php foreach(Enseignant::getEnseignantsIDs as $id):?>
                            <?php $enseignant = new Enseignant($id) ?>
                            <?php $Nom_enseig = $enseignant->Nom_enseig ;?>
                            <?php $grad_enseig = $enseignant->grad_enseig ;?>
                            <?php $Aaddress_enseig = $enseignant->Aaddress_enseig ;?>
                            <?php $themes = $enseignant->themes ; //must be array ?>
                        <tr>
                            <td><?php echo $themes[0]['Id_theme'] ; ?></td>
                            <td rowspan="<?php echo count($themes); ?>"> <?php echo $Nom_enseig ; ?></td>
                            <td rowspan="<?php echo count($themes); ?>"> <?php echo $grad_enseig ; ?></td>
                            <td rowspan="<?php echo count($themes); ?>"> <?php echo $Aaddress_enseig ; ?></td>
                            <td><?php echo $themes[0]['intitule'] ?></td>
                        </tr>
                        <?php for(int i=1 ; i<count($themes) ; i++):  ?>
                            <tr>
                                <td><?php echo $themes[i]['Id_theme']; ?></td>
                                <td><?php echo $themes[i]['intitule'] ?></td>
                            </tr>
                        <?php endfor; ?>
                        <?php endforeach; ?>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>

</html>