.class public Lcom/online/languages/study/studymaster/SubSectionActivity;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "SubSectionActivity.java"


# instance fields
.field appSettings:Landroid/content/SharedPreferences;

.field full_version:Ljava/lang/Boolean;

.field mAdapter:Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;

.field navSection:Lcom/online/languages/study/studymaster/data/NavSection;

.field navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

.field openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field tCatID:Ljava/lang/String;

.field tSectionID:Ljava/lang/String;

.field themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

.field public themeTitle:Ljava/lang/String;

.field viewSection:Lcom/online/languages/study/studymaster/data/ViewSection;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BaseActivity;-><init>()V

    const-string v0, "01010"

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->tSectionID:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->tCatID:Ljava/lang/String;

    return-void
.end method

.method private updateContent()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->viewSection:Lcom/online/languages/study/studymaster/data/ViewSection;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/data/ViewSection;->getProgress()V

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->viewSection:Lcom/online/languages/study/studymaster/data/ViewSection;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/ViewSection;->categories:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->full_version:Ljava/lang/Boolean;

    invoke-direct {v0, p0, v1, v2}, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->mAdapter:Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/SubSectionActivity;->updateContent()V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "theme"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->themeTitle:Ljava/lang/String;

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v0, v3}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003a

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SubSectionActivity;->setContentView(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "full_version"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->full_version:Ljava/lang/Boolean;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->setOrientation()V

    const p1, 0x7f0902e4

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SubSectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SubSectionActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SubSectionActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f1101fd

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SubSectionActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SubSectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "nav_structure"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/NavStructure;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SubSectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "section_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->tSectionID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SubSectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "cat_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->tCatID:Ljava/lang/String;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->tSectionID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/online/languages/study/studymaster/data/NavStructure;->getNavSectionByID(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/NavSection;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    new-instance v1, Lcom/online/languages/study/studymaster/data/ViewSection;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->tCatID:Ljava/lang/String;

    invoke-direct {v1, p0, p1, v3}, Lcom/online/languages/study/studymaster/data/ViewSection;-><init>(Landroid/content/Context;Lcom/online/languages/study/studymaster/data/NavSection;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->viewSection:Lcom/online/languages/study/studymaster/data/ViewSection;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/data/ViewSection;->getProgress()V

    const p1, 0x7f090222

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SubSectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->viewSection:Lcom/online/languages/study/studymaster/data/ViewSection;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/ViewSection;->categories:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->full_version:Ljava/lang/Boolean;

    invoke-direct {p1, p0, v1, v3}, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->mAdapter:Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SubSectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setSelected(Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->mAdapter:Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_e

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_e
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SubSectionActivity;->finish()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    const/4 p1, 0x1

    return p1
.end method

.method public openCat(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/SubSectionActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/online/languages/study/studymaster/SubSectionActivity$1;-><init>(Lcom/online/languages/study/studymaster/SubSectionActivity;I)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public openCatActivity(I)V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->viewSection:Lcom/online/languages/study/studymaster/data/ViewSection;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/ViewSection;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/ViewCategory;

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/ViewCategory;->type:Ljava/lang/String;

    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    :cond_15
    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/ViewCategory;->type:Ljava/lang/String;

    const-string v1, "group"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "cat_id"

    if-eqz v0, :cond_3c

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/online/languages/study/studymaster/SubSectionActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/ViewCategory;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->tSectionID:Ljava/lang/String;

    const-string v1, "section_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    const-string v1, "nav_structure"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_6f

    :cond_3c
    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/ViewCategory;->spec:Ljava/lang/String;

    const-string v2, "map"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/online/languages/study/studymaster/MapActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/ViewCategory;->id:Ljava/lang/String;

    const-string v1, "page_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6f

    :cond_55
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/online/languages/study/studymaster/CatActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p1, Lcom/online/languages/study/studymaster/data/ViewCategory;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/online/languages/study/studymaster/data/ViewCategory;->spec:Ljava/lang/String;

    const-string v2, "cat_spec"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/ViewCategory;->title:Ljava/lang/String;

    const-string v1, "cat_title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_6f
    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/online/languages/study/studymaster/SubSectionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SubSectionActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method
