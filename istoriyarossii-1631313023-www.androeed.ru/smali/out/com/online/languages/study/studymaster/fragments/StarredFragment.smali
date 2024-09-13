.class public Lcom/online/languages/study/studymaster/fragments/StarredFragment;
.super Landroidx/fragment/app/Fragment;
.source "StarredFragment.java"


# instance fields
.field activeTab:I

.field appSettings:Landroid/content/SharedPreferences;

.field countZero:Landroid/widget/TextView;

.field dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

.field desc:Landroid/widget/TextView;

.field infoBox:Landroid/view/View;

.field previewList:Landroid/widget/LinearLayout;

.field rootView:Landroid/view/View;

.field starredCount:Landroid/widget/TextView;

.field starredList:Landroid/view/View;

.field starredTabs:Landroid/view/View;

.field tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field tabsAdapter:Lcom/online/languages/study/studymaster/adapters/StarredTabsPagerAdapter;

.field tabsPager:Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;

.field tabs_starred:Ljava/lang/String;

.field text:Landroid/widget/TextView;

.field words:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field zero:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/online/languages/study/studymaster/fragments/StarredFragment;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->setStarredTab(I)V

    return-void
.end method

.method private checkTabsDisplay()V
    .registers 9

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Lcom/online/languages/study/studymaster/data/DataManager;->getStarredWords(ILjava/lang/Boolean;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Lcom/online/languages/study/studymaster/data/DataManager;->getStarredWords(ILjava/lang/Boolean;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->rootView:Landroid/view/View;

    const v5, 0x7f0902a9

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f1101ff

    invoke-virtual {p0, v5}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->starredList:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->starredTabs:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v6, "always"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_98

    :cond_3b
    const-string v6, "never"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_98

    :cond_47
    const-string v6, "item_prior"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_70

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_67

    const-string v0, "normal"

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->getTabPositionByName(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->setStarredTab(I)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabsPager:Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;->setPagingEnabled(Z)V

    goto :goto_98

    :cond_67
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabsPager:Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;

    invoke-virtual {v0, v4}, Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;->setPagingEnabled(Z)V

    goto :goto_98

    :cond_70
    const-string v0, "gallery_prior"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "gallery"

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->getTabPositionByName(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->setStarredTab(I)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabsPager:Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;->setPagingEnabled(Z)V

    goto :goto_98

    :cond_90
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabsPager:Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;

    invoke-virtual {v0, v4}, Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;->setPagingEnabled(Z)V

    :cond_98
    :goto_98
    const-string v0, "unscroll"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabsPager:Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;->setPagingEnabled(Z)V

    :cond_a5
    return-void
.end method

.method private createPreviewList(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->previewList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/DataItem;

    const v2, 0x7f0c00f5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09016b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090169

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v1, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->previewList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_15

    :cond_4b
    return-void
.end method

.method private getActiveTabNum()I
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabs_starred:Ljava/lang/String;

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v1, "gallery"

    :cond_c
    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->appSettings:Landroid/content/SharedPreferences;

    const-string v2, "starred_active_tab"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->getTabPositionByName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getTabByPosition(I)Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabs()[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method private getTabPositionByName(Ljava/lang/String;)I
    .registers 6

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabs()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    array-length v3, v0

    if-ge v1, v3, :cond_15

    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move v2, v1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_15
    return v2
.end method

.method private setStarredTab(I)V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->appSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->getTabByPosition(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "starred_active_tab"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private tabs()[Ljava/lang/String;
    .registers 5

    const-string v0, "normal"

    const-string v1, "gallery"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabs_starred:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    :cond_14
    return-object v2
.end method

.method private updateTitle(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 8
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

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/online/languages/study/studymaster/data/DataManager;->getStarredWords(Ljava/lang/Boolean;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1f

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->zero:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->infoBox:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_29

    :cond_1f
    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->zero:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->infoBox:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_29
    const/16 v1, 0x1e

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f1101dd

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "%d / %d"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0 / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->countZero:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->desc:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->starredCount:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v1, :cond_86

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_86
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    const/16 p2, 0xa

    if-ne p1, p2, :cond_10

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabsPager:Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;

    if-eqz p1, :cond_10

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->getActiveTabNum()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;->setCurrentItem(IZ)V

    :cond_10
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0c008c

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->appSettings:Landroid/content/SharedPreferences;

    const p1, 0x7f110200

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabs_starred:Ljava/lang/String;

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->getActiveTabNum()I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->activeTab:I

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->rootView:Landroid/view/View;

    const p2, 0x7f090284

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->starredList:Landroid/view/View;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->rootView:Landroid/view/View;

    const p2, 0x7f090285

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->starredTabs:Landroid/view/View;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->rootView:Landroid/view/View;

    const p2, 0x7f090286

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->text:Landroid/widget/TextView;

    new-instance p1, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->rootView:Landroid/view/View;

    const p2, 0x7f090287

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->starredCount:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->rootView:Landroid/view/View;

    const p2, 0x7f09028c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->zero:Landroid/view/View;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->rootView:Landroid/view/View;

    const p2, 0x7f090288

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->countZero:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->rootView:Landroid/view/View;

    const p2, 0x7f09028d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->desc:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->rootView:Landroid/view/View;

    const p2, 0x7f09028a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->infoBox:Landroid/view/View;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->rootView:Landroid/view/View;

    const p2, 0x7f09028b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->previewList:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->words:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->updateTitle(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->words:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->createPreviewList(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->words:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->updateTitle(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->words:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->createPreviewList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 8

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0902a9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    const p2, 0x7f1101db

    invoke-virtual {p0, p2}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1101da

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabs_starred:Ljava/lang/String;

    const-string v4, "normal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    invoke-virtual {p0, p2}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_32
    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    const p2, 0x7f0902a7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabsPager:Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/StarredTabsPagerAdapter;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabs_starred:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p1, p2, v1, v0}, Lcom/online/languages/study/studymaster/adapters/StarredTabsPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabsAdapter:Lcom/online/languages/study/studymaster/adapters/StarredTabsPagerAdapter;

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->checkTabsDisplay()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabsPager:Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabsAdapter:Lcom/online/languages/study/studymaster/adapters/StarredTabsPagerAdapter;

    invoke-virtual {p1, p2}, Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabsPager:Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;

    invoke-virtual {p1, v1}, Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;->setOffscreenPageLimit(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabsPager:Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;

    new-instance p2, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {p2, v0}, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    invoke-virtual {p1, p2}, Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance p2, Lcom/online/languages/study/studymaster/fragments/StarredFragment$1;

    invoke-direct {p2, p0}, Lcom/online/languages/study/studymaster/fragments/StarredFragment$1;-><init>(Lcom/online/languages/study/studymaster/fragments/StarredFragment;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->getActiveTabNum()I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->activeTab:I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/online/languages/study/studymaster/fragments/StarredFragment$2;

    invoke-direct {p2, p0}, Lcom/online/languages/study/studymaster/fragments/StarredFragment$2;-><init>(Lcom/online/languages/study/studymaster/fragments/StarredFragment;)V

    const-wide/16 v0, 0x1e

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateTabName(II)V
    .registers 10

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabs_starred:Ljava/lang/String;

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_f

    const/4 v0, 0x1

    const/4 v3, 0x0

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    const/4 v3, 0x1

    :goto_11
    if-ne p1, v2, :cond_2f

    iget-object v4, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v4, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    const v4, 0x7f1101ce

    invoke-virtual {p0, v4}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    :cond_2f
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4e

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    const v0, 0x7f1101cd

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    :cond_4e
    return-void
.end method
