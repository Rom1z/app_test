.class public Lcom/online/languages/study/studymaster/CustomDataListActivity;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "CustomDataListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/CustomDataListActivity$RecyclerTouchListener;,
        Lcom/online/languages/study/studymaster/CustomDataListActivity$ClickListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field adapter:Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter;

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

.method static synthetic access$000(Lcom/online/languages/study/studymaster/CustomDataListActivity;Landroid/view/View;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/online/languages/study/studymaster/CustomDataListActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->manageListVew(I)V

    return-void
.end method

.method private getDataList(Ljava/lang/String;I)V
    .registers 7

    const-string v0, "errors"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 p1, 0x0

    iput p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->adapterListType:I

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "dataItems"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->dataItems:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {p2, p1}, Lcom/online/languages/study/studymaster/data/DataManager;->checkDataItemsData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->dataItems:Ljava/util/ArrayList;

    goto :goto_51

    :cond_20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/NavSection;->uniqueCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/NavCategory;

    iget-object v2, v1, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->catId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iput-object v1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->navCategory:Lcom/online/languages/study/studymaster/data/NavCategory;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_49
    iget-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {v0, p1, p2}, Lcom/online/languages/study/studymaster/data/DataManager;->getCatCustomList(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->dataItems:Ljava/util/ArrayList;

    :goto_51
    return-void
.end method

.method private manageListVew(I)V
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ge p1, v2, :cond_11

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->emptyTxt:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1b

    :cond_11
    iget-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->emptyTxt:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_1b
    return-void
.end method

.method private onItemClick(Landroid/view/View;I)V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/CustomDataListActivity$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/online/languages/study/studymaster/CustomDataListActivity$3;-><init>(Lcom/online/languages/study/studymaster/CustomDataListActivity;Landroid/view/View;I)V

    const-wide/16 p1, 0x32

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private openView(Landroid/view/View;)V
    .registers 5

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/online/languages/study/studymaster/CustomDataListActivity$2;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/CustomDataListActivity$2;-><init>(Lcom/online/languages/study/studymaster/CustomDataListActivity;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setPageTitle(I)V
    .registers 4

    if-nez p1, :cond_5

    const-string v0, "\u0418\u0437\u0443\u0447\u0435\u043d\u043d\u043e"

    goto :goto_7

    :cond_5
    const-string v0, ""

    :goto_7
    const/4 v1, 0x1

    if-ne p1, v1, :cond_c

    const-string v0, "\u041f\u0440\u043e\u0439\u0434\u0435\u043d\u043e"

    :cond_c
    const/4 v1, 0x2

    if-ne p1, v1, :cond_11

    const-string v0, "\u041d\u0435 \u043f\u0440\u043e\u0439\u0434\u0435\u043d\u043e"

    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (\u0441\u043f\u0438\u0441\u043e\u043a)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->sectionId:Ljava/lang/String;

    const-string v0, "errors"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    const p1, 0x7f11021c

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->setTitle(I)V

    :cond_35
    return-void
.end method

.method private updateContent()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->sectionId:Ljava/lang/String;

    iget v1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->listType:I

    invoke-direct {p0, v0, v1}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->getDataList(Ljava/lang/String;I)V

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->dataItems:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->manageListVew(I)V

    return-void
.end method


# virtual methods
.method public changeStarred(I)V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {v1, v0}, Lcom/online/languages/study/studymaster/data/DataManager;->checkStarStatusById(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/online/languages/study/studymaster/DBHelper;->setStarred(Ljava/lang/String;Ljava/lang/Boolean;)I

    move-result v0

    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->checkStarred(I)V

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public checkStarred(I)V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/data/DataManager;->checkDataItemsData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->dataItems:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/CustomDataListActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/online/languages/study/studymaster/CustomDataListActivity$4;-><init>(Lcom/online/languages/study/studymaster/CustomDataListActivity;I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    const/4 p1, -0x1

    if-ne p2, p1, :cond_30

    const-string p2, "result"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->checkStarred(I)V

    goto :goto_30

    :cond_13
    iget-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->sectionId:Ljava/lang/String;

    const-string p2, "errors"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/online/languages/study/studymaster/data/DataManager;->checkDataItemsData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->dataItems:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter;->notifyDataSetChanged()V

    goto :goto_30

    :cond_2d
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->updateContent()V

    :cond_30
    :goto_30
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "theme"

    const-string v1, "default"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->themeTitle:Ljava/lang/String;

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, p1, v2}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    const p1, 0x7f0c0021

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->setContentView(I)V

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->setOrientation()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->adapterListType:I

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "section_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->sectionId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "cat_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->catId:Ljava/lang/String;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "data_mode"

    const-string v2, "2"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->easy_mode:Ljava/lang/Boolean;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    const p1, 0x7f0902e4

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f11021b

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "data_type"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->listType:I

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "nav_structure"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/NavStructure;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->sectionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/online/languages/study/studymaster/data/NavStructure;->getNavSectionByID(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/NavSection;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    const p1, 0x7f0900ea

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->emptyTxt:Landroid/view/View;

    iget p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->listType:I

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->setPageTitle(I)V

    new-instance p1, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->sectionId:Ljava/lang/String;

    iget v0, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->listType:I

    invoke-direct {p0, p1, v0}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->getDataList(Ljava/lang/String;I)V

    const p1, 0x7f090220

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->dataItems:Ljava/util/ArrayList;

    iget v2, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->adapterListType:I

    invoke-direct {p1, v0, v2}, Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter;-><init>(Ljava/util/ArrayList;I)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/DividerItemDecoration;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/adapters/DividerItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->openView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/online/languages/study/studymaster/CustomDataListActivity$RecyclerTouchListener;

    new-instance v1, Lcom/online/languages/study/studymaster/CustomDataListActivity$1;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/CustomDataListActivity$1;-><init>(Lcom/online/languages/study/studymaster/CustomDataListActivity;)V

    invoke-direct {v0, p0, p0, p1, v1}, Lcom/online/languages/study/studymaster/CustomDataListActivity$RecyclerTouchListener;-><init>(Lcom/online/languages/study/studymaster/CustomDataListActivity;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/online/languages/study/studymaster/CustomDataListActivity$ClickListener;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->sectionId:Ljava/lang/String;

    const-string v1, "errors"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f0d000b

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_32

    :cond_16
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f0d0020

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0900e3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->easy_mode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_32
    :goto_32
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_2a

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_d
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->openExercise()V

    return v1

    :sswitch_11
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->openExercise()V

    return v1

    :sswitch_15
    iget-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;->modeInfoDialog()V

    return v1

    :sswitch_1b
    iget-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;->openDialog()V

    return v1

    :sswitch_21
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->finish()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return v1

    :sswitch_data_2a
    .sparse-switch
        0x102002c -> :sswitch_21
        0x7f0900e3 -> :sswitch_1b
        0x7f090164 -> :sswitch_15
        0x7f0901e8 -> :sswitch_11
        0x7f0901e9 -> :sswitch_d
    .end sparse-switch
.end method

.method public openCat()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/online/languages/study/studymaster/CatActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "force_status"

    const-string v2, "always"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->navCategory:Lcom/online/languages/study/studymaster/data/NavCategory;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/NavCategory;->spec:Ljava/lang/String;

    const-string v2, "cat_spec"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->navCategory:Lcom/online/languages/study/studymaster/data/NavCategory;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    const-string v2, "cat_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->navCategory:Lcom/online/languages/study/studymaster/data/NavCategory;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/NavCategory;->title:Ljava/lang/String;

    const-string v2, "cat_title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method public openExercise()V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/online/languages/study/studymaster/ExerciseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->dataItems:Ljava/util/ArrayList;

    const-string v2, "dataItems"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->sectionId:Ljava/lang/String;

    const-string v2, "errors"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "cat_tag"

    if-eqz v1, :cond_1e

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_23

    :cond_1e
    const-string v1, "custom"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_23
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

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

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-boolean v1, v1, Lcom/online/languages/study/studymaster/data/NavSection;->unlocked:Z

    const-string v2, "starrable"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "position"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const p1, 0x7f010028

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->overridePendingTransition(II)V

    return-void
.end method
