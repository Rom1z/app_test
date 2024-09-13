.class public Lcom/online/languages/study/studymaster/fragments/GalleryFragment;
.super Landroidx/fragment/app/Fragment;
.source "GalleryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/fragments/GalleryFragment$CatSet;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field appSettings:Landroid/content/SharedPreferences;

.field cardsList:Landroid/widget/LinearLayout;

.field changeLayoutBtn:Landroid/view/MenuItem;

.field context:Landroid/content/Context;

.field itemsList:Landroid/widget/LinearLayout;

.field listType:I

.field navSection:Lcom/online/languages/study/studymaster/data/NavSection;

.field navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

.field openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

.field tCatID:Ljava/lang/String;

.field tSectionID:Ljava/lang/String;

.field public themeTitle:Ljava/lang/String;

.field viewSection:Lcom/online/languages/study/studymaster/data/ViewSection;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, "gallery"

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->tSectionID:Ljava/lang/String;

    const-string v0, "root"

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->tCatID:Ljava/lang/String;

    return-void
.end method

.method private addGrid(Lcom/online/languages/study/studymaster/fragments/GalleryFragment$CatSet;)V
    .registers 9

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c0096

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0902e1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p1, Lcom/online/languages/study/studymaster/fragments/GalleryFragment$CatSet;->title:Ljava/lang/String;

    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_35

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4b

    :cond_35
    iget-object v3, p1, Lcom/online/languages/study/studymaster/fragments/GalleryFragment$CatSet;->title:Ljava/lang/String;

    const-string v6, "gone"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4b

    :cond_43
    iget-object v2, p1, Lcom/online/languages/study/studymaster/fragments/GalleryFragment$CatSet;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4b
    const v1, 0x7f090222

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/online/languages/study/studymaster/adapters/GalleryAdapter;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object p1, p1, Lcom/online/languages/study/studymaster/fragments/GalleryFragment$CatSet;->catList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->themeTitle:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-direct {v2, v3, p1, v6, v5}, Lcom/online/languages/study/studymaster/adapters/GalleryAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)V

    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {p1, v3, v6}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setSelected(Z)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-static {v1, v4}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->cardsList:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addList(Lcom/online/languages/study/studymaster/fragments/GalleryFragment$CatSet;)V
    .registers 9

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c0097

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0902dc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p1, Lcom/online/languages/study/studymaster/fragments/GalleryFragment$CatSet;->title:Ljava/lang/String;

    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_35

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4b

    :cond_35
    iget-object v3, p1, Lcom/online/languages/study/studymaster/fragments/GalleryFragment$CatSet;->title:Ljava/lang/String;

    const-string v6, "gone"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4b

    :cond_43
    iget-object v1, p1, Lcom/online/languages/study/studymaster/fragments/GalleryFragment$CatSet;->title:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4b
    const v1, 0x7f090222

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/online/languages/study/studymaster/adapters/GalleryAdapter;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object p1, p1, Lcom/online/languages/study/studymaster/fragments/GalleryFragment$CatSet;->catList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->themeTitle:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct {v2, v3, p1, v6, v5}, Lcom/online/languages/study/studymaster/adapters/GalleryAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)V

    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {p1, v3, v6}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/DividerItemDecoration;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/online/languages/study/studymaster/adapters/DividerItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/RecyclerView;->setSelected(Z)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-static {v1, v4}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->itemsList:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private applyLayoutStatus(I)V
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1d

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->cardsList:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->itemsList:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->changeLayoutBtn:Landroid/view/MenuItem;

    const v0, 0x7f04021a

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->getDrawableIcon(I)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_33

    :cond_1d
    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->cardsList:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->itemsList:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->changeLayoutBtn:Landroid/view/MenuItem;

    const v0, 0x7f040219

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->getDrawableIcon(I)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_33
    return-void
.end method

.method private changeLayoutStatus()V
    .registers 4

    iget v0, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->listType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x2

    iput v0, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->listType:I

    goto :goto_b

    :cond_9
    iput v1, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->listType:I

    :goto_b
    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->appSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->listType:I

    const-string v2, "gallery_layout"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget v0, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->listType:I

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->applyLayoutStatus(I)V

    return-void
.end method

.method private getDrawableIcon(I)I
    .registers 5

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    return p1
.end method

.method private organizeSection()V
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/fragments/GalleryFragment$CatSet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment$CatSet;-><init>(Lcom/online/languages/study/studymaster/fragments/GalleryFragment;Lcom/online/languages/study/studymaster/fragments/GalleryFragment$1;)V

    const/4 v3, 0x0

    :goto_c
    iget-object v4, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->viewSection:Lcom/online/languages/study/studymaster/data/ViewSection;

    iget-object v4, v4, Lcom/online/languages/study/studymaster/data/ViewSection;->categories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_56

    iget-object v4, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->viewSection:Lcom/online/languages/study/studymaster/data/ViewSection;

    iget-object v4, v4, Lcom/online/languages/study/studymaster/data/ViewSection;->categories:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/online/languages/study/studymaster/data/ViewCategory;

    iget-object v5, v4, Lcom/online/languages/study/studymaster/data/ViewCategory;->type:Ljava/lang/String;

    const-string v6, "set"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    iget-object v5, v1, Lcom/online/languages/study/studymaster/fragments/GalleryFragment$CatSet;->catList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    new-instance v1, Lcom/online/languages/study/studymaster/fragments/GalleryFragment$CatSet;

    invoke-direct {v1, p0, v2}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment$CatSet;-><init>(Lcom/online/languages/study/studymaster/fragments/GalleryFragment;Lcom/online/languages/study/studymaster/fragments/GalleryFragment$1;)V

    iget-object v4, v4, Lcom/online/languages/study/studymaster/data/ViewCategory;->title:Ljava/lang/String;

    iput-object v4, v1, Lcom/online/languages/study/studymaster/fragments/GalleryFragment$CatSet;->title:Ljava/lang/String;

    goto :goto_53

    :cond_3f
    iget-object v5, v1, Lcom/online/languages/study/studymaster/fragments/GalleryFragment$CatSet;->catList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->viewSection:Lcom/online/languages/study/studymaster/data/ViewSection;

    iget-object v4, v4, Lcom/online/languages/study/studymaster/data/ViewSection;->categories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    :goto_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_56
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/fragments/GalleryFragment$CatSet;

    invoke-direct {p0, v1}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->addList(Lcom/online/languages/study/studymaster/fragments/GalleryFragment$CatSet;)V

    invoke-direct {p0, v1}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->addGrid(Lcom/online/languages/study/studymaster/fragments/GalleryFragment$CatSet;)V

    goto :goto_5a

    :cond_6d
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->appSettings:Landroid/content/SharedPreferences;

    const-string p2, "gallery_layout"

    const/4 p3, 0x1

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->listType:I

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->applyLayoutStatus(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0d0011

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f09018e

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->changeLayoutBtn:Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->appSettings:Landroid/content/SharedPreferences;

    const-string p2, "gallery_layout"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->listType:I

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->applyLayoutStatus(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    const p3, 0x7f0c0050

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->appSettings:Landroid/content/SharedPreferences;

    const-string p3, "theme"

    const-string v0, "default"

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->themeTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->context:Landroid/content/Context;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "structure"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/online/languages/study/studymaster/data/NavStructure;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "section_id"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->tSectionID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "cat_id"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->tCatID:Ljava/lang/String;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->tSectionID:Ljava/lang/String;

    const-string p3, "root"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_79

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    iget-object p2, p2, Lcom/online/languages/study/studymaster/data/NavStructure;->sections:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5e
    :goto_5e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_79

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object v0, p3, Lcom/online/languages/study/studymaster/data/NavSection;->spec:Ljava/lang/String;

    const-string v1, "nav_gallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object p3, p3, Lcom/online/languages/study/studymaster/data/NavSection;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->tSectionID:Ljava/lang/String;

    goto :goto_5e

    :cond_79
    const p2, 0x7f090173

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->itemsList:Landroid/widget/LinearLayout;

    const p2, 0x7f090089

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->cardsList:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    iget-object p3, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->tSectionID:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/online/languages/study/studymaster/data/NavStructure;->getNavSectionByID(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/NavSection;

    move-result-object p2

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    new-instance p2, Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    new-instance p2, Lcom/online/languages/study/studymaster/data/ViewSection;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->tCatID:Ljava/lang/String;

    invoke-direct {p2, p3, v0, v1}, Lcom/online/languages/study/studymaster/data/ViewSection;-><init>(Landroid/content/Context;Lcom/online/languages/study/studymaster/data/NavSection;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->viewSection:Lcom/online/languages/study/studymaster/data/ViewSection;

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->organizeSection()V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09018e

    if-ne v0, v1, :cond_e

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->changeLayoutStatus()V

    const/4 p1, 0x1

    return p1

    :cond_e
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const v0, 0x7f09018e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public openCatActivity(Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/online/languages/study/studymaster/data/ViewCategory;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/data/ViewCategory;-><init>()V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->viewSection:Lcom/online/languages/study/studymaster/data/ViewSection;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/ViewSection;->categories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/data/ViewCategory;

    iget-object v3, v2, Lcom/online/languages/study/studymaster/data/ViewCategory;->tag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object v0, v2

    goto :goto_d

    :cond_23
    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->tSectionID:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->openFromViewCat(Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Lcom/online/languages/study/studymaster/data/ViewCategory;)V

    return-void
.end method
