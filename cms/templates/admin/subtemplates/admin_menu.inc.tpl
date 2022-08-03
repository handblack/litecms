<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <div class="container">


        <a class="navbar-brand" href="<?php echo BASE_URL; ?>/cms"><?php echo $settings['website_title']; ?></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExampleDefault">


            <ul class="navbar-nav mr-auto">

                    <li class="nav-item dropdown active">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo $lang['admin_menu_admin']; ?></a>
                        <div class="dropdown-menu" aria-labelledby="dropdown01">
                        <?php if($admin){ ?>
                            <a class="dropdown-item" href="<?php echo BASE_URL; ?>cms/index.php?mode=pages"><i class="far fa-file-alt fa-fw"></i> <?php echo $lang['admin_menu_page_overview']; ?></a>
                            <a class="dropdown-item" href="<?php echo BASE_URL; ?>cms/index.php?mode=edit"><i class="far fa-edit fa-fw"></i> <?php echo $lang['admin_menu_new_page']; ?></a>
                            <hr class="mt-1 mb-1">
                            <?php if ($user_type == 1){ ?>
                            <a class="dropdown-item" href="<?php echo BASE_URL; ?>cms/index.php?mode=settings"><i class="fas fa-tools fa-fw"></i> <?php echo $lang['admin_menu_settings']; ?></a>
                            <a class="dropdown-item" href="<?php echo BASE_URL; ?>cms/index.php?mode=menus"><i class="fas fa-bars fa-fw"></i> <?php echo $lang['admin_menu_edit_menus']; ?></a>
                            <?php } ?>
                            <a class="dropdown-item" href="<?php echo BASE_URL; ?>cms/index.php?mode=galleries"><i class="fas fa-bars fa-fw"></i> <?php echo $lang['admin_menu_edit_galleries']; ?></a>
                            <a class="dropdown-item" href="<?php echo BASE_URL; ?>cms/index.php?mode=comments"><i class="fas fa-bars fa-fw"></i> <?php echo $lang['admin_menu_edit_comments']; ?></a>
                            <a class="dropdown-item" href="<?php echo BASE_URL; ?>cms/index.php?mode=notes"><i class="fas fa-bars fa-fw"></i> <?php echo $lang['admin_menu_edit_notes']; ?></a>
                            <a class="dropdown-item" href="<?php echo BASE_URL; ?>cms/index.php?mode=gcb"><i class="fas fa-bars fa-fw"></i> <?php echo $lang['admin_menu_edit_gcb']; ?></a>
                            <a class="dropdown-item" href="<?php echo BASE_URL; ?>cms/index.php?mode=filemanager"><i class="fas fa-bars fa-fw"></i> <?php echo $lang['admin_menu_filemanager']; ?></a>
                            <?php if ($user_type == 1){ ?>
                            <a class="dropdown-item" href="<?php echo BASE_URL; ?>cms/index.php?mode=spam_protection"><i class="fas fa-bars fa-fw"></i> <?php echo $lang['admin_menu_spam_protection']; ?></a>
                            <?php } ?>
                            <a class="dropdown-item" href="<?php echo BASE_URL; ?>cms/index.php?mode=users"><i class="fas fa-bars fa-fw"></i> <?php echo $lang['admin_menu_edit_userdata']; ?></a>
                            <?php if ($settings['caching']){ ?>
                            <hr class="mt-1 mb-1">
                            <a class="dropdown-item" href="<?php echo BASE_URL; ?>cms/index.php?clear_cache=true"><i class="fas fa-bars fa-fw"></i> <?php echo $lang['admin_menu_clear_cache']; ?></a>
                            <?php } ?>
                        <?php } ?>
                        <?php if($admin){ ?>
                            <?php if (defined('PAGE') && $authorized_to_edit) { ?>
                                <a class="dropdown-item" href="<?php echo BASE_URL; ?>cms/index.php?mode=edit&amp;id=<?php echo $id; ?>"><span class="glyphicon glyphicon-pencil"></span> <?php echo $lang['admin_menu_edit_page']; ?></a>
                                <a class="dropdown-item" href="<?php echo BASE_URL; ?>cms/index.php?mode=pages&amp;delete_page=<?php echo $id; ?>"><span class="glyphicon glyphicon-pencil"></span> <?php echo $lang['admin_menu_delete_page']; ?></a>
                            <?php } ?>
                            <a class="dropdown-item" href="<?php echo BASE_URL; ?>cms/index.php?mode=logout"><span class="glyphicon glyphicon-off"></span> <?php echo $lang['admin_menu_logout']; ?></a>
                        <?php } ?>
                        </div>
                    </li>

            </ul>

        </div>
    </div>
</nav>


