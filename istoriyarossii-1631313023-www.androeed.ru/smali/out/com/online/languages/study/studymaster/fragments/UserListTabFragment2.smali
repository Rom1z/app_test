.class public Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;
.super Landroidx/fragment/app/Fragment;
.source "UserListTabFragment2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2$RecyclerTouchListener;,
        Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2$ClickListener;
    }
.end annotation


# instance fields
.field enableExercises:Ljava/lang/Boolean;

.field exAdapter:Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;

.field exLinkDesc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field exLinkTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field exResults:[I

.field notif:Landroid/view/View;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->enableExercises:Ljava/lang/Boolean;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->exResults:[I

    return-void

    nop

    :array_14
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->openExercise(I)V

    return-void
.end method

.method private checkExEnable(I)V
    .registers 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_7

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->disableExercises()V

    goto :goto_a

    :cond_7
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->setEnableExercises()V

    :goto_a
    return-void
.end method

.method private disableExercises()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAlpha(F)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->notif:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->enableExercises:Ljava/lang/Boolean;

    return-void
.end method

.method private fillData()V
    .registers 5

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_86

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->exResults:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->exLinkTitles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->exLinkDesc:Ljava/util/ArrayList;

    sget-object v0, Lcom/online/languages/study/studymaster/UserListActivity;->showRes:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3d

    new-instance v0, Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/online/languages/study/studymaster/DBHelper;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->exResults:[I

    const/4 v2, 0x1

    const-string v3, "starred_1"

    invoke-virtual {v0, v3}, Lcom/online/languages/study/studymaster/DBHelper;->getTestResult(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->exResults:[I

    const/4 v2, 0x2

    const-string v3, "starred_2"

    invoke-virtual {v0, v3}, Lcom/online/languages/study/studymaster/DBHelper;->getTestResult(Ljava/lang/String;)I

    move-result v0

    aput v0, v1, v2

    :cond_3d
    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->exLinkTitles:Ljava/util/ArrayList;

    const v1, 0x7f11023a

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->exLinkTitles:Ljava/util/ArrayList;

    const v1, 0x7f11023c

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->exLinkTitles:Ljava/util/ArrayList;

    const v1, 0x7f11023e

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->exLinkDesc:Ljava/util/ArrayList;

    const v1, 0x7f110239

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->exLinkDesc:Ljava/util/ArrayList;

    const v1, 0x7f110067

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->exLinkDesc:Ljava/util/ArrayList;

    const v1, 0x7f110068

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :array_86
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private openExercise(I)V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->enableExercises:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2$2;

    invoke-direct {v1, p0, p1}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2$2;-><init>(Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;I)V

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_17
    return-void
.end method

.method private setEnableExercises()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAlpha(F)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->enableExercises:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->notif:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public checkStarred(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->checkExEnable(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11

    const p3, 0x7f0c0084

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->exLinkTitles:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->exLinkDesc:Ljava/util/ArrayList;

    const p2, 0x7f090084

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->fillData()V

    const p2, 0x7f09010d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->exLinkTitles:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->exLinkDesc:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->exResults:[I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;[ILjava/lang/Boolean;)V

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->exAdapter:Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->exAdapter:Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    const p2, 0x7f09010a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->notif:Landroid/view/View;

    const p2, 0x7f0902e9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2$RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2$1;

    invoke-direct {v2, p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2$1;-><init>(Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;)V

    invoke-direct {p3, p0, v0, v1, v2}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2$RecyclerTouchListener;-><init>(Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2$ClickListener;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-object p1
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->updateResults()V

    return-void
.end method

.method public updateResults()V
    .registers 8

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->fillData()V

    new-instance v6, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->exLinkTitles:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->exLinkDesc:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->exResults:[I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;[ILjava/lang/Boolean;)V

    iput-object v6, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->exAdapter:Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
