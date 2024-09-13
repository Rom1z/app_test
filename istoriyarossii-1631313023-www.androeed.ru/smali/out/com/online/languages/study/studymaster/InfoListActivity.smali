.class public Lcom/online/languages/study/studymaster/InfoListActivity;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "InfoListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/InfoListActivity$RecyclerTouchListener;,
        Lcom/online/languages/study/studymaster/InfoListActivity$ClickListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field adapter:Lcom/online/languages/study/studymaster/adapters/InfoDataListAdapter;

.field adapterListType:I

.field appSettings:Landroid/content/SharedPreferences;

.field catId:Ljava/lang/String;

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

.field navCategory:Lcom/online/languages/study/studymaster/data/NavCategory;

.field navSection:Lcom/online/languages/study/studymaster/data/NavSection;

.field navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

.field openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field sectionId:Ljava/lang/String;

.field themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

.field public themeTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/online/languages/study/studymaster/InfoListActivity;Landroid/view/View;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/online/languages/study/studymaster/InfoListActivity;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/online/languages/study/studymaster/InfoListActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/InfoListActivity;->manageListVew(I)V

    return-void
.end method

.method private getDataList(Ljava/lang/String;I)V
    .registers 3

    iget-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->catId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/online/languages/study/studymaster/data/DataManager;->getCatDBList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->dataItems:Ljava/util/ArrayList;

    return-void
.end method

.method private manageListVew(I)V
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ge p1, v2, :cond_11

    iget-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->emptyTxt:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1b

    :cond_11
    iget-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->emptyTxt:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_1b
    return-void
.end method

.method private onItemClick(Landroid/view/View;I)V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/InfoListActivity$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/online/languages/study/studymaster/InfoListActivity$3;-><init>(Lcom/online/languages/study/studymaster/InfoListActivity;Landroid/view/View;I)V

    const-wide/16 p1, 0x32

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private openView(Landroid/view/View;)V
    .registers 5

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/online/languages/study/studymaster/InfoListActivity$2;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/InfoListActivity$2;-><init>(Lcom/online/languages/study/studymaster/InfoListActivity;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateContent()V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->sectionId:Ljava/lang/String;

    iget v1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->listType:I

    invoke-direct {p0, v0, v1}, Lcom/online/languages/study/studymaster/InfoListActivity;->getDataList(Ljava/lang/String;I)V

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/InfoDataListAdapter;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->dataItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->themeTitle:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/online/languages/study/studymaster/adapters/InfoDataListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/InfoDataListAdapter;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/InfoListActivity;->manageListVew(I)V

    return-void
.end method


# virtual methods
.method public changeStarred(I)V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {v1, v0}, Lcom/online/languages/study/studymaster/data/DataManager;->checkStarStatusById(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/online/languages/study/studymaster/DBHelper;->setStarred(Ljava/lang/String;Ljava/lang/Boolean;)I

    move-result v0

    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/InfoListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    const/16 v2, 0x1e

    if-nez v0, :cond_37

    const v0, 0x7f1101d7

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v2, 0x12c

    :cond_37
    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/InfoListActivity;->checkStarred(I)V

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public checkStarred(I)V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/data/DataManager;->checkDataItemsData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->dataItems:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/InfoListActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/online/languages/study/studymaster/InfoListActivity$4;-><init>(Lcom/online/languages/study/studymaster/InfoListActivity;I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    const/4 p1, -0x1

    if-ne p2, p1, :cond_13

    const-string p2, "result"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/InfoListActivity;->checkStarred(I)V

    goto :goto_13

    :cond_10
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/InfoListActivity;->updateContent()V

    :cond_13
    :goto_13
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "theme"

    const-string v1, "default"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->themeTitle:Ljava/lang/String;

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, p1, v2}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    const p1, 0x7f0c002c

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/InfoListActivity;->setContentView(I)V

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->setOrientation()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->adapterListType:I

    iget-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "data_mode"

    const-string v2, "2"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->easy_mode:Ljava/lang/Boolean;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/InfoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "data_type"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->listType:I

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/InfoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "section_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->sectionId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/InfoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "cat_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->catId:Ljava/lang/String;

    const p1, 0x7f0902e4

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/InfoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/InfoListActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/InfoListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f11021b

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/InfoListActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/InfoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "nav_structure"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/NavStructure;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->sectionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/online/languages/study/studymaster/data/NavStructure;->getNavSectionByID(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/NavSection;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->sectionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->catId:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/online/languages/study/studymaster/data/NavStructure;->getNavCatFromSection(Ljava/lang/String;Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/NavCategory;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->navCategory:Lcom/online/languages/study/studymaster/data/NavCategory;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/NavCategory;->title:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/InfoListActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f0900ea

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/InfoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->emptyTxt:Landroid/view/View;

    new-instance p1, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->sectionId:Ljava/lang/String;

    iget v0, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->listType:I

    invoke-direct {p0, p1, v0}, Lcom/online/languages/study/studymaster/InfoListActivity;->getDataList(Ljava/lang/String;I)V

    const p1, 0x7f090220

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/InfoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/InfoDataListAdapter;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->dataItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->themeTitle:Ljava/lang/String;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/online/languages/study/studymaster/adapters/InfoDataListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/InfoDataListAdapter;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/DividerItemDecoration;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/adapters/DividerItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/InfoDataListAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/InfoListActivity;->openView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/online/languages/study/studymaster/InfoListActivity$RecyclerTouchListener;

    new-instance v1, Lcom/online/languages/study/studymaster/InfoListActivity$1;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/InfoListActivity$1;-><init>(Lcom/online/languages/study/studymaster/InfoListActivity;)V

    invoke-direct {v0, p0, p0, p1, v1}, Lcom/online/languages/study/studymaster/InfoListActivity$RecyclerTouchListener;-><init>(Lcom/online/languages/study/studymaster/InfoListActivity;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/online/languages/study/studymaster/InfoListActivity$ClickListener;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/InfoListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0020

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0900e3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->easy_mode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1d
    return v1
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
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/InfoListActivity;->openInfo()V

    return v2

    :cond_18
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/InfoListActivity;->finish()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return v2
.end method

.method public openInfo()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/InfoListActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    const v1, 0x7f1100b5

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/InfoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1100af

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/InfoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showAlertDialog(Landroid/view/View;I)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/online/languages/study/studymaster/ScrollingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "starrable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "position"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/online/languages/study/studymaster/InfoListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const p1, 0x7f010028

    invoke-virtual {p0, p1, v2}, Lcom/online/languages/study/studymaster/InfoListActivity;->overridePendingTransition(II)V

    return-void
.end method
