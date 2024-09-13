.class public Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;
.super Landroidx/fragment/app/Fragment;
.source "UserListTabFragment1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$RecyclerTouchListener;,
        Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$ClickListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field appSettings:Landroid/content/SharedPreferences;

.field comeBack:Ljava/lang/Boolean;

.field compactLayout:Ljava/lang/Boolean;

.field data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field showDialog:Ljava/lang/Boolean;

.field vAdapter:Lcom/online/languages/study/studymaster/adapters/ContentAdapter;


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

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->data:Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->showDialog:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->comeBack:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;Landroid/view/View;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->changeConfirmStatus(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$200(Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->findRemoved(Ljava/util/ArrayList;)V

    return-void
.end method

.method private changeConfirmStatus(Ljava/lang/Boolean;)V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->appSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "set_starred_confirm"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private checkList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 5
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

    new-instance v0, Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/online/languages/study/studymaster/DBHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/DBHelper;->checkStarredList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/DataItem;

    iget v1, v1, Lcom/online/languages/study/studymaster/data/DataItem;->starred:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    :cond_26
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->checkWordsLength()V

    return-object p1
.end method

.method private checkWordsLength()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/UserListActivity;

    invoke-virtual {v1, v0}, Lcom/online/languages/study/studymaster/UserListActivity;->setPageTitle(I)V

    return-void
.end method

.method private findRemoved(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    goto :goto_5a

    :cond_3
    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/DBHelper;->checkStarredList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setMinimumHeight(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5a

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/data/DataItem;

    iget v2, v2, Lcom/online/languages/study/studymaster/data/DataItem;->starred:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_57

    :try_start_25
    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4a

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2f
    if-ge v3, v2, :cond_47

    iget-object v5, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_44

    iget-object v5, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    :cond_47
    invoke-direct {p0, v4}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->setHR(I)V
    :try_end_4a
    .catchall {:try_start_25 .. :try_end_4a} :catchall_50

    :cond_4a
    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->vAdapter:Lcom/online/languages/study/studymaster/adapters/ContentAdapter;

    invoke-virtual {v2, v1}, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;->remove(I)V

    goto :goto_57

    :catchall_50
    move-exception p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->vAdapter:Lcom/online/languages/study/studymaster/adapters/ContentAdapter;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;->remove(I)V

    throw p1

    :cond_57
    :goto_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_5a
    :goto_5a
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->checkWordsLength()V

    return-void
.end method

.method private onItemClick(Landroid/view/View;I)V
    .registers 6

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$5;

    invoke-direct {v0, p0, p1}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$5;-><init>(Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;Landroid/view/View;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private openView(Landroid/view/View;)V
    .registers 6

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$6;

    invoke-direct {v1, p0, p1}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$6;-><init>(Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;Landroid/view/View;)V

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setHR(I)V
    .registers 6

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$8;

    invoke-direct {v1, p0, p1}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$8;-><init>(Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;I)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public changeStarred(I)V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/DBHelper;->checkStarred(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/online/languages/study/studymaster/DBHelper;->setStarred(Ljava/lang/String;Ljava/lang/Boolean;)I

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->checkStarred()V

    return-void
.end method

.method public checkStarred()V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$7;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$7;-><init>(Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->comeBack:Ljava/lang/Boolean;

    return-void
.end method

.method public confirmChange(I)V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "set_starred_confirm"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->openConfirmDialog(I)V

    goto :goto_12

    :cond_f
    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->changeStarred(I)V

    :goto_12
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    const/16 v0, 0x1e

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11

    const p3, 0x7f0c0083

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/online/languages/study/studymaster/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/online/languages/study/studymaster/UserListActivity;

    iget-object p2, p2, Lcom/online/languages/study/studymaster/UserListActivity;->topicData:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->data:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->appSettings:Landroid/content/SharedPreferences;

    const-string p3, "show_status"

    const-string v1, "1"

    invoke-interface {p2, p3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->appSettings:Landroid/content/SharedPreferences;

    const-string p3, "theme"

    const-string v1, "default"

    invoke-interface {p2, p3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const p2, 0x7f0901bd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->data:Ljava/util/ArrayList;

    const/4 v6, 0x1

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;Z)V

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->vAdapter:Lcom/online/languages/study/studymaster/adapters/ContentAdapter;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/online/languages/study/studymaster/adapters/DividerItemDecoration;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p3, v1}, Lcom/online/languages/study/studymaster/adapters/DividerItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->vAdapter:Lcom/online/languages/study/studymaster/adapters/ContentAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p2}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->openView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$1;

    invoke-direct {v2, p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$1;-><init>(Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;)V

    invoke-direct {p3, p0, v0, v1, v2}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$RecyclerTouchListener;-><init>(Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$ClickListener;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-object p1
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->comeBack:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->data:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->checkList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->data:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->vAdapter:Lcom/online/languages/study/studymaster/adapters/ContentAdapter;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;->notifyDataSetChanged()V

    goto :goto_20

    :cond_19
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->comeBack:Ljava/lang/Boolean;

    :goto_20
    return-void
.end method

.method public openConfirmDialog(I)V
    .registers 6

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0c0076

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09009c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    new-instance v3, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$2;

    invoke-direct {v3, p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$2;-><init>(Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f110045

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$3;

    invoke-direct {v1, p0, p1}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$3;-><init>(Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;I)V

    const p1, 0x7f11004c

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p1, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$4;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$4;-><init>(Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;)V

    const v1, 0x7f110035

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
