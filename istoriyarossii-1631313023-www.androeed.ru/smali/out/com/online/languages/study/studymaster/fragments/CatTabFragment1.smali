.class public Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;
.super Landroidx/fragment/app/Fragment;
.source "CatTabFragment1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/fragments/CatTabFragment1$RecyclerTouchListener;,
        Lcom/online/languages/study/studymaster/fragments/CatTabFragment1$ClickListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field adapter:Lcom/online/languages/study/studymaster/adapters/ContentAdapter;

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

.field mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field showStatus:I

.field theme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->data:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;Landroid/view/View;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;)V
    .registers 1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->updateList()V

    return-void
.end method

.method static synthetic access$200(Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->updateStarInList(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;IZ)V

    return-void
.end method

.method private insertDivider(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v2, v1, Lcom/online/languages/study/studymaster/data/DataItem;->divider:Ljava/lang/String;

    const-string v3, "no"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    new-instance v2, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {v2}, Lcom/online/languages/study/studymaster/data/DataItem;-><init>()V

    iget-object v3, v1, Lcom/online/languages/study/studymaster/data/DataItem;->divider:Ljava/lang/String;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    const-string v3, "divider"

    iput-object v3, v2, Lcom/online/languages/study/studymaster/data/DataItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_33
    return-object v0
.end method

.method private onItemClick(Landroid/view/View;I)V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1$4;-><init>(Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;Landroid/view/View;I)V

    const-wide/16 p1, 0x32

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private openView(Landroid/view/View;)V
    .registers 6

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1$3;

    invoke-direct {v1, p0, p1}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1$3;-><init>(Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;Landroid/view/View;)V

    const-wide/16 v2, 0x46

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateList()V
    .registers 8

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->getDataList()V

    new-instance v6, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->data:Ljava/util/ArrayList;

    iget v3, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->showStatus:I

    iget-object v4, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->theme:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;Z)V

    iput-object v6, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->adapter:Lcom/online/languages/study/studymaster/adapters/ContentAdapter;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private updateStarIcon(Landroid/view/View;Z)V
    .registers 6

    if-eqz p1, :cond_2e

    const v0, 0x7f090305

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-wide/16 v0, 0x96

    const/4 v2, 0x0

    if-eqz p2, :cond_23

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_2e

    :cond_23
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_2e
    :goto_2e
    return-void
.end method

.method private updateStarInList(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;IZ)V
    .registers 4

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->updateStarIcon(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public changeStarred(I)V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {v1, v0}, Lcom/online/languages/study/studymaster/data/DataManager;->checkStarStatusById(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/online/languages/study/studymaster/DBHelper;->setStarred(Ljava/lang/String;Ljava/lang/Boolean;)I

    move-result v0

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    const/16 v2, 0x1e

    if-nez v0, :cond_3f

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f1101d7

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v2, 0x12c

    :cond_3f
    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->checkStarred(I)V

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public checkDataList()V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/data/DataManager;->checkDataItemsData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->data:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1$5;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1$5;-><init>(Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;)V

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public checkStarred(I)V
    .registers 7

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/data/DataManager;->checkDataItemsData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/data/DataItem;

    iget v0, v0, Lcom/online/languages/study/studymaster/data/DataItem;->starred:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1$6;

    invoke-direct {v2, p0, p1, v1}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1$6;-><init>(Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;IZ)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getDataList()V
    .registers 5

    sget-object v0, Lcom/online/languages/study/studymaster/CatActivity;->categoryID:Ljava/lang/String;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->appSettings:Landroid/content/SharedPreferences;

    const v2, 0x7f1101a9

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sort_pers"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {v2, v0}, Lcom/online/languages/study/studymaster/data/DataManager;->getCatDBList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->data:Ljava/util/ArrayList;

    const-string v0, "chrono"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Lcom/online/languages/study/studymaster/CatActivity;->catSpec:Ljava/lang/String;

    const-string v1, "pers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/data/DataManager;->chronoOrder(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->data:Ljava/util/ArrayList;

    :cond_35
    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->data:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->insertDivider(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->data:Ljava/util/ArrayList;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    const p3, 0x7f0c0083

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->appSettings:Landroid/content/SharedPreferences;

    const-string p3, "theme"

    const-string v1, "default"

    invoke-interface {p2, p3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->theme:Ljava/lang/String;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->appSettings:Landroid/content/SharedPreferences;

    const-string p3, "show_status"

    const-string v1, "1"

    invoke-interface {p2, p3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->showStatus:I

    new-instance p2, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p3, "force_status"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_58

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_5a

    :cond_58
    const-string p2, "no"

    :goto_5a
    const-string p3, "always"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_65

    const/4 p2, 0x2

    iput p2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->showStatus:I

    :cond_65
    const p2, 0x7f0901bd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object p3, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->updateList()V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p2}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->openView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1$RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1$1;

    invoke-direct {v2, p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1$1;-><init>(Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;)V

    invoke-direct {p3, p0, v0, v1, v2}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1$RecyclerTouchListener;-><init>(Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/online/languages/study/studymaster/fragments/CatTabFragment1$ClickListener;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-object p1
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public updateDataList()V
    .registers 1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->updateList()V

    return-void
.end method

.method public updateSort()V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1$2;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1$2;-><init>(Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
