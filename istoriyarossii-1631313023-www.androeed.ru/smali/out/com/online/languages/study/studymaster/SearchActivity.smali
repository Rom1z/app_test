.class public Lcom/online/languages/study/studymaster/SearchActivity;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/SearchActivity$RecyclerTouchListener;,
        Lcom/online/languages/study/studymaster/SearchActivity$ClickListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field adapter:Lcom/online/languages/study/studymaster/adapters/SearchDataAdapter;

.field appSettings:Landroid/content/SharedPreferences;

.field card:Landroid/view/View;

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

.field displayData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field full_version:Ljava/lang/Boolean;

.field loadMoreTxt:Landroid/widget/TextView;

.field moreDataCoount:I

.field navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

.field openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field result:Landroid/widget/TextView;

.field searchView:Landroid/widget/SearchView;

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

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/SearchActivity;->moreDataCoount:I

    return-void
.end method

.method static synthetic access$000(Lcom/online/languages/study/studymaster/SearchActivity;Landroid/view/View;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/online/languages/study/studymaster/SearchActivity;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method private displayLoadMore(II)I
    .registers 3

    sub-int/2addr p2, p1

    const/16 p1, 0xa

    if-lez p2, :cond_a

    if-le p2, p1, :cond_b

    const/16 p2, 0xa

    goto :goto_b

    :cond_a
    const/4 p2, 0x0

    :cond_b
    :goto_b
    return p2
.end method

.method private manageMoreButton()V
    .registers 7

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SearchActivity;->displayData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/online/languages/study/studymaster/SearchActivity;->displayLoadMore(II)I

    move-result v0

    iput v0, p0, Lcom/online/languages/study/studymaster/SearchActivity;->moreDataCoount:I

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SearchActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->displayData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->moreDataCoount:I

    if-lez v1, :cond_4c

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->loadMoreTxt:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->loadMoreTxt:Landroid/widget/TextView;

    const v3, 0x7f1100bc

    invoke-virtual {p0, v3}, Lcom/online/languages/study/studymaster/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/online/languages/study/studymaster/SearchActivity;->moreDataCoount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_53

    :cond_4c
    iget-object v0, p0, Lcom/online/languages/study/studymaster/SearchActivity;->loadMoreTxt:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_53
    return-void
.end method

.method private onItemClick(Landroid/view/View;I)V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/SearchActivity$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/online/languages/study/studymaster/SearchActivity$4;-><init>(Lcom/online/languages/study/studymaster/SearchActivity;Landroid/view/View;I)V

    const-wide/16 p1, 0x32

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

.method private updateListItem(I)V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SearchActivity;->displayData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/SearchActivity;->checkNoteFromSearch(Lcom/online/languages/study/studymaster/data/DataItem;)Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SearchActivity;->displayData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DataItem;->type:Ljava/lang/String;

    const-string v1, "missing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setMinimumHeight(I)V

    :cond_26
    iget-object v0, p0, Lcom/online/languages/study/studymaster/SearchActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/SearchDataAdapter;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/adapters/SearchDataAdapter;->notifyItemChanged(I)V

    return-void
.end method


# virtual methods
.method public changeStarred(I)V
    .registers 7

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SearchActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v1, v0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    iget-object v2, v0, Lcom/online/languages/study/studymaster/data/DataItem;->filter:Ljava/lang/String;

    const-string v3, "#gallery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_17

    :cond_15
    const-string v3, ""

    :goto_17
    iget-object v2, v0, Lcom/online/languages/study/studymaster/data/DataItem;->filter:Ljava/lang/String;

    const-string v4, "#info"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    return-void

    :cond_22
    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DataItem;->filter:Ljava/lang/String;

    const-string v2, "#note"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    return-void

    :cond_2d
    iget-object v0, p0, Lcom/online/languages/study/studymaster/SearchActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/DBHelper;->checkStarred(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v2, p0, Lcom/online/languages/study/studymaster/SearchActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v1, v0, v3}, Lcom/online/languages/study/studymaster/DBHelper;->setStarred(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)I

    move-result v0

    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/SearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    const/16 v2, 0x1e

    if-nez v0, :cond_5c

    const v0, 0x7f1101d7

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v2, 0x12c

    :cond_5c
    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SearchActivity;->checkStarred(I)V

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public checkNoteFromSearch(Lcom/online/languages/study/studymaster/data/DataItem;)Lcom/online/languages/study/studymaster/data/DataItem;
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SearchActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iget-object v1, p1, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/DBHelper;->getNote(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/NoteData;

    move-result-object v0

    iget-object v1, v0, Lcom/online/languages/study/studymaster/data/NoteData;->status:Ljava/lang/String;

    const-string v2, "not_found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "missing"

    iput-object v1, p1, Lcom/online/languages/study/studymaster/data/DataItem;->type:Ljava/lang/String;

    :cond_16
    iget-object v1, v0, Lcom/online/languages/study/studymaster/data/NoteData;->title:Ljava/lang/String;

    iput-object v1, p1, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    iget-object v1, v0, Lcom/online/languages/study/studymaster/data/NoteData;->content:Ljava/lang/String;

    iput-object v1, p1, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/NoteData;->image:Ljava/lang/String;

    iput-object v0, p1, Lcom/online/languages/study/studymaster/data/DataItem;->image:Ljava/lang/String;

    return-object p1
.end method

.method public checkStarred(I)V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SearchActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/DBHelper;->checkStarredList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SearchActivity;->data:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/SearchActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/online/languages/study/studymaster/SearchActivity$3;-><init>(Lcom/online/languages/study/studymaster/SearchActivity;I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public focusLayout(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->searchView:Landroid/widget/SearchView;

    invoke-virtual {p1}, Landroid/widget/SearchView;->clearFocus()V

    return-void
.end method

.method public loadMore(Landroid/view/View;)V
    .registers 6

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->displayData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p0, Lcom/online/languages/study/studymaster/SearchActivity;->moreDataCoount:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SearchActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_17

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :cond_17
    iget-object v0, p0, Lcom/online/languages/study/studymaster/SearchActivity;->displayData:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/SearchActivity;->data:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/SearchActivity;->displayData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/SearchDataAdapter;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SearchActivity;->displayData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->moreDataCoount:I

    invoke-virtual {p1, v0, v1}, Lcom/online/languages/study/studymaster/adapters/SearchDataAdapter;->notifyItemRangeInserted(II)V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/SearchActivity;->manageMoreButton()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_12

    if-ne p2, v0, :cond_12

    const-string v1, "result"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/SearchActivity;->checkStarred(I)V

    :cond_12
    const/4 v1, 0x2

    if-ne p1, v1, :cond_20

    if-ne p2, v0, :cond_20

    const-string p1, "position"

    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/SearchActivity;->updateListItem(I)V

    :cond_20
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SearchActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "theme"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SearchActivity;->themeTitle:Ljava/lang/String;

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v0, v3}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0036

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SearchActivity;->setContentView(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "full_version"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->full_version:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "nav_structure"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/NavStructure;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/data/NavStructure;->getUniqueCats()Ljava/util/ArrayList;

    const p1, 0x7f0902e4

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SearchActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SearchActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SearchActivity;->setTitle(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/online/languages/study/studymaster/DBHelper;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->setOrientation()V

    const p1, 0x7f090085

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->card:Landroid/view/View;

    const p1, 0x7f090246

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->result:Landroid/widget/TextView;

    const p1, 0x7f090190

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->loadMoreTxt:Landroid/widget/TextView;

    const p1, 0x7f090222

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setSelected(Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/online/languages/study/studymaster/SearchActivity$RecyclerTouchListener;

    new-instance v1, Lcom/online/languages/study/studymaster/SearchActivity$1;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/SearchActivity$1;-><init>(Lcom/online/languages/study/studymaster/SearchActivity;)V

    invoke-direct {v0, p0, p0, p1, v1}, Lcom/online/languages/study/studymaster/SearchActivity$RecyclerTouchListener;-><init>(Lcom/online/languages/study/studymaster/SearchActivity;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/online/languages/study/studymaster/SearchActivity$ClickListener;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    const p1, 0x7f090243

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    new-instance v0, Lcom/online/languages/study/studymaster/SearchActivity$2;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/SearchActivity$2;-><init>(Lcom/online/languages/study/studymaster/SearchActivity;)V

    invoke-virtual {p1, v0}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SearchActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d001e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/SearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    const v1, 0x7f090247

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SearchView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->searchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SearchActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->searchView:Landroid/widget/SearchView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->searchView:Landroid/widget/SearchView;

    invoke-virtual {p1, v0}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->searchView:Landroid/widget/SearchView;

    invoke-virtual {p1, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->searchView:Landroid/widget/SearchView;

    const v1, 0x7f11014e

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->searchView:Landroid/widget/SearchView;

    invoke-virtual {p1, v0}, Landroid/widget/SearchView;->setIconified(Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->searchView:Landroid/widget/SearchView;

    invoke-virtual {p1}, Landroid/widget/SearchView;->requestFocus()Z

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SearchActivity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_e
    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_27

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/SearchDataAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->themeTitle:Ljava/lang/String;

    invoke-direct {p1, p0, v0, v1}, Lcom/online/languages/study/studymaster/adapters/SearchDataAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/SearchDataAdapter;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->result:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->card:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2a

    :cond_27
    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SearchActivity;->results(Ljava/lang/String;)V

    :goto_2a
    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public results(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/SearchActivity;->setWrapContentHeight(Landroid/view/View;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SearchActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/NavStructure;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/online/languages/study/studymaster/DBHelper;->searchData(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SearchActivity;->data:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v1, v0}, Lcom/online/languages/study/studymaster/DBHelper;->checkStarredList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SearchActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_46

    iget-object v3, p0, Lcom/online/languages/study/studymaster/SearchActivity;->result:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v3, 0x7f110113

    invoke-virtual {p0, v3}, Lcom/online/languages/study/studymaster/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/online/languages/study/studymaster/SearchActivity;->result:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->card:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_50

    :cond_46
    iget-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->result:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->card:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_50
    const/16 p1, 0xf

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/SearchActivity;->data:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->displayData:Ljava/util/ArrayList;

    if-le v0, p1, :cond_6a

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SearchActivity;->displayData:Ljava/util/ArrayList;

    :cond_6a
    new-instance p1, Lcom/online/languages/study/studymaster/adapters/SearchDataAdapter;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SearchActivity;->displayData:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->themeTitle:Ljava/lang/String;

    invoke-direct {p1, p0, v0, v1}, Lcom/online/languages/study/studymaster/adapters/SearchDataAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/SearchDataAdapter;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/SearchActivity;->manageMoreButton()V

    return-void
.end method

.method public showAlertDialog(Landroid/view/View;I)V
    .registers 7

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/DataItem;->filter:Ljava/lang/String;

    const-string v1, "#note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "source"

    const-string v2, "position"

    if-eqz v0, :cond_36

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/online/languages/study/studymaster/NoteActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    const-string v3, "note_id"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "search"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/online/languages/study/studymaster/SearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void

    :cond_36
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/online/languages/study/studymaster/ScrollingActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    const-string p2, "item"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Lcom/online/languages/study/studymaster/SearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const p1, 0x7f010028

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/SearchActivity;->overridePendingTransition(II)V

    return-void
.end method
