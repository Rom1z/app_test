.class public Lcom/online/languages/study/studymaster/fragments/HomeFragment;
.super Landroidx/fragment/app/Fragment;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/fragments/HomeFragment$RecyclerTouchListener;,
        Lcom/online/languages/study/studymaster/fragments/HomeFragment$ClickListener;
    }
.end annotation


# instance fields
.field appSettings:Landroid/content/SharedPreferences;

.field private mAdapter:Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/online/languages/study/studymaster/fragments/HomeFragment;Landroid/view/View;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->onGridClick(Landroid/view/View;I)V

    return-void
.end method

.method private checkSections(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/NavSection;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/NavSection;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object v2, v1, Lcom/online/languages/study/studymaster/data/NavSection;->spec:Ljava/lang/String;

    const-string v3, "nav_gallery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_23
    return-object v0
.end method

.method private onGridClick(Landroid/view/View;I)V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/fragments/HomeFragment$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/online/languages/study/studymaster/fragments/HomeFragment$3;-><init>(Lcom/online/languages/study/studymaster/fragments/HomeFragment;Landroid/view/View;I)V

    const-wide/16 p1, 0x50

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    const p3, 0x7f0c0088

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->appSettings:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "structure"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/online/languages/study/studymaster/data/NavStructure;

    iget-object p2, p2, Lcom/online/languages/study/studymaster/data/NavStructure;->sections:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->checkSections(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    const p3, 0x7f090222

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p3, 0x7f090223

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "theme"

    const-string v2, "default"

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    iget-boolean v1, v1, Lcom/online/languages/study/studymaster/data/DataManager;->homecards:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    const/4 v1, 0x2

    goto :goto_6f

    :cond_64
    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    const/4 v1, 0x1

    :goto_6f
    new-instance v2, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4, p2, p3, v1}, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->mAdapter:Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;

    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3, v3, v3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iget-object p3, p0, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->mAdapter:Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/online/languages/study/studymaster/fragments/HomeFragment$RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/online/languages/study/studymaster/fragments/HomeFragment$1;

    invoke-direct {v4, p0}, Lcom/online/languages/study/studymaster/fragments/HomeFragment$1;-><init>(Lcom/online/languages/study/studymaster/fragments/HomeFragment;)V

    invoke-direct {p3, p0, v1, v2, v4}, Lcom/online/languages/study/studymaster/fragments/HomeFragment$RecyclerTouchListener;-><init>(Lcom/online/languages/study/studymaster/fragments/HomeFragment;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/online/languages/study/studymaster/fragments/HomeFragment$ClickListener;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3, v3, v3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iget-object p3, p0, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->mAdapter:Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/online/languages/study/studymaster/fragments/HomeFragment$RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/online/languages/study/studymaster/fragments/HomeFragment$2;

    invoke-direct {v2, p0}, Lcom/online/languages/study/studymaster/fragments/HomeFragment$2;-><init>(Lcom/online/languages/study/studymaster/fragments/HomeFragment;)V

    invoke-direct {p3, p0, v0, v1, v2}, Lcom/online/languages/study/studymaster/fragments/HomeFragment$RecyclerTouchListener;-><init>(Lcom/online/languages/study/studymaster/fragments/HomeFragment;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/online/languages/study/studymaster/fragments/HomeFragment$ClickListener;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-object p1
.end method
