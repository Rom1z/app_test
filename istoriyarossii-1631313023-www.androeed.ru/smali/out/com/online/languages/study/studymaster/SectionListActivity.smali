.class public Lcom/online/languages/study/studymaster/SectionListActivity;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "SectionListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/SectionListActivity$RecyclerTouchListener;,
        Lcom/online/languages/study/studymaster/SectionListActivity$ClickListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field adapter:Lcom/online/languages/study/studymaster/adapters/SectionListAdapter;

.field appSettings:Landroid/content/SharedPreferences;

.field data:Ljava/util/ArrayList;
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

.field fullDirect:Ljava/lang/String;

.field fullVersion:Z

.field navSection:Lcom/online/languages/study/studymaster/data/NavSection;

.field openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field showStatus:I

.field themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

.field public themeTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->data:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/online/languages/study/studymaster/SectionListActivity;Landroid/view/View;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/online/languages/study/studymaster/SectionListActivity;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method private infoMessage()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    const v1, 0x7f1100b5

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/SectionListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1100b4

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/SectionListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onItemClick(Landroid/view/View;I)V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/SectionListActivity$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/online/languages/study/studymaster/SectionListActivity$3;-><init>(Lcom/online/languages/study/studymaster/SectionListActivity;Landroid/view/View;I)V

    const-wide/16 p1, 0x32

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private openView(Landroid/view/View;)V
    .registers 6

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/SectionListActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/online/languages/study/studymaster/SectionListActivity$2;-><init>(Lcom/online/languages/study/studymaster/SectionListActivity;Landroid/view/View;)V

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateList()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/data/DataManager;->checkDataItemsData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->data:Ljava/util/ArrayList;

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter;

    iget v2, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->showStatus:I

    invoke-direct {v1, v0, v2}, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter;-><init>(Ljava/util/ArrayList;I)V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/SectionListAdapter;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public changeStarred(I)V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {v1, v0}, Lcom/online/languages/study/studymaster/data/DataManager;->checkStarStatusById(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/online/languages/study/studymaster/DBHelper;->setStarred(Ljava/lang/String;Ljava/lang/Boolean;)I

    move-result v0

    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/SectionListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    const/16 v2, 0x1e

    if-nez v0, :cond_3f

    const v0, 0x7f1101d7

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v2, 0x12c

    :cond_3f
    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionListActivity;->checkStarred(I)V

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public checkStarred(I)V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/data/DataManager;->checkDataItemsData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->data:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/SectionListActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/online/languages/study/studymaster/SectionListActivity$4;-><init>(Lcom/online/languages/study/studymaster/SectionListActivity;I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    const/4 p1, -0x1

    if-ne p2, p1, :cond_16

    const-string p2, "result"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionListActivity;->checkStarred(I)V

    goto :goto_16

    :cond_13
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/SectionListActivity;->updateList()V

    :cond_16
    :goto_16
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "theme"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->themeTitle:Ljava/lang/String;

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v0, v3}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0038

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionListActivity;->setContentView(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "data_mode"

    const-string v1, "2"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->easy_mode:Ljava/lang/Boolean;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "full_version"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->fullVersion:Z

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->setOrientation()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->appSettings:Landroid/content/SharedPreferences;

    const v1, 0x7f110195

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/SectionListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "set_full_detail"

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->fullDirect:Ljava/lang/String;

    const p1, 0x7f0902e4

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionListActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f11015c

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionListActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "nav_structure"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/NavStructure;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "section_id"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/online/languages/study/studymaster/data/NavStructure;->getNavSectionByID(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/NavSection;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "show_status"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->showStatus:I

    new-instance p1, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    new-instance p1, Lcom/online/languages/study/studymaster/DBHelper;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/DBHelper;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/NavSection;->uniqueCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/online/languages/study/studymaster/DBHelper;->getSectionListDataItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->data:Ljava/util/ArrayList;

    const p1, 0x7f090222

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->data:Ljava/util/ArrayList;

    iget v1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->showStatus:I

    invoke-direct {p1, v0, v1}, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter;-><init>(Ljava/util/ArrayList;I)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/SectionListAdapter;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/DividerItemDecoration;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/adapters/DividerItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/SectionListAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/SectionListActivity;->openView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/online/languages/study/studymaster/SectionListActivity$RecyclerTouchListener;

    new-instance v1, Lcom/online/languages/study/studymaster/SectionListActivity$1;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/SectionListActivity$1;-><init>(Lcom/online/languages/study/studymaster/SectionListActivity;)V

    invoke-direct {v0, p0, p0, p1, v1}, Lcom/online/languages/study/studymaster/SectionListActivity$RecyclerTouchListener;-><init>(Lcom/online/languages/study/studymaster/SectionListActivity;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/online/languages/study/studymaster/SectionListActivity$ClickListener;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0020

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0900e3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->easy_mode:Ljava/lang/Boolean;

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

    if-eq v0, v1, :cond_23

    const v1, 0x7f0900e3

    if-eq v0, v1, :cond_1d

    const v1, 0x7f090164

    if-eq v0, v1, :cond_19

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_19
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/SectionListActivity;->infoMessage()V

    return v2

    :cond_1d
    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;->openDialog()V

    return v2

    :cond_23
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionListActivity;->finish()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return v2
.end method

.method public showAlertDialog(Landroid/view/View;I)V
    .registers 7

    const v0, 0x7f09016f

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->fullDirect:Ljava/lang/String;

    const-string v1, "full"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "id"

    const-string v2, "starrable"

    if-eqz v0, :cond_38

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/online/languages/study/studymaster/FullDetailActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-boolean v0, v0, Lcom/online/languages/study/studymaster/data/NavSection;->unlocked:Z

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/online/languages/study/studymaster/SectionListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const p1, 0x7f01001e

    const p2, 0x7f010023

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/SectionListActivity;->overridePendingTransition(II)V

    goto :goto_66

    :cond_38
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/online/languages/study/studymaster/ScrollingActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-boolean v3, v3, Lcom/online/languages/study/studymaster/data/NavSection;->unlocked:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "position"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionListActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    const-string p2, "item"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/online/languages/study/studymaster/SectionListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const p1, 0x7f010028

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/SectionListActivity;->overridePendingTransition(II)V

    :goto_66
    return-void
.end method
