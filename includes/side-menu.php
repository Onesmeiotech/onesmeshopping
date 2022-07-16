<div class="side-menu animate-dropdown outer-bottom-xs">
    <div class="head"><i class="icon fa fa-align-justify fa-fw"></i> Categories</div>        
    <nav class="yamm megamenu-horizontal" role="navigation">
  
        <ul class="nav">
            <li class="dropdown menu-item">
              <?php $sql=mysqli_query($con,"select id,categoryName  from category");
while($row=mysqli_fetch_array($sql))
{
    ?>
                <a href="category.php?cid=<?php echo $row['id'];?>" class="dropdown-toggle"><i class="icon fa fa-desktop fa-fw"></i>
                <?php echo $row['categoryName'];?></a>
                <?php }?>
                        
</li>
</ul>
    </nav>
</div>
<div class="navme">
    <fieldset>
        <p class="mypar">We are a company that specialize in giving good services via E-commerce Platform and smooth delivery of goods to our customers</p>
    </fieldset>
</div>
<style>
    .navme{
        background:white;
        padding-right:40px;
        padding-left:40px;
        padding-top:20px;
        padding-bottom:20px;
    }
    .mypar{
        font-size:16px;
    }
</style>