.class public Lcom/online/languages/study/studymaster/CustomDataActivity;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "CustomDataActivity.java"


# static fields
.field public static catId:Ljava/lang/String;

.field public static sectionId:Ljava/lang/String;


# instance fields
.field adapter:Lcom/online/languages/study/studymaster/adapters/CustomDataPagerAdapter;

.field adapterListType:I

.field appSettings:Landroid/content/SharedPreferences;

.field dataItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

.field dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

.field easy_mode:Ljava/lang/Boolean;

.field emptyTxt:Landroid/view/View;

.field listType:I

.field navSection:Lcom/online/languages/study/studymaster/data/NavSection;

.field navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

.field openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

.field public themeTitle:Ljava/lang/String;

.field viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BaseActivity;-><init>()V

    return-void
.end method

.method private getCatTitleById(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/data/NavStructure;->getUniqueCats()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "\u0421\u043f\u0438\u0441\u043e\u043a"

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/data/NavCategory;

    iget-object v3, v2, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v1, v2, Lcom/online/languages/study/studymaster/data/NavCategory;->title:Ljava/lang/String;

    goto :goto_c

    :cond_23
    return-object v1
.end method

.method private setActiveTab(I)V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_d

    const/4 p1, -0x1

    if-ne p2, p1, :cond_d

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CustomDataActivity;->updateLists(I)V

    :cond_d
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "theme"

    const-string v1, "default"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->themeTitle:Ljava/lang/String;

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, p1, v2}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    const p1, 0x7f0c0022

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CustomDataActivity;->setContentView(I)V

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->setOrientation()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->adapterListType:I

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CustomDataActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "section_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/online/languages/study/studymaster/CustomDataActivity;->sectionId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CustomDataActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "cat_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/online/languages/study/studymaster/CustomDataActivity;->catId:Ljava/lang/String;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "data_mode"

    const-string v2, "2"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->easy_mode:Ljava/lang/Boolean;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    const p1, 0x7f0902e4

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CustomDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CustomDataActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CustomDataActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CustomDataActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "data_type"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->listType:I

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CustomDataActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "nav_structure"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/NavStructure;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    sget-object v0, Lcom/online/languages/study/studymaster/CustomDataActivity;->sectionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/online/languages/study/studymaster/data/NavStructure;->getNavSectionByID(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/NavSection;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    sget-object p1, Lcom/online/languages/study/studymaster/CustomDataActivity;->catId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/CustomDataActivity;->getCatTitleById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CustomDataActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f0900ea

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CustomDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->emptyTxt:Landroid/view/View;

    new-instance p1, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    const p1, 0x7f0902aa

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CustomDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    const v1, 0x7f1101fb

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    const v1, 0x7f110091

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    const v1, 0x7f110236

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    const v0, 0x7f0900ab

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/CustomDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/CustomDataPagerAdapter;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CustomDataActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/online/languages/study/studymaster/adapters/CustomDataPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/CustomDataPagerAdapter;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v1, p1}, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget v0, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->listType:I

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/CustomDataActivity;->setActiveTab(I)V

    new-instance v0, Lcom/online/languages/study/studymaster/CustomDataActivity$1;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/CustomDataActivity$1;-><init>(Lcom/online/languages/study/studymaster/CustomDataActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    sget-object v0, Lcom/online/languages/study/studymaster/CustomDataActivity;->sectionId:Ljava/lang/String;

    const-string v1, "errors"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CustomDataActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f0d000b

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_32

    :cond_16
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CustomDataActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f0d0020

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0900e3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->easy_mode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_32
    :goto_32
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_23

    const v1, 0x7f0900e3

    if-eq v0, v1, :cond_1d

    const v1, 0x7f090164

    if-eq v0, v1, :cond_19

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_19
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CustomDataActivity;->openInfo()V

    return v2

    :cond_1d
    iget-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;->openDialog()V

    return v2

    :cond_23
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CustomDataActivity;->finish()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return v2
.end method

.method public openInfo()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    const v1, 0x7f1100b5

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/CustomDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1100b4

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/CustomDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showDetailDialog(Landroid/view/View;I)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/online/languages/study/studymaster/ScrollingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-boolean v1, v1, Lcom/online/languages/study/studymaster/data/NavSection;->unlocked:Z

    const-string v2, "starrable"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "position"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "source"

    const/4 p2, 0x2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/online/languages/study/studymaster/CustomDataActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const p1, 0x7f010028

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/CustomDataActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public updateLists(I)V
    .registers 7

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/CustomDataPagerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/adapters/CustomDataPagerAdapter;->getRegisteredFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/CustomDataPagerAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/online/languages/study/studymaster/adapters/CustomDataPagerAdapter;->getRegisteredFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/fragments/CustomTabFragment2;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/CustomDataActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/CustomDataPagerAdapter;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/online/languages/study/studymaster/adapters/CustomDataPagerAdapter;->getRegisteredFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/online/languages/study/studymaster/fragments/CustomTabFragment3;

    if-ne p1, v2, :cond_28

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/fragments/CustomTabFragment2;->checkDataList()V

    :cond_22
    if-eqz v3, :cond_52

    invoke-virtual {v3}, Lcom/online/languages/study/studymaster/fragments/CustomTabFragment3;->checkDataList()V

    goto :goto_52

    :cond_28
    if-ne p1, v4, :cond_35

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->checkDataList()V

    :cond_2f
    if-eqz v3, :cond_52

    invoke-virtual {v3}, Lcom/online/languages/study/studymaster/fragments/CustomTabFragment3;->checkDataList()V

    goto :goto_52

    :cond_35
    const/4 v2, 0x3

    if-ne p1, v2, :cond_43

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->checkDataList()V

    :cond_3d
    if-eqz v1, :cond_52

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/fragments/CustomTabFragment2;->checkDataList()V

    goto :goto_52

    :cond_43
    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->checkDataList()V

    :cond_48
    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/fragments/CustomTabFragment2;->checkDataList()V

    :cond_4d
    if-eqz v3, :cond_52

    invoke-virtual {v3}, Lcom/online/languages/study/studymaster/fragments/CustomTabFragment3;->checkDataList()V

    :cond_52
    :goto_52
    return-void
.end method
