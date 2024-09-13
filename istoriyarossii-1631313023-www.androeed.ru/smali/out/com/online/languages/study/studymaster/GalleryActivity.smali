.class public Lcom/online/languages/study/studymaster/GalleryActivity;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "GalleryActivity.java"


# instance fields
.field appSettings:Landroid/content/SharedPreferences;

.field galleryFragment:Lcom/online/languages/study/studymaster/fragments/GalleryFragment;

.field mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field navSection:Lcom/online/languages/study/studymaster/data/NavSection;

.field navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

.field openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

.field tCatID:Ljava/lang/String;

.field tSectionID:Ljava/lang/String;

.field themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

.field public themeTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BaseActivity;-><init>()V

    const-string v0, "01010"

    iput-object v0, p0, Lcom/online/languages/study/studymaster/GalleryActivity;->tSectionID:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/GalleryActivity;->tCatID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_16

    iget-object v0, p0, Lcom/online/languages/study/studymaster/GalleryActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "gallery"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;

    if-eqz v0, :cond_16

    invoke-virtual {v0, p1, p2, p3}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_16
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/GalleryActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/GalleryActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "theme"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/GalleryActivity;->themeTitle:Ljava/lang/String;

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/GalleryActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0028

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/GalleryActivity;->setContentView(I)V

    const p1, 0x7f0902e4

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/GalleryActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/GalleryActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/GalleryActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->setOrientation()V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "nav_structure"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/NavStructure;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/GalleryActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "section_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/GalleryActivity;->tSectionID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "cat_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/GalleryActivity;->tCatID:Ljava/lang/String;

    const-string v2, "root"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7f

    iget-object p1, p0, Lcom/online/languages/study/studymaster/GalleryActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/GalleryActivity;->tSectionID:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/online/languages/study/studymaster/data/NavStructure;->getNavSectionByID(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/NavSection;

    move-result-object p1

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/NavSection;->title:Ljava/lang/String;

    goto :goto_8b

    :cond_7f
    iget-object p1, p0, Lcom/online/languages/study/studymaster/GalleryActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/GalleryActivity;->tSectionID:Ljava/lang/String;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/GalleryActivity;->tCatID:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/online/languages/study/studymaster/data/NavStructure;->getNavCatFromSection(Ljava/lang/String;Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/NavCategory;

    move-result-object p1

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/NavCategory;->title:Ljava/lang/String;

    :goto_8b
    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/GalleryActivity;->setTitle(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;

    invoke-direct {p1}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/GalleryActivity;->galleryFragment:Lcom/online/languages/study/studymaster/fragments/GalleryFragment;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/GalleryActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    const-string v3, "structure"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/GalleryActivity;->tSectionID:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/GalleryActivity;->tCatID:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/GalleryActivity;->galleryFragment:Lcom/online/languages/study/studymaster/fragments/GalleryFragment;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/GalleryActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/GalleryActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0900af

    iget-object v1, p0, Lcom/online/languages/study/studymaster/GalleryActivity;->galleryFragment:Lcom/online/languages/study/studymaster/fragments/GalleryFragment;

    const-string v2, "gallery"

    invoke-virtual {p1, v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/GalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_18

    const v1, 0x7f090164

    if-eq v0, v1, :cond_14

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_14
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/GalleryActivity;->showInfoDialog()V

    return v2

    :cond_18
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/GalleryActivity;->finish()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/GalleryActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return v2
.end method

.method public openCatFromGallery(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const v0, 0x7f0902b3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/GalleryActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/online/languages/study/studymaster/GalleryActivity$1;-><init>(Lcom/online/languages/study/studymaster/GalleryActivity;Ljava/lang/String;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showInfoDialog()V
    .registers 4

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1100b5

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1100ad

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
