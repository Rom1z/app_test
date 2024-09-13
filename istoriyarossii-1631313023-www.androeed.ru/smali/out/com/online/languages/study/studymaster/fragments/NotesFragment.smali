.class public Lcom/online/languages/study/studymaster/fragments/NotesFragment;
.super Landroidx/fragment/app/Fragment;
.source "NotesFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/fragments/NotesFragment$RecyclerTouchListener;,
        Lcom/online/languages/study/studymaster/fragments/NotesFragment$ClickListener;
    }
.end annotation


# instance fields
.field adapter:Lcom/online/languages/study/studymaster/adapters/NotesAdapter;

.field appSettings:Landroid/content/SharedPreferences;

.field archiveMenuItem:Landroid/view/MenuItem;

.field cutList:Z

.field dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

.field helperView:Landroid/widget/RelativeLayout;

.field notes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/NoteData;",
            ">;"
        }
    .end annotation
.end field

.field openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public themeTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/online/languages/study/studymaster/fragments/NotesFragment;Lcom/online/languages/study/studymaster/data/NoteData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->deleteNote(Lcom/online/languages/study/studymaster/data/NoteData;)V

    return-void
.end method

.method static synthetic access$100(Lcom/online/languages/study/studymaster/fragments/NotesFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->checkListAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/online/languages/study/studymaster/fragments/NotesFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->newNote()V

    return-void
.end method

.method private addLast(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/NoteData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/NoteData;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/NoteData;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->checkMoreItem(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/online/languages/study/studymaster/data/NoteData;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private archiveNote(Lcom/online/languages/study/studymaster/data/NoteData;)V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/NoteData;->id:Ljava/lang/String;

    const-string v1, "note_archive"

    invoke-virtual {v0, p1, v1}, Lcom/online/languages/study/studymaster/DBHelper;->parentNote(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->updateList()V

    return-void
.end method

.method private checkList()V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/fragments/NotesFragment$5;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment$5;-><init>(Lcom/online/languages/study/studymaster/fragments/NotesFragment;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private checkListAnimation()V
    .registers 14

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->getNotes()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->notes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "deleted"

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/data/NoteData;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/data/NoteData;->status:Ljava/lang/String;

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

    check-cast v2, Lcom/online/languages/study/studymaster/data/NoteData;

    iput-object v4, v2, Lcom/online/languages/study/studymaster/data/NoteData;->status:Ljava/lang/String;

    goto :goto_1f

    :cond_30
    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->notes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_36
    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v5, "updated"

    const-string v6, "updated_sort"

    if-eqz v2, :cond_a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/data/NoteData;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_36

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/online/languages/study/studymaster/data/NoteData;

    iget-object v9, v8, Lcom/online/languages/study/studymaster/data/NoteData;->id:Ljava/lang/String;

    iget-object v10, v2, Lcom/online/languages/study/studymaster/data/NoteData;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4a

    const-string v7, "norm"

    iput-object v7, v8, Lcom/online/languages/study/studymaster/data/NoteData;->status:Ljava/lang/String;

    iput-object v7, v2, Lcom/online/languages/study/studymaster/data/NoteData;->status:Ljava/lang/String;

    iget-wide v9, v2, Lcom/online/languages/study/studymaster/data/NoteData;->time_updated:J

    iget-wide v11, v8, Lcom/online/languages/study/studymaster/data/NoteData;->time_updated:J

    cmp-long v7, v9, v11

    if-eqz v7, :cond_82

    iget-object v7, v8, Lcom/online/languages/study/studymaster/data/NoteData;->title:Ljava/lang/String;

    iput-object v7, v2, Lcom/online/languages/study/studymaster/data/NoteData;->title:Ljava/lang/String;

    iget-object v7, v8, Lcom/online/languages/study/studymaster/data/NoteData;->content:Ljava/lang/String;

    iput-object v7, v2, Lcom/online/languages/study/studymaster/data/NoteData;->content:Ljava/lang/String;

    iget-object v7, v8, Lcom/online/languages/study/studymaster/data/NoteData;->image:Ljava/lang/String;

    iput-object v7, v2, Lcom/online/languages/study/studymaster/data/NoteData;->image:Ljava/lang/String;

    iget-wide v9, v8, Lcom/online/languages/study/studymaster/data/NoteData;->time_updated:J

    iput-wide v9, v2, Lcom/online/languages/study/studymaster/data/NoteData;->time_updated:J

    iput-object v5, v2, Lcom/online/languages/study/studymaster/data/NoteData;->status:Ljava/lang/String;

    iput-object v5, v8, Lcom/online/languages/study/studymaster/data/NoteData;->status:Ljava/lang/String;

    :cond_82
    iget-wide v9, v2, Lcom/online/languages/study/studymaster/data/NoteData;->time_updated_sort:J

    iget-wide v11, v8, Lcom/online/languages/study/studymaster/data/NoteData;->time_updated_sort:J

    cmp-long v5, v9, v11

    if-eqz v5, :cond_92

    iget-wide v9, v8, Lcom/online/languages/study/studymaster/data/NoteData;->time_updated_sort:J

    iput-wide v9, v2, Lcom/online/languages/study/studymaster/data/NoteData;->time_updated_sort:J

    iput-object v6, v2, Lcom/online/languages/study/studymaster/data/NoteData;->status:Ljava/lang/String;

    iput-object v6, v8, Lcom/online/languages/study/studymaster/data/NoteData;->status:Ljava/lang/String;

    :cond_92
    iget-object v5, v2, Lcom/online/languages/study/studymaster/data/NoteData;->id:Ljava/lang/String;

    const-string v6, "last"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    iget-object v5, v8, Lcom/online/languages/study/studymaster/data/NoteData;->title:Ljava/lang/String;

    iput-object v5, v2, Lcom/online/languages/study/studymaster/data/NoteData;->title:Ljava/lang/String;

    iget-object v5, v8, Lcom/online/languages/study/studymaster/data/NoteData;->info:Ljava/lang/String;

    iput-object v5, v2, Lcom/online/languages/study/studymaster/data/NoteData;->info:Ljava/lang/String;

    goto :goto_36

    :cond_a5
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a7
    iget-object v7, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->notes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_f9

    iget-object v7, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->notes:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/online/languages/study/studymaster/data/NoteData;

    iget-object v8, v7, Lcom/online/languages/study/studymaster/data/NoteData;->status:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c4

    iget-object v8, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->adapter:Lcom/online/languages/study/studymaster/adapters/NotesAdapter;

    invoke-virtual {v8, v2}, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->notifyItemChanged(I)V

    :cond_c4
    iget-object v8, v7, Lcom/online/languages/study/studymaster/data/NoteData;->status:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_dd

    iget-object v8, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->helperView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v8, v9}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->setHR(Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;)V

    iget-object v8, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->notes:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v8, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->adapter:Lcom/online/languages/study/studymaster/adapters/NotesAdapter;

    invoke-virtual {v8, v2}, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->notifyItemRemoved(I)V

    :cond_dd
    iget-object v7, v7, Lcom/online/languages/study/studymaster/data/NoteData;->status:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f6

    iget-object v7, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v8, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->helperView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v7, v8}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->setHR(Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;)V

    iget-object v7, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->notes:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v7, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->adapter:Lcom/online/languages/study/studymaster/adapters/NotesAdapter;

    invoke-virtual {v7, v2}, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->notifyItemRemoved(I)V

    :cond_f6
    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    :cond_f9
    const/4 v2, 0x0

    :goto_fa
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_136

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/online/languages/study/studymaster/data/NoteData;

    iget-object v5, v3, Lcom/online/languages/study/studymaster/data/NoteData;->status:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_133

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-le v2, v5, :cond_129

    iget-object v5, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->notes:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->adapter:Lcom/online/languages/study/studymaster/adapters/NotesAdapter;

    iget-object v5, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->notes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->notifyItemInserted(I)V

    goto :goto_133

    :cond_129
    iget-object v5, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->notes:Ljava/util/ArrayList;

    invoke-virtual {v5, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->adapter:Lcom/online/languages/study/studymaster/adapters/NotesAdapter;

    invoke-virtual {v3, v2}, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->notifyItemInserted(I)V

    :cond_133
    :goto_133
    add-int/lit8 v2, v2, 0x1

    goto :goto_fa

    :cond_136
    :goto_136
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_157

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/data/NoteData;

    iget-object v3, v2, Lcom/online/languages/study/studymaster/data/NoteData;->status:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_154

    iget-object v3, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->notes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->adapter:Lcom/online/languages/study/studymaster/adapters/NotesAdapter;

    invoke-virtual {v2, v1}, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->notifyItemInserted(I)V

    :cond_154
    add-int/lit8 v1, v1, 0x1

    goto :goto_136

    :cond_157
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->updateMoreIem()V

    return-void
.end method

.method private checkMoreItem(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/online/languages/study/studymaster/data/NoteData;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/NoteData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/NoteData;",
            ">;)",
            "Lcom/online/languages/study/studymaster/data/NoteData;"
        }
    .end annotation

    new-instance v0, Lcom/online/languages/study/studymaster/data/NoteData;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/data/NoteData;-><init>()V

    const-string v1, "last"

    iput-object v1, v0, Lcom/online/languages/study/studymaster/data/NoteData;->id:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p2, p1

    if-lez p2, :cond_30

    const p1, 0x7f1100bd

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/online/languages/study/studymaster/data/NoteData;->title:Ljava/lang/String;

    const-string p1, "show"

    iput-object p1, v0, Lcom/online/languages/study/studymaster/data/NoteData;->info:Ljava/lang/String;

    goto :goto_34

    :cond_30
    const-string p1, "hide"

    iput-object p1, v0, Lcom/online/languages/study/studymaster/data/NoteData;->info:Ljava/lang/String;

    :goto_34
    return-object v0
.end method

.method private deleteNote(Lcom/online/languages/study/studymaster/data/NoteData;)V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/DBHelper;->deleteNote(Lcom/online/languages/study/studymaster/data/NoteData;)V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->updateList()V

    return-void
.end method

.method private editNote(Lcom/online/languages/study/studymaster/data/NoteData;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/online/languages/study/studymaster/NoteEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/NoteData;->id:Ljava/lang/String;

    const-string v1, "note_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "note_action"

    const-string v1, "update"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x14

    invoke-virtual {p0, v0, p1}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private getNotes()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/NoteData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->helperView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->setWrapContentHeight(Landroid/view/View;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/data/DataManager;->getNotes()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_26

    iget-boolean v2, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->cutList:Z

    if-eqz v2, :cond_26

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_26
    invoke-direct {p0, v1, v0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->addLast(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private newNote()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/online/languages/study/studymaster/NoteEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "note_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "note_action"

    const-string v2, "create"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private openListView()V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/fragments/NotesFragment$1;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment$1;-><init>(Lcom/online/languages/study/studymaster/fragments/NotesFragment;)V

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

    new-instance v1, Lcom/online/languages/study/studymaster/fragments/NotesFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/online/languages/study/studymaster/fragments/NotesFragment$6;-><init>(Lcom/online/languages/study/studymaster/fragments/NotesFragment;Landroidx/recyclerview/widget/RecyclerView;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/fragments/NotesFragment$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/online/languages/study/studymaster/fragments/NotesFragment$7;-><init>(Lcom/online/languages/study/studymaster/fragments/NotesFragment;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;)V

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

.method private updateList()V
    .registers 1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->checkList()V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->checkArchive()V

    return-void
.end method

.method private updateListNoAnimation()V
    .registers 4

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->getNotes()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->notes:Ljava/util/ArrayList;

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->notes:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p0}, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/online/languages/study/studymaster/fragments/NotesFragment;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->adapter:Lcom/online/languages/study/studymaster/adapters/NotesAdapter;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->checkArchive()V

    return-void
.end method

.method private updateMoreIem()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->adapter:Lcom/online/languages/study/studymaster/adapters/NotesAdapter;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->notes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method private updateNoteSort(Lcom/online/languages/study/studymaster/data/NoteData;)V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/DBHelper;->updateNoteSortTime(Lcom/online/languages/study/studymaster/data/NoteData;)V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->updateList()V

    return-void
.end method


# virtual methods
.method public checkArchive()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/data/DataManager;->getNotesForArchive()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->archiveMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1d

    :cond_15
    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->archiveMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1d

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1d
    :goto_1d
    return-void
.end method

.method public deleteConfirmDialog(Lcom/online/languages/study/studymaster/data/NoteData;)V
    .registers 4

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110045

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f11004e

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/online/languages/study/studymaster/fragments/NotesFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/online/languages/study/studymaster/fragments/NotesFragment$3;-><init>(Lcom/online/languages/study/studymaster/fragments/NotesFragment;Lcom/online/languages/study/studymaster/data/NoteData;)V

    const p1, 0x7f11004c

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p1, Lcom/online/languages/study/studymaster/fragments/NotesFragment$4;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment$4;-><init>(Lcom/online/languages/study/studymaster/fragments/NotesFragment;)V

    const v1, 0x7f110035

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public fabClick()V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/fragments/NotesFragment$8;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment$8;-><init>(Lcom/online/languages/study/studymaster/fragments/NotesFragment;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0xa

    if-ne p1, p2, :cond_b

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->updateListNoAnimation()V

    goto :goto_e

    :cond_b
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->updateList()V

    :goto_e
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0d0018

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f090198

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->archiveMenuItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->checkArchive()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    const p3, 0x7f0c008a

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->setHasOptionsMenu(Z)V

    new-instance p3, Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p3, v1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    new-instance p3, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p3, v1}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    const p3, 0x7f090222

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p3, 0x7f09018f

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->helperView:Landroid/widget/RelativeLayout;

    iput-boolean p2, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->cutList:Z

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->getNotes()Ljava/util/ArrayList;

    move-result-object p3

    iput-object p3, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->notes:Ljava/util/ArrayList;

    new-instance p3, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->notes:Ljava/util/ArrayList;

    invoke-direct {p3, v1, v2, p0}, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/online/languages/study/studymaster/fragments/NotesFragment;)V

    iput-object p3, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->adapter:Lcom/online/languages/study/studymaster/adapters/NotesAdapter;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f050012

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    if-eqz p3, :cond_5c

    const/4 p3, 0x2

    goto :goto_5d

    :cond_5c
    const/4 p3, 0x1

    :goto_5d
    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {v1, p3, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->adapter:Lcom/online/languages/study/studymaster/adapters/NotesAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->openListView()V

    return-object p1
.end method

.method public onNoteClick(Lcom/online/languages/study/studymaster/data/NoteData;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/online/languages/study/studymaster/NoteActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/NoteData;->id:Ljava/lang/String;

    const-string v1, "note_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x14

    invoke-virtual {p0, v0, p1}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method public onNoteLongClick(Lcom/online/languages/study/studymaster/data/NoteData;)V
    .registers 4

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;-><init>(Landroid/content/Context;Lcom/online/languages/study/studymaster/fragments/NotesFragment;)V

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;->createDialog(Lcom/online/languages/study/studymaster/data/NoteData;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090198

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->openNotesArchive()V

    const/4 p1, 0x1

    return p1

    :cond_e
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public openCompleteList()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->cutList:Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->helperView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->helperView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->setWrapContentHeight(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->updateListNoAnimation()V

    return-void
.end method

.method public openNotesArchive()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/online/languages/study/studymaster/NotesArchiveActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method public performAction(ILcom/online/languages/study/studymaster/data/NoteData;)V
    .registers 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    invoke-direct {p0, p2}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->updateNoteSort(Lcom/online/languages/study/studymaster/data/NoteData;)V

    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    invoke-direct {p0, p2}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->editNote(Lcom/online/languages/study/studymaster/data/NoteData;)V

    :cond_c
    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    invoke-direct {p0, p2}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->archiveNote(Lcom/online/languages/study/studymaster/data/NoteData;)V

    :cond_12
    const/4 v0, 0x4

    if-ne p1, v0, :cond_24

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/online/languages/study/studymaster/fragments/NotesFragment$2;

    invoke-direct {v0, p0, p2}, Lcom/online/languages/study/studymaster/fragments/NotesFragment$2;-><init>(Lcom/online/languages/study/studymaster/fragments/NotesFragment;Lcom/online/languages/study/studymaster/data/NoteData;)V

    const-wide/16 v1, 0xdc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_24
    return-void
.end method
