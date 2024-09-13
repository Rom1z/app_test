.class public Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;
.super Landroidx/fragment/app/Fragment;
.source "CatTabFragment2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/fragments/CatTabFragment2$RecyclerTouchListener;,
        Lcom/online/languages/study/studymaster/fragments/CatTabFragment2$ClickListener;
    }
.end annotation


# instance fields
.field catKnownCount:Landroid/widget/TextView;

.field catProgress:Landroid/widget/TextView;

.field catSpec:Ljava/lang/String;

.field catStudiedCount:Landroid/widget/TextView;

.field catTotalCount:Landroid/widget/TextView;

.field colorProgress:Lcom/online/languages/study/studymaster/adapters/ColorProgress;

.field dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

.field dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

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

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->exResults:[I

    return-void

    :array_c
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->openExercise(I)V

    return-void
.end method

.method private defineDesc(ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_a

    const p1, 0x7f110239

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_76

    :cond_a
    const/4 v0, 0x1

    const-string v1, "misc"

    const-string v2, "term"

    const-string v3, "pers"

    if-ne p1, v0, :cond_42

    const p1, 0x7f11023b

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const p1, 0x7f110065

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_27
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const p1, 0x7f110069

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_34
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_76

    const p1, 0x7f110063

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_76

    :cond_42
    const/4 v0, 0x2

    if-ne p1, v0, :cond_74

    const p1, 0x7f11023d

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    const p1, 0x7f110066

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_59
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const p1, 0x7f11006a

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_66
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_76

    const p1, 0x7f110064

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_76

    :cond_74
    const-string p1, ""

    :cond_76
    :goto_76
    return-object p1
.end method

.method private fillData()V
    .registers 6

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_9c

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->exResults:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->exLinkTitles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->exLinkDesc:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->exResults:[I

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/online/languages/study/studymaster/CatActivity;->categoryID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/online/languages/study/studymaster/DBHelper;->getTestResult(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->exResults:[I

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/online/languages/study/studymaster/CatActivity;->categoryID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/online/languages/study/studymaster/DBHelper;->getTestResult(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x2

    aput v1, v0, v3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->exLinkTitles:Ljava/util/ArrayList;

    const v1, 0x7f11023a

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->exLinkDesc:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->catSpec:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v4, v1}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->defineDesc(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->exLinkTitles:Ljava/util/ArrayList;

    const v1, 0x7f11023c

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->exLinkDesc:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->catSpec:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->defineDesc(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->exLinkTitles:Ljava/util/ArrayList;

    const v1, 0x7f11023e

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->exLinkDesc:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->catSpec:Ljava/lang/String;

    invoke-direct {p0, v3, v1}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->defineDesc(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->setStats()V

    return-void

    :array_9c
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private openExercise(I)V
    .registers 6

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2$2;

    invoke-direct {v1, p0, p1}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2$2;-><init>(Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;I)V

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11

    const p3, 0x7f0c0084

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->exLinkTitles:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->exLinkDesc:Ljava/util/ArrayList;

    sget-object p2, Lcom/online/languages/study/studymaster/CatActivity;->catSpec:Ljava/lang/String;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->catSpec:Ljava/lang/String;

    new-instance p2, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    new-instance p2, Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/online/languages/study/studymaster/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    new-instance p2, Lcom/online/languages/study/studymaster/adapters/ColorProgress;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/online/languages/study/studymaster/adapters/ColorProgress;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->colorProgress:Lcom/online/languages/study/studymaster/adapters/ColorProgress;

    const p2, 0x7f090094

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->catTotalCount:Landroid/widget/TextView;

    const p2, 0x7f09008e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->catKnownCount:Landroid/widget/TextView;

    const p2, 0x7f090093

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->catStudiedCount:Landroid/widget/TextView;

    const p2, 0x7f090090

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->catProgress:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->fillData()V

    const p2, 0x7f09010d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->exLinkTitles:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->exLinkDesc:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->exResults:[I

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;[ILjava/lang/Boolean;)V

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->exAdapter:Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->exAdapter:Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p2, 0x7f0902e9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090086

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const v1, 0x7f090084

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_d0

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d9

    :cond_d0
    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-boolean v2, v2, Lcom/online/languages/study/studymaster/data/DataManager;->simplified:Z

    if-nez v2, :cond_d9

    invoke-virtual {p3, v0}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_d9
    :goto_d9
    iget-object p3, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-boolean p3, p3, Lcom/online/languages/study/studymaster/data/DataManager;->simplified:Z

    if-eqz p3, :cond_e5

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_e5
    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2$RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2$1;

    invoke-direct {v2, p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2$1;-><init>(Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;)V

    invoke-direct {p3, p0, v0, v1, v2}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2$RecyclerTouchListener;-><init>(Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/online/languages/study/studymaster/fragments/CatTabFragment2$ClickListener;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-object p1
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->updateResults()V

    return-void
.end method

.method public setStats()V
    .registers 9

    sget-object v0, Lcom/online/languages/study/studymaster/CatActivity;->categoryID:Ljava/lang/String;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {v1, v0}, Lcom/online/languages/study/studymaster/data/DataManager;->getCatDBList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {v3, v2}, Lcom/online/languages/study/studymaster/data/DataManager;->getCatProgress(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_20

    :cond_47
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    :cond_51
    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/online/languages/study/studymaster/data/DataItem;

    iget v7, v6, Lcom/online/languages/study/studymaster/data/DataItem;->rate:I

    if-lez v7, :cond_63

    add-int/lit8 v2, v2, 0x1

    :cond_63
    iget v6, v6, Lcom/online/languages/study/studymaster/data/DataItem;->rate:I

    const/4 v7, 0x2

    if-le v6, v7, :cond_51

    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    :cond_6b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f11003a

    invoke-virtual {p0, v6}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->catTotalCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->catKnownCount:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->catStudiedCount:Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->catProgress:Landroid/widget/TextView;

    const v1, 0x7f11011c

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->catProgress:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->colorProgress:Lcom/online/languages/study/studymaster/adapters/ColorProgress;

    invoke-virtual {v1, v4}, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->getColorFromAttr(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public updateResults()V
    .registers 8

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->fillData()V

    new-instance v6, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->exLinkTitles:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->exLinkDesc:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->exResults:[I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;[ILjava/lang/Boolean;)V

    iput-object v6, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->exAdapter:Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
