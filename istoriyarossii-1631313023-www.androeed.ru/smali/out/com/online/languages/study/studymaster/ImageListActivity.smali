.class public Lcom/online/languages/study/studymaster/ImageListActivity;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "ImageListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/ImageListActivity$RecyclerTouchListener;,
        Lcom/online/languages/study/studymaster/ImageListActivity$ClickListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final PIC_LIST:Ljava/lang/String;

.field final STARRED:Ljava/lang/String;

.field appSettings:Landroid/content/SharedPreferences;

.field cardsAdapter:Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

.field cardsList:Landroid/widget/RelativeLayout;

.field cardsManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private changeLayoutBtn:Landroid/view/MenuItem;

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

.field dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

.field exerciseType:I

.field full_version:Ljava/lang/Boolean;

.field imageMapsData:Lcom/online/languages/study/studymaster/data/ImageMapsData;

.field imagesAdapter:Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

.field imagesList:Landroid/widget/RelativeLayout;

.field imagesManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field itemListWrap:Landroid/widget/RelativeLayout;

.field itemsList:Landroid/widget/RelativeLayout;

.field listType:I

.field mAdapter:Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

.field mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field navSection:Lcom/online/languages/study/studymaster/data/NavSection;

.field navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

.field openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

.field recyclerViewImages:Landroidx/recyclerview/widget/RecyclerView;

.field tCatID:Ljava/lang/String;

.field tSectionID:Ljava/lang/String;

.field themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

.field public themeTitle:Ljava/lang/String;

.field viewSection:Lcom/online/languages/study/studymaster/data/ViewSection;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BaseActivity;-><init>()V

    const-string v0, "01010"

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->tSectionID:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->tCatID:Ljava/lang/String;

    const-string v0, "starred"

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->STARRED:Ljava/lang/String;

    const-string v0, "pic_list"

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->PIC_LIST:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/online/languages/study/studymaster/ImageListActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/ImageListActivity;->longClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/online/languages/study/studymaster/ImageListActivity;Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/ImageListActivity;->findRemoved(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/online/languages/study/studymaster/ImageListActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/ImageListActivity;->checkItemById(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/online/languages/study/studymaster/ImageListActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/ImageListActivity;->applyLayoutStatus(I)V

    return-void
.end method

.method private applyLayoutStatus(I)V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->itemListWrap:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/ImageListActivity;->setWrapContentHeight(Landroid/view/View;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->imagesList:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/ImageListActivity;->setWrapContentHeight(Landroid/view/View;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->cardsList:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/ImageListActivity;->setWrapContentHeight(Landroid/view/View;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->itemListWrap:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->imagesList:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->cardsList:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    const/16 v0, 0x8

    const/4 v2, 0x1

    if-ne p1, v2, :cond_40

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->imagesList:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->cardsList:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->itemsList:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->changeLayoutBtn:Landroid/view/MenuItem;

    const v0, 0x7f040218

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/ImageListActivity;->getDrawableIcon(I)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_7a

    :cond_40
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5f

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->imagesList:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->itemsList:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->cardsList:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->changeLayoutBtn:Landroid/view/MenuItem;

    const v0, 0x7f04021a

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/ImageListActivity;->getDrawableIcon(I)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_7a

    :cond_5f
    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->cardsList:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->itemsList:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->imagesList:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->changeLayoutBtn:Landroid/view/MenuItem;

    const v0, 0x7f040219

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/ImageListActivity;->getDrawableIcon(I)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_7a
    return-void
.end method

.method private changeLayoutStatus()V
    .registers 4

    iget v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->listType:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    iput v1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->listType:I

    goto :goto_11

    :cond_9
    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    iput v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->listType:I

    goto :goto_11

    :cond_f
    iput v2, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->listType:I

    :goto_11
    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->appSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->listType:I

    const-string v2, "img_list_layout"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->listType:I

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/ImageListActivity;->applyLayoutStatus(I)V

    return-void
.end method

.method private checkItemById(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/data/DataManager;->checkStarStatusById(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    iget-object v3, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_3d

    iget-object v3, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v3, v3, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    if-eqz v0, :cond_2f

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/DataItem;

    const/4 v1, 0x1

    iput v1, p1, Lcom/online/languages/study/studymaster/data/DataItem;->starred:I

    goto :goto_3e

    :cond_2f
    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/DataItem;

    iput v1, p1, Lcom/online/languages/study/studymaster/data/DataItem;->starred:I

    goto :goto_3e

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_3d
    const/4 v2, -0x1

    :goto_3e
    if-eq v2, v4, :cond_4f

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-direct {p0, p1, v2, v0}, Lcom/online/languages/study/studymaster/ImageListActivity;->updateStarInList(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;IZ)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->cardsManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0, p1, v2, v0}, Lcom/online/languages/study/studymaster/ImageListActivity;->updateStarInList(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;IZ)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->imagesManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0, p1, v2, v0}, Lcom/online/languages/study/studymaster/ImageListActivity;->updateStarInList(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;IZ)V

    :cond_4f
    return-void
.end method

.method private findRemoved(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8b

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/DBHelper;->checkStarredList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->listType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->itemListWrap:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->mAdapter:Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/online/languages/study/studymaster/ImageListActivity;->removeFromList(Ljava/util/ArrayList;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->cardsAdapter:Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->imagesAdapter:Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->cardsList:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/ImageListActivity;->setWrapContentHeight(Landroid/view/View;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->imagesList:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/ImageListActivity;->setWrapContentHeight(Landroid/view/View;)V

    :cond_2a
    iget v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->listType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4c

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->cardsList:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->cardsAdapter:Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/online/languages/study/studymaster/ImageListActivity;->removeFromList(Ljava/util/ArrayList;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->mAdapter:Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->imagesAdapter:Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->itemListWrap:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/ImageListActivity;->setWrapContentHeight(Landroid/view/View;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->imagesList:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/ImageListActivity;->setWrapContentHeight(Landroid/view/View;)V

    :cond_4c
    iget v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->listType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6e

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->recyclerViewImages:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->imagesList:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->imagesAdapter:Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/online/languages/study/studymaster/ImageListActivity;->removeFromList(Ljava/util/ArrayList;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->cardsAdapter:Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->mAdapter:Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->cardsList:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/ImageListActivity;->setWrapContentHeight(Landroid/view/View;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->itemListWrap:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/ImageListActivity;->setWrapContentHeight(Landroid/view/View;)V

    :cond_6e
    const p1, 0x7f1101d9

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ImageListActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ImageListActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_8b
    return-void
.end method

.method private getDrawableIcon(I)I
    .registers 5

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageListActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    return p1
.end method

.method private longClick(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ImageListActivity;->changeStarred(Landroid/view/View;)V

    return-void
.end method

.method private removeFromList(Ljava/util/ArrayList;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Landroid/view/View;",
            "Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setMinimumHeight(I)V

    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/DataItem;

    iget v1, v1, Lcom/online/languages/study/studymaster/data/DataItem;->starred:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2b

    :try_start_19
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_22

    invoke-direct {p0, p2, p3}, Lcom/online/languages/study/studymaster/ImageListActivity;->setHR(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_26

    :cond_22
    invoke-virtual {p4, v0}, Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;->remove(I)V

    goto :goto_2b

    :catchall_26
    move-exception p1

    invoke-virtual {p4, v0}, Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;->remove(I)V

    throw p1

    :cond_2b
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_2e
    return-void
.end method

.method private setHR(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .registers 7

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setMinimumHeight(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/ImageListActivity$5;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/ImageListActivity$5;-><init>(Lcom/online/languages/study/studymaster/ImageListActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/ImageListActivity$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/online/languages/study/studymaster/ImageListActivity$6;-><init>(Lcom/online/languages/study/studymaster/ImageListActivity;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    const-wide/16 p1, 0x258

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

.method private updateStarIcon(Landroid/view/View;Z)V
    .registers 6

    if-eqz p1, :cond_2e

    const v0, 0x7f090281

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

    invoke-direct {p0, p1, p3}, Lcom/online/languages/study/studymaster/ImageListActivity;->updateStarIcon(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public changeStarred(Landroid/view/View;)V
    .registers 6

    const v0, 0x7f0902b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/data/DataManager;->checkStarStatusById(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "#gallery"

    invoke-virtual {v1, p1, v0, v2}, Lcom/online/languages/study/studymaster/DBHelper;->setStarred(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)I

    move-result v0

    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/ImageListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    const/16 v2, 0x1e

    if-nez v0, :cond_3c

    const v0, 0x7f1101d7

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v2, 0x12c

    :cond_3c
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageListActivity;->getListType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "starred"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->dataItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/ImageListActivity;->findRemoved(Ljava/util/ArrayList;)V

    goto :goto_51

    :cond_4e
    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/ImageListActivity;->checkItemById(Ljava/lang/String;)V

    :goto_51
    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public getDataItems()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->tCatID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/data/DataManager;->getCatDBList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getImages()V
    .registers 5

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageListActivity;->getDataItems()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->dataItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->viewSection:Lcom/online/languages/study/studymaster/data/ViewSection;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/ViewSection;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/ViewCategory;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->imageMapsData:Lcom/online/languages/study/studymaster/data/ImageMapsData;

    iget-object v3, v1, Lcom/online/languages/study/studymaster/data/ViewCategory;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/online/languages/study/studymaster/data/ImageMapsData;->getMapInfoById(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/ImageData;

    move-result-object v2

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/ImageData;->image:Ljava/lang/String;

    iput-object v2, v1, Lcom/online/languages/study/studymaster/data/ViewCategory;->image:Ljava/lang/String;

    goto :goto_e

    :cond_27
    return-void
.end method

.method public getListType()Ljava/lang/String;
    .registers 2

    const-string v0, "pic_list"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1e

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1e

    const-string p1, "result"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance p3, Lcom/online/languages/study/studymaster/ImageListActivity$4;

    invoke-direct {p3, p0, p1}, Lcom/online/languages/study/studymaster/ImageListActivity$4;-><init>(Lcom/online/languages/study/studymaster/ImageListActivity;Ljava/lang/String;)V

    const-wide/16 v0, 0x96

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1e
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "theme"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->themeTitle:Ljava/lang/String;

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v0, v3}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002b

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ImageListActivity;->setContentView(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "full_version"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->full_version:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "img_list_layout"

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->listType:I

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->setOrientation()V

    const p1, 0x7f0902e4

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ImageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ImageListActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f090173

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ImageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->itemsList:Landroid/widget/RelativeLayout;

    const p1, 0x7f09016a

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ImageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->itemListWrap:Landroid/widget/RelativeLayout;

    const p1, 0x7f090089

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ImageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->cardsList:Landroid/widget/RelativeLayout;

    const p1, 0x7f09015d

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ImageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->imagesList:Landroid/widget/RelativeLayout;

    new-instance p1, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-direct {p1, p0, v0}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    new-instance p1, Lcom/online/languages/study/studymaster/data/ImageMapsData;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/data/ImageMapsData;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->imageMapsData:Lcom/online/languages/study/studymaster/data/ImageMapsData;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "nav_structure"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/NavStructure;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "section_id"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->tSectionID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "cat_id"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->tCatID:Ljava/lang/String;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->tSectionID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/online/languages/study/studymaster/data/NavStructure;->getNavSectionByID(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/NavSection;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    new-instance v3, Lcom/online/languages/study/studymaster/data/ViewSection;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->tCatID:Ljava/lang/String;

    invoke-direct {v3, p0, p1, v4}, Lcom/online/languages/study/studymaster/data/ViewSection;-><init>(Landroid/content/Context;Lcom/online/languages/study/studymaster/data/NavSection;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->viewSection:Lcom/online/languages/study/studymaster/data/ViewSection;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "title"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ImageListActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageListActivity;->getImages()V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageListActivity;->getListType()Ljava/lang/String;

    move-result-object p1

    const-string v3, "starred"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10e

    const p1, 0x7f1101d9

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ImageListActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ImageListActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_10e
    const p1, 0x7f090222

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ImageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->dataItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->themeTitle:Ljava/lang/String;

    invoke-direct {p1, p0, v3, v0, v4}, Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->mAdapter:Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/online/languages/study/studymaster/adapters/DividerItemDecoration;

    invoke-direct {v3, p0}, Lcom/online/languages/study/studymaster/adapters/DividerItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setSelected(Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->mAdapter:Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    const p1, 0x7f090223

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ImageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->dataItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->themeTitle:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-direct {p1, p0, v3, v5, v4}, Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->cardsAdapter:Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p1, p0, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->cardsManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setSelected(Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->cardsAdapter:Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    const p1, 0x7f090224

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ImageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->recyclerViewImages:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->dataItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->themeTitle:Ljava/lang/String;

    invoke-direct {p1, p0, v3, v1, v4}, Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->imagesAdapter:Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p1, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->imagesManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->recyclerViewImages:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->recyclerViewImages:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->recyclerViewImages:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setSelected(Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->recyclerViewImages:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->imagesAdapter:Lcom/online/languages/study/studymaster/adapters/ImageListAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/online/languages/study/studymaster/ImageListActivity$RecyclerTouchListener;

    new-instance v1, Lcom/online/languages/study/studymaster/ImageListActivity$1;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/ImageListActivity$1;-><init>(Lcom/online/languages/study/studymaster/ImageListActivity;)V

    invoke-direct {v0, p0, p0, p1, v1}, Lcom/online/languages/study/studymaster/ImageListActivity$RecyclerTouchListener;-><init>(Lcom/online/languages/study/studymaster/ImageListActivity;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/online/languages/study/studymaster/ImageListActivity$ClickListener;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/online/languages/study/studymaster/ImageListActivity$RecyclerTouchListener;

    new-instance v1, Lcom/online/languages/study/studymaster/ImageListActivity$2;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/ImageListActivity$2;-><init>(Lcom/online/languages/study/studymaster/ImageListActivity;)V

    invoke-direct {v0, p0, p0, p1, v1}, Lcom/online/languages/study/studymaster/ImageListActivity$RecyclerTouchListener;-><init>(Lcom/online/languages/study/studymaster/ImageListActivity;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/online/languages/study/studymaster/ImageListActivity$ClickListener;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->recyclerViewImages:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/online/languages/study/studymaster/ImageListActivity$RecyclerTouchListener;

    new-instance v1, Lcom/online/languages/study/studymaster/ImageListActivity$3;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/ImageListActivity$3;-><init>(Lcom/online/languages/study/studymaster/ImageListActivity;)V

    invoke-direct {v0, p0, p0, p1, v1}, Lcom/online/languages/study/studymaster/ImageListActivity$RecyclerTouchListener;-><init>(Lcom/online/languages/study/studymaster/ImageListActivity;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/online/languages/study/studymaster/ImageListActivity$ClickListener;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0015

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09018e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->changeLayoutBtn:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->tSectionID:Ljava/lang/String;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->tCatID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/online/languages/study/studymaster/data/NavStructure;->getNavCatFromSection(Ljava/lang/String;Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/NavCategory;

    move-result-object v0

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/NavCategory;->param:Ljava/lang/String;

    const-string v1, "img_test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "img_desc_test"

    const/4 v3, 0x1

    if-nez v1, :cond_30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    :cond_30
    const v1, 0x7f0902c0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 p1, 0x3

    iput p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->exerciseType:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    const/4 p1, 0x4

    iput p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->exerciseType:I

    :cond_46
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/online/languages/study/studymaster/ImageListActivity$8;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/ImageListActivity$8;-><init>(Lcom/online/languages/study/studymaster/ImageListActivity;)V

    const-wide/16 v1, 0x50

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_22

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_d
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageListActivity;->openTest()V

    return v1

    :sswitch_11
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/ImageListActivity;->changeLayoutStatus()V

    return v1

    :sswitch_15
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageListActivity;->showInfoDialog()V

    return v1

    :sswitch_19
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageListActivity;->finish()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return v1

    :sswitch_data_22
    .sparse-switch
        0x102002c -> :sswitch_19
        0x7f090164 -> :sswitch_15
        0x7f09018e -> :sswitch_11
        0x7f0902c0 -> :sswitch_d
    .end sparse-switch
.end method

.method public openCat(Landroid/view/View;)V
    .registers 7

    const v0, 0x7f0902b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/online/languages/study/studymaster/ImageListActivity$7;

    invoke-direct {v2, p0, v0, p1}, Lcom/online/languages/study/studymaster/ImageListActivity$7;-><init>(Lcom/online/languages/study/studymaster/ImageListActivity;Ljava/lang/String;Landroid/view/View;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public openTest()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/online/languages/study/studymaster/ExerciseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->exerciseType:I

    const-string v2, "ex_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->tCatID:Ljava/lang/String;

    const-string v2, "cat_tag"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->dataItems:Ljava/util/ArrayList;

    const-string v2, "dataItems"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/online/languages/study/studymaster/ImageListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method public showAlertDialog(Ljava/lang/String;Landroid/view/View;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    iget-object v3, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1f

    iget-object v3, p0, Lcom/online/languages/study/studymaster/ImageListActivity;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v3, v3, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    move v2, v1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1f
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    const v1, 0x7f090191

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    const-string p2, "divider"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_34

    return-void

    :cond_34
    new-instance p2, Landroid/content/Intent;

    const-class v1, Lcom/online/languages/study/studymaster/ImageDetailActivity;

    invoke-direct {p2, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "starrable"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "id"

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "position"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/online/languages/study/studymaster/ImageListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const p1, 0x7f010028

    invoke-virtual {p0, p1, v0}, Lcom/online/languages/study/studymaster/ImageListActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public showInfoDialog()V
    .registers 5

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1100b4

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/ImageListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageListActivity;->getListType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "starred"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const v1, 0x7f1100ae

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/ImageListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1f
    const v2, 0x7f1100b5

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/ImageListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
