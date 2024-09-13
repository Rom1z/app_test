.class public Lcom/online/languages/study/studymaster/MapListActivity;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "MapListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/MapListActivity$RecyclerTouchListener;,
        Lcom/online/languages/study/studymaster/MapListActivity$ClickListener;
    }
.end annotation


# instance fields
.field appSettings:Landroid/content/SharedPreferences;

.field cardsAdapter:Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

.field cardsList:Landroid/view/View;

.field private changeLayoutBtn:Landroid/view/MenuItem;

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

.field dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

.field full_version:Ljava/lang/Boolean;

.field groupType:I

.field imageMapsData:Lcom/online/languages/study/studymaster/data/ImageMapsData;

.field itemsList:Landroid/view/View;

.field listType:I

.field mAdapter:Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

.field navSection:Lcom/online/languages/study/studymaster/data/NavSection;

.field navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

.field openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

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

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MapListActivity;->tSectionID:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MapListActivity;->tCatID:Ljava/lang/String;

    return-void
.end method

.method private applyLayoutStatus(I)V
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1d

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->cardsList:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->itemsList:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->changeLayoutBtn:Landroid/view/MenuItem;

    const v0, 0x7f04021a

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/MapListActivity;->getDrawableIcon(I)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_33

    :cond_1d
    iget-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->cardsList:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->itemsList:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->changeLayoutBtn:Landroid/view/MenuItem;

    const v0, 0x7f040219

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/MapListActivity;->getDrawableIcon(I)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_33
    return-void
.end method

.method private changeLayoutStatus()V
    .registers 4

    iget v0, p0, Lcom/online/languages/study/studymaster/MapListActivity;->listType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x2

    iput v0, p0, Lcom/online/languages/study/studymaster/MapListActivity;->listType:I

    goto :goto_b

    :cond_9
    iput v1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->listType:I

    :goto_b
    iget-object v0, p0, Lcom/online/languages/study/studymaster/MapListActivity;->appSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->listType:I

    const-string v2, "maps_list_layout"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget v0, p0, Lcom/online/languages/study/studymaster/MapListActivity;->listType:I

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/MapListActivity;->applyLayoutStatus(I)V

    return-void
.end method

.method private getDrawableIcon(I)I
    .registers 5

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MapListActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    return p1
.end method


# virtual methods
.method public getDataItems()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MapListActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->tCatID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/data/DataManager;->getCatDBList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getImages()V
    .registers 5

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MapListActivity;->getDataItems()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MapListActivity;->dataItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MapListActivity;->tCatID:Ljava/lang/String;

    const-string v1, "group"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MapListActivity;->dataItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/MapListActivity;->groupType:I

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MapListActivity;->viewSection:Lcom/online/languages/study/studymaster/data/ViewSection;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/ViewSection;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/ViewCategory;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/MapListActivity;->imageMapsData:Lcom/online/languages/study/studymaster/data/ImageMapsData;

    iget-object v3, v1, Lcom/online/languages/study/studymaster/data/ViewCategory;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/online/languages/study/studymaster/data/ImageMapsData;->getMapInfoById(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/ImageData;

    move-result-object v2

    iget-object v3, v2, Lcom/online/languages/study/studymaster/data/ImageData;->image:Ljava/lang/String;

    iput-object v3, v1, Lcom/online/languages/study/studymaster/data/ViewCategory;->image:Ljava/lang/String;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/online/languages/study/studymaster/data/ImageData;->getDataItem()Lcom/online/languages/study/studymaster/data/DataItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_44
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MapListActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MapListActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "theme"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MapListActivity;->themeTitle:Ljava/lang/String;

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v0, v3}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002f

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MapListActivity;->setContentView(I)V

    new-instance p1, Lcom/online/languages/study/studymaster/data/DataManager;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "full_version"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->full_version:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "maps_list_layout"

    const/4 v3, 0x2

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->listType:I

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->setOrientation()V

    const p1, 0x7f0902e4

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MapListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MapListActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MapListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f1100c1

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MapListActivity;->setTitle(I)V

    const p1, 0x7f090173

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MapListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->itemsList:Landroid/view/View;

    const p1, 0x7f090089

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MapListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->cardsList:Landroid/view/View;

    iput v3, p0, Lcom/online/languages/study/studymaster/MapListActivity;->groupType:I

    new-instance p1, Lcom/online/languages/study/studymaster/data/ImageMapsData;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/data/ImageMapsData;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->imageMapsData:Lcom/online/languages/study/studymaster/data/ImageMapsData;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MapListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "nav_structure"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/NavStructure;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MapListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "section_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->tSectionID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MapListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "cat_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->tCatID:Ljava/lang/String;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->tSectionID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/online/languages/study/studymaster/data/NavStructure;->getNavSectionByID(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/NavSection;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    new-instance v1, Lcom/online/languages/study/studymaster/data/ViewSection;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/MapListActivity;->tCatID:Ljava/lang/String;

    invoke-direct {v1, p0, p1, v4}, Lcom/online/languages/study/studymaster/data/ViewSection;-><init>(Landroid/content/Context;Lcom/online/languages/study/studymaster/data/NavSection;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->viewSection:Lcom/online/languages/study/studymaster/data/ViewSection;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MapListActivity;->getImages()V

    const p1, 0x7f090222

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MapListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->dataItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/MapListActivity;->themeTitle:Ljava/lang/String;

    invoke-direct {p1, p0, v1, v0, v4}, Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->mAdapter:Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MapListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/DividerItemDecoration;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/adapters/DividerItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setSelected(Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->mAdapter:Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    const p1, 0x7f090223

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MapListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->dataItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/MapListActivity;->themeTitle:Ljava/lang/String;

    invoke-direct {p1, p0, v1, v3, v4}, Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->cardsAdapter:Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v1, p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setSelected(Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MapListActivity;->cardsAdapter:Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/online/languages/study/studymaster/MapListActivity$RecyclerTouchListener;

    new-instance v1, Lcom/online/languages/study/studymaster/MapListActivity$1;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/MapListActivity$1;-><init>(Lcom/online/languages/study/studymaster/MapListActivity;)V

    invoke-direct {v0, p0, p0, p1, v1}, Lcom/online/languages/study/studymaster/MapListActivity$RecyclerTouchListener;-><init>(Lcom/online/languages/study/studymaster/MapListActivity;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/online/languages/study/studymaster/MapListActivity$ClickListener;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/online/languages/study/studymaster/MapListActivity$RecyclerTouchListener;

    new-instance v1, Lcom/online/languages/study/studymaster/MapListActivity$2;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/MapListActivity$2;-><init>(Lcom/online/languages/study/studymaster/MapListActivity;)V

    invoke-direct {v0, p0, p0, p1, v1}, Lcom/online/languages/study/studymaster/MapListActivity$RecyclerTouchListener;-><init>(Lcom/online/languages/study/studymaster/MapListActivity;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/online/languages/study/studymaster/MapListActivity$ClickListener;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MapListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0015

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09018e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->changeLayoutBtn:Landroid/view/MenuItem;

    iget p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->listType:I

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/MapListActivity;->applyLayoutStatus(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_21

    const v1, 0x7f090164

    if-eq v0, v1, :cond_1d

    const v1, 0x7f09018e

    if-eq v0, v1, :cond_19

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_19
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/MapListActivity;->changeLayoutStatus()V

    return v2

    :cond_1d
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MapListActivity;->showInfoDialog()V

    return v2

    :cond_21
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MapListActivity;->finish()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return v2
.end method

.method public openCat(Landroid/view/View;)V
    .registers 6

    const v0, 0x7f0902b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/MapListActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/online/languages/study/studymaster/MapListActivity$3;-><init>(Lcom/online/languages/study/studymaster/MapListActivity;Ljava/lang/String;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public openCatActivity(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/online/languages/study/studymaster/MapListActivity;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1e

    iget-object v2, p0, Lcom/online/languages/study/studymaster/MapListActivity;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move v1, v0

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1e
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/online/languages/study/studymaster/MapActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MapListActivity;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    const-string v1, "page_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v0, p0, Lcom/online/languages/study/studymaster/MapListActivity;->groupType:I

    const-string v1, "pic"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/online/languages/study/studymaster/MapListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method public showInfoDialog()V
    .registers 4

    const v0, 0x7f1100c0

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/MapListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MapListActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/NavSection;->spec:Ljava/lang/String;

    const-string v2, "gallery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const v0, 0x7f1100b0

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/MapListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1a
    new-instance v1, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1100b5

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/MapListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
