.class public Lcom/online/languages/study/studymaster/NotesArchiveActivity;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "NotesArchiveActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/NotesArchiveActivity$RecyclerTouchListener;,
        Lcom/online/languages/study/studymaster/NotesArchiveActivity$ClickListener;
    }
.end annotation


# instance fields
.field activeAction:Z

.field adapter:Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;

.field appSettings:Landroid/content/SharedPreferences;

.field cutList:Z

.field dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

.field dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

.field helperView:Landroid/widget/RelativeLayout;

.field mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

.field notesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataObject;",
            ">;"
        }
    .end annotation
.end field

.field openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

.field public themeTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BaseActivity;-><init>()V

    return-void
.end method

.method private addLast(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataObject;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataObject;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataObject;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->checkMoreItem(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/online/languages/study/studymaster/data/DataObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private checkListAnimation()V
    .registers 14

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->getCatList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->notesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "deleted"

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/data/DataObject;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/data/DataObject;->status:Ljava/lang/String;

    goto :goto_a

    :cond_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v4, "new"

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/data/DataObject;

    iput-object v4, v2, Lcom/online/languages/study/studymaster/data/DataObject;->status:Ljava/lang/String;

    goto :goto_1f

    :cond_30
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_32
    iget-object v5, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->notesList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-string v6, "updated"

    if-ge v2, v5, :cond_96

    iget-object v5, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->notesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/online/languages/study/studymaster/data/DataObject;

    const/4 v7, 0x0

    :goto_45
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_93

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/online/languages/study/studymaster/data/DataObject;

    iget-object v9, v8, Lcom/online/languages/study/studymaster/data/DataObject;->id:Ljava/lang/String;

    iget-object v10, v5, Lcom/online/languages/study/studymaster/data/DataObject;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_90

    const-string v7, "norm"

    iput-object v7, v8, Lcom/online/languages/study/studymaster/data/DataObject;->status:Ljava/lang/String;

    iput-object v7, v5, Lcom/online/languages/study/studymaster/data/DataObject;->status:Ljava/lang/String;

    iget-wide v9, v5, Lcom/online/languages/study/studymaster/data/DataObject;->time_updated:J

    iget-wide v11, v8, Lcom/online/languages/study/studymaster/data/DataObject;->time_updated:J

    cmp-long v7, v9, v11

    if-nez v7, :cond_71

    iget-wide v9, v5, Lcom/online/languages/study/studymaster/data/DataObject;->time_updated_sort:J

    iget-wide v11, v8, Lcom/online/languages/study/studymaster/data/DataObject;->time_updated_sort:J

    cmp-long v7, v9, v11

    if-eqz v7, :cond_7d

    :cond_71
    iget-wide v9, v8, Lcom/online/languages/study/studymaster/data/DataObject;->time_updated:J

    iput-wide v9, v5, Lcom/online/languages/study/studymaster/data/DataObject;->time_updated:J

    iget-wide v9, v8, Lcom/online/languages/study/studymaster/data/DataObject;->time_updated_sort:J

    iput-wide v9, v5, Lcom/online/languages/study/studymaster/data/DataObject;->time_updated_sort:J

    iput-object v6, v5, Lcom/online/languages/study/studymaster/data/DataObject;->status:Ljava/lang/String;

    iput-object v6, v8, Lcom/online/languages/study/studymaster/data/DataObject;->status:Ljava/lang/String;

    :cond_7d
    iget-object v6, v5, Lcom/online/languages/study/studymaster/data/DataObject;->id:Ljava/lang/String;

    const-string v7, "last"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_93

    iget-object v6, v8, Lcom/online/languages/study/studymaster/data/DataObject;->title:Ljava/lang/String;

    iput-object v6, v5, Lcom/online/languages/study/studymaster/data/DataObject;->title:Ljava/lang/String;

    iget-object v6, v8, Lcom/online/languages/study/studymaster/data/DataObject;->info:Ljava/lang/String;

    iput-object v6, v5, Lcom/online/languages/study/studymaster/data/DataObject;->info:Ljava/lang/String;

    goto :goto_93

    :cond_90
    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    :cond_93
    :goto_93
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_96
    const/4 v2, 0x0

    :goto_97
    iget-object v5, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->notesList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_dc

    iget-object v5, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->notesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/online/languages/study/studymaster/data/DataObject;

    iget-object v7, v5, Lcom/online/languages/study/studymaster/data/DataObject;->status:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c0

    iget-object v7, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v8, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->helperView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v7, v8}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->setHR(Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;)V

    iget-object v7, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->notesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v7, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;

    invoke-virtual {v7, v2}, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->notifyItemRemoved(I)V

    :cond_c0
    iget-object v5, v5, Lcom/online/languages/study/studymaster/data/DataObject;->status:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d9

    iget-object v5, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->helperView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v5, v7}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->setHR(Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;)V

    iget-object v5, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->notesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v5, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;

    invoke-virtual {v5, v2}, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->notifyItemRemoved(I)V

    :cond_d9
    add-int/lit8 v2, v2, 0x1

    goto :goto_97

    :cond_dc
    const/4 v2, 0x0

    :goto_dd
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_119

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/online/languages/study/studymaster/data/DataObject;

    iget-object v5, v3, Lcom/online/languages/study/studymaster/data/DataObject;->status:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_116

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-le v2, v5, :cond_10c

    iget-object v5, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->notesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;

    iget-object v5, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->notesList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->notifyItemInserted(I)V

    goto :goto_116

    :cond_10c
    iget-object v5, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->notesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;

    invoke-virtual {v3, v2}, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->notifyItemInserted(I)V

    :cond_116
    :goto_116
    add-int/lit8 v2, v2, 0x1

    goto :goto_dd

    :cond_119
    :goto_119
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_13a

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/data/DataObject;

    iget-object v3, v2, Lcom/online/languages/study/studymaster/data/DataObject;->status:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_137

    iget-object v3, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->notesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;

    invoke-virtual {v2, v1}, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->notifyItemInserted(I)V

    :cond_137
    add-int/lit8 v1, v1, 0x1

    goto :goto_119

    :cond_13a
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->updateMoreIem()V

    return-void
.end method

.method private checkMoreItem(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/online/languages/study/studymaster/data/DataObject;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataObject;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataObject;",
            ">;)",
            "Lcom/online/languages/study/studymaster/data/DataObject;"
        }
    .end annotation

    new-instance v0, Lcom/online/languages/study/studymaster/data/DataObject;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/data/DataObject;-><init>()V

    const-string v1, "last"

    iput-object v1, v0, Lcom/online/languages/study/studymaster/data/DataObject;->id:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p2, p1

    if-lez p2, :cond_30

    const p1, 0x7f1100bd

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/online/languages/study/studymaster/data/DataObject;->title:Ljava/lang/String;

    const-string p1, "show"

    iput-object p1, v0, Lcom/online/languages/study/studymaster/data/DataObject;->info:Ljava/lang/String;

    goto :goto_34

    :cond_30
    const-string p1, "hide"

    iput-object p1, v0, Lcom/online/languages/study/studymaster/data/DataObject;->info:Ljava/lang/String;

    :goto_34
    return-object v0
.end method

.method private editGroupFromList(Lcom/online/languages/study/studymaster/data/DataObject;)V
    .registers 2

    return-void
.end method

.method private editNote(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/online/languages/study/studymaster/NoteEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "note_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "note_action"

    const-string v1, "update"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private openListView()V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/NotesArchiveActivity$1;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/NotesArchiveActivity$1;-><init>(Lcom/online/languages/study/studymaster/NotesArchiveActivity;)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setHR(Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;)V
    .registers 7

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setMinimumHeight(I)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/NotesArchiveActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/online/languages/study/studymaster/NotesArchiveActivity$2;-><init>(Lcom/online/languages/study/studymaster/NotesArchiveActivity;Landroidx/recyclerview/widget/RecyclerView;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/NotesArchiveActivity$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/online/languages/study/studymaster/NotesArchiveActivity$3;-><init>(Lcom/online/languages/study/studymaster/NotesArchiveActivity;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;)V

    const-wide/16 p1, 0x1c2

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setWrapContentHeight(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateMoreIem()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->notesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->notifyItemChanged(I)V

    return-void
.end method


# virtual methods
.method public getCatList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->helperView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->setWrapContentHeight(Landroid/view/View;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/data/DataManager;->getNotesForArchive()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_26

    iget-boolean v2, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->cutList:Z

    if-eqz v2, :cond_26

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_26
    invoke-direct {p0, v1, v0}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->addLast(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0xa

    if-ne p1, p2, :cond_a

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->updateList()V

    :cond_a
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "theme"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->themeTitle:Ljava/lang/String;

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v0, v3}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003c

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->setContentView(I)V

    new-instance p1, Lcom/online/languages/study/studymaster/data/NavStructure;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/data/NavStructure;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->cutList:Z

    const v0, 0x7f0902e4

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f11011a

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->setTitle(I)V

    iput-boolean v2, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->activeAction:Z

    const v0, 0x7f09018f

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->helperView:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-direct {v0, p0, p1}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object p1, v0, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    const p1, 0x7f090222

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->updateList()V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->openListView()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d001c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_18

    const v1, 0x7f090165

    if-eq v0, v1, :cond_14

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_14
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->showInfoDialog()V

    return v2

    :cond_18
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->finish()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return v2
.end method

.method public openCatEdit(Lcom/online/languages/study/studymaster/data/DataObject;)V
    .registers 2

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DataObject;->id:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->editNote(Ljava/lang/String;)V

    return-void
.end method

.method public openCompleteList(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->cutList:Z

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->updateList()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->helperView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->clearAnimation()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->helperView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->setWrapContentHeight(Landroid/view/View;)V

    return-void
.end method

.method public openMyCat(Lcom/online/languages/study/studymaster/data/DataObject;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/online/languages/study/studymaster/NoteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DataObject;->id:Ljava/lang/String;

    const-string v1, "note_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method public performAction(Lcom/online/languages/study/studymaster/data/DataObject;Ljava/lang/String;)V
    .registers 4

    const-string v0, "update"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->openCatEdit(Lcom/online/languages/study/studymaster/data/DataObject;)V

    :cond_b
    const-string v0, "archive"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->unarchive(Lcom/online/languages/study/studymaster/data/DataObject;)V

    :cond_16
    return-void
.end method

.method public showInfoDialog()V
    .registers 4

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1100b1

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1100b5

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unarchive(Lcom/online/languages/study/studymaster/data/DataObject;)V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DataObject;->id:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/online/languages/study/studymaster/DBHelper;->parentNote(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->checkListAnimation()V

    return-void
.end method

.method public updateList()V
    .registers 4

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->getCatList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->notesList:Ljava/util/ArrayList;

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;

    invoke-direct {v1, p0, v0, p0}, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/online/languages/study/studymaster/NotesArchiveActivity;)V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    const/4 v0, 0x2

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    new-instance v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {v2, v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
