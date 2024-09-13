.class public Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;
.super Landroidx/fragment/app/Fragment;
.source "CustomDataFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/fragments/CustomDataFragment$RecyclerTouchListener;,
        Lcom/online/languages/study/studymaster/fragments/CustomDataFragment$ClickListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field adapter:Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter;

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

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->data:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;Landroid/view/View;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method private getDataList()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    sget-object v1, Lcom/online/languages/study/studymaster/CustomDataActivity;->catId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->getTabNum()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/online/languages/study/studymaster/data/DataManager;->getCatCustomList(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->data:Ljava/util/ArrayList;

    return-void
.end method

.method private onItemClick(Landroid/view/View;I)V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment$3;-><init>(Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;Landroid/view/View;I)V

    const-wide/16 p1, 0x32

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private openView(Landroid/view/View;)V
    .registers 6

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment$2;-><init>(Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;Landroid/view/View;)V

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public changeStarred(I)V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {v1, v0}, Lcom/online/languages/study/studymaster/data/DataManager;->checkStarStatusById(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/online/languages/study/studymaster/DBHelper;->setStarred(Ljava/lang/String;Ljava/lang/Boolean;)I

    move-result v0

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    const/16 v2, 0x1e

    if-nez v0, :cond_47

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f1101d7

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v2, 0x12c

    :cond_47
    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->checkStarred(I)V

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public checkDataList()V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/data/DataManager;->checkDataItemsData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->data:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment$4;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment$4;-><init>(Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;)V

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public checkStarred(I)V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/data/DataManager;->checkDataItemsData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->data:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment$5;-><init>(Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->getTabNum()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/CustomDataActivity;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/CustomDataActivity;->updateLists(I)V

    return-void
.end method

.method public getTabName()Lcom/online/languages/study/studymaster/Constants$Status;
    .registers 2

    sget-object v0, Lcom/online/languages/study/studymaster/Constants$Status;->STUDIED:Lcom/online/languages/study/studymaster/Constants$Status;

    return-object v0
.end method

.method public getTabNum()I
    .registers 4

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->getTabName()Lcom/online/languages/study/studymaster/Constants$Status;

    move-result-object v0

    sget-object v1, Lcom/online/languages/study/studymaster/Constants$Status;->FAMILIAR:Lcom/online/languages/study/studymaster/Constants$Status;

    if-ne v0, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    sget-object v2, Lcom/online/languages/study/studymaster/Constants$Status;->UNKNOWN:Lcom/online/languages/study/studymaster/Constants$Status;

    if-ne v0, v2, :cond_10

    const/4 v1, 0x2

    :cond_10
    return v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    const p3, 0x7f0c0086

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->getDataList()V

    const p2, 0x7f0901bd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->data:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {p3, v1, v2}, Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter;-><init>(Ljava/util/ArrayList;I)V

    iput-object p3, p0, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->adapter:Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p3, Lcom/online/languages/study/studymaster/adapters/DividerItemDecoration;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p3, v1}, Lcom/online/languages/study/studymaster/adapters/DividerItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p3, p0, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->adapter:Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p3, 0x7f0900eb

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_59

    invoke-direct {p0, p2}, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->openView(Landroid/view/View;)V

    goto :goto_5c

    :cond_59
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_5c
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    new-instance p3, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment$RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment$1;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment$1;-><init>(Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;)V

    invoke-direct {p3, p0, v0, p2, v1}, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment$RecyclerTouchListener;-><init>(Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/online/languages/study/studymaster/fragments/CustomDataFragment$ClickListener;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-object p1
.end method
