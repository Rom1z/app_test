.class public Lcom/online/languages/study/studymaster/UserListActivity;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "UserListActivity.java"


# static fields
.field public static showRes:Ljava/lang/Boolean;


# instance fields
.field adapter:Lcom/online/languages/study/studymaster/adapters/UserListViewPagerAdapter;

.field appSettings:Landroid/content/SharedPreferences;

.field public cardData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

.field dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

.field public exerciseData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field fullDirect:Ljava/lang/String;

.field openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

.field themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

.field public themeTitle:Ljava/lang/String;

.field public topicData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/UserListActivity;->topicData:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/UserListActivity;->exerciseData:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/UserListActivity;->cardData:Ljava/util/ArrayList;

    return-void
.end method

.method private deleteStarredExResults()V
    .registers 3

    const-string v0, "starred_1"

    const-string v1, "starred_2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/UserListActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v1, v0}, Lcom/online/languages/study/studymaster/DBHelper;->deleteExData([Ljava/lang/String;)I

    iget-object v0, p0, Lcom/online/languages/study/studymaster/UserListActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/UserListViewPagerAdapter;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/UserListViewPagerAdapter;->getFragmentTwo()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->updateResults()V

    :cond_1a
    return-void
.end method

.method private getVocab()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/UserListActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/data/DataManager;->getStarredWords(Ljava/lang/Boolean;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/UserListActivity;->topicData:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/UserListActivity;->exerciseData:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/UserListActivity;->cardData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/UserListActivity;->setPageTitle(I)V

    return-void
.end method


# virtual methods
.method public checkEx()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/UserListActivity;->topicData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1c

    iget-object v0, p0, Lcom/online/languages/study/studymaster/UserListActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/UserListViewPagerAdapter;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/UserListViewPagerAdapter;->getFragmentTwo()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/online/languages/study/studymaster/UserListActivity;->topicData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->checkStarred(I)V

    :cond_1c
    return-void
.end method

.method public nextPage(I)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/online/languages/study/studymaster/ExerciseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-nez p1, :cond_10

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/online/languages/study/studymaster/CardsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_10
    const-string v1, "dataItems"

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/online/languages/study/studymaster/UserListActivity;->cardData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_24

    :cond_1a
    iget-object v2, p0, Lcom/online/languages/study/studymaster/UserListActivity;->exerciseData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v1, "ex_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_24
    const-string p1, "cat_tag"

    const-string v1, "starred"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/UserListActivity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/UserListActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_16

    const/4 p1, -0x1

    if-ne p2, p1, :cond_16

    iget-object p1, p0, Lcom/online/languages/study/studymaster/UserListActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/UserListViewPagerAdapter;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/UserListViewPagerAdapter;->getFragmentOne()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->checkStarred()V

    :cond_16
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/UserListActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/UserListActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "theme"

    const-string v1, "default"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/UserListActivity;->themeTitle:Ljava/lang/String;

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, p1, v2}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/UserListActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    const p1, 0x7f0c003d

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/UserListActivity;->setContentView(I)V

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/UserListActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->setOrientation()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/UserListActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "show_starred_results"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/online/languages/study/studymaster/UserListActivity;->showRes:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/UserListActivity;->appSettings:Landroid/content/SharedPreferences;

    const v0, 0x7f110195

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/UserListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "set_full_detail"

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/UserListActivity;->fullDirect:Ljava/lang/String;

    new-instance p1, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-direct {p1, p0, v2}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/UserListActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    new-instance p1, Lcom/online/languages/study/studymaster/DBHelper;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/UserListActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/UserListActivity;->getVocab()V

    const p1, 0x7f0902e4

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/UserListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/UserListActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/UserListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f0902aa

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/UserListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    const v1, 0x7f11015f

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    const v1, 0x7f110160

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    const v0, 0x7f0900ab

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/UserListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/UserListActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/UserListViewPagerAdapter;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/UserListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/online/languages/study/studymaster/adapters/UserListViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/UserListActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/UserListViewPagerAdapter;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/UserListActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/UserListActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v1, p1}, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    new-instance v0, Lcom/online/languages/study/studymaster/UserListActivity$1;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/UserListActivity$1;-><init>(Lcom/online/languages/study/studymaster/UserListActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/UserListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0008

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

    const v1, 0x7f090289

    if-eq v0, v1, :cond_14

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_14
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/UserListActivity;->deleteStarredExResults()V

    return v2

    :cond_18
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/UserListActivity;->finish()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/UserListActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return v2
.end method

.method public setPageTitle(I)V
    .registers 5

    const v0, 0x7f1101dc

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/UserListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/UserListActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showAlertDialog(Landroid/view/View;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/UserListActivity;->fullDirect:Ljava/lang/String;

    const-string v1, "full"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "id"

    const-string v2, "starrable"

    const/4 v3, 0x1

    if-eqz v0, :cond_31

    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/online/languages/study/studymaster/FullDetailActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/online/languages/study/studymaster/UserListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const p1, 0x7f01001e

    const v0, 0x7f010023

    invoke-virtual {p0, p1, v0}, Lcom/online/languages/study/studymaster/UserListActivity;->overridePendingTransition(II)V

    goto :goto_48

    :cond_31
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/online/languages/study/studymaster/ScrollingActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/online/languages/study/studymaster/UserListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const p1, 0x7f010028

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/online/languages/study/studymaster/UserListActivity;->overridePendingTransition(II)V

    :goto_48
    return-void
.end method
