.class public Lcom/online/languages/study/studymaster/fragments/StarredTabOne;
.super Landroidx/fragment/app/Fragment;
.source "StarredTabOne.java"


# instance fields
.field countZero:Landroid/widget/TextView;

.field dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

.field desc:Landroid/widget/TextView;

.field infoBox:Landroid/view/View;

.field previewList:Landroid/widget/LinearLayout;

.field starredCount:Landroid/widget/TextView;

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

.method private createPreviewList(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->previewList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->getActivity()Landroidx/fragment/app/FragmentActivity;

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

    if-eqz v1, :cond_9c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->getTabType()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_33

    const v2, 0x7f0c00f4

    iget-object v3, p0, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->previewList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_3b

    :cond_33
    const v2, 0x7f0c00f5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    :goto_3b
    const v3, 0x7f09016b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f090169

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v1, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f090168

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file:///android_asset/pics/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/DataItem;->image:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    new-instance v5, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;

    const/16 v6, 0x14

    invoke-direct {v5, v6, v4}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;-><init>(II)V

    invoke-virtual {v1, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->previewList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_15

    :cond_9c
    return-void
.end method

.method private updateTitle(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 9
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

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->getTabType()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-ne p1, v0, :cond_13

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {p1, v0, v2}, Lcom/online/languages/study/studymaster/data/DataManager;->getStarredWords(ILjava/lang/Boolean;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_19

    :cond_13
    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {p1, v2}, Lcom/online/languages/study/studymaster/data/DataManager;->getStarredWords(Ljava/lang/Boolean;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_19
    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->zero:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->infoBox:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_37

    iget-object v5, p0, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->zero:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->infoBox:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_41

    :cond_37
    iget-object v5, p0, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->zero:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->infoBox:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_41
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/online/languages/study/studymaster/fragments/StarredFragment;

    if-eqz v3, :cond_5b

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->getTabType()I

    move-result v5

    if-ne v5, v4, :cond_52

    invoke-virtual {v3, v4, v2}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->updateTabName(II)V

    :cond_52
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->getTabType()I

    move-result v5

    if-ne v5, v0, :cond_5b

    invoke-virtual {v3, v0, v2}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->updateTabName(II)V

    :cond_5b
    const/16 v2, 0x1e

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1101dd

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    const-string v4, "%d / %d"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v2, :cond_9a

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_9a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0 / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->countZero:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->desc:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->starredCount:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v0, :cond_c5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_c5
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method


# virtual methods
.method public getTabType()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    const p3, 0x7f0c008d

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->getTabType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    const p3, 0x7f0c008e

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    :cond_16
    const p1, 0x7f090286

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->text:Landroid/widget/TextView;

    new-instance p1, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    const p1, 0x7f090287

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->starredCount:Landroid/widget/TextView;

    const p1, 0x7f09028c

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->zero:Landroid/view/View;

    const p1, 0x7f090288

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->countZero:Landroid/widget/TextView;

    const p1, 0x7f09028d

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->desc:Landroid/widget/TextView;

    const p1, 0x7f09028a

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->infoBox:Landroid/view/View;

    const p1, 0x7f09028b

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->previewList:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->words:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->updateTitle(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->words:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->createPreviewList(Ljava/util/ArrayList;)V

    return-object p3
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->words:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->updateTitle(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->words:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;->createPreviewList(Ljava/util/ArrayList;)V

    return-void
.end method
