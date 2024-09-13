.class public Lcom/online/languages/study/studymaster/adapters/ContentAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ContentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/adapters/ContentAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/online/languages/study/studymaster/adapters/ContentAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private autoDivider:Z

.field context:Landroid/content/Context;

.field private dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private showStatus:I

.field private theme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;->dataList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;->context:Landroid/content/Context;

    iput p3, p0, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;->showStatus:I

    iput-object p4, p0, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;->theme:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;->autoDivider:Z

    return-void
.end method

.method private manageErrorsView(Landroid/view/View;I)V
    .registers 7

    const v0, 0x7f0900f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;->context:Landroid/content/Context;

    const v1, 0x7f110060

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez p2, :cond_29

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2e

    :cond_29
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2e
    return-void
.end method

.method private manageStatusView(Landroid/view/View;I)V
    .registers 7

    const v0, 0x7f090298

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090296

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090297

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-le p2, v3, :cond_28

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_31

    :cond_28
    if-lez p2, :cond_2e

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_31

    :cond_2e
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_31
    return-void
.end method

.method private openStatus(Ljava/lang/Boolean;Landroid/view/View;Lcom/online/languages/study/studymaster/data/DataItem;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget p1, p3, Lcom/online/languages/study/studymaster/data/DataItem;->rate:I

    invoke-direct {p0, p2, p1}, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;->manageStatusView(Landroid/view/View;I)V

    iget p1, p3, Lcom/online/languages/study/studymaster/data/DataItem;->errors:I

    invoke-direct {p0, p2, p1}, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;->manageErrorsView(Landroid/view/View;I)V

    goto :goto_1a

    :cond_15
    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1a
    return-void
.end method

.method private statusInfoDisplay(ILandroid/view/View;Lcom/online/languages/study/studymaster/data/DataItem;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    const/4 v1, 0x1

    if-eq p1, v1, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    goto :goto_32

    :cond_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;->openStatus(Ljava/lang/Boolean;Landroid/view/View;Lcom/online/languages/study/studymaster/data/DataItem;)V

    goto :goto_32

    :cond_12
    iget p1, p3, Lcom/online/languages/study/studymaster/data/DataItem;->errors:I

    if-gtz p1, :cond_23

    iget p1, p3, Lcom/online/languages/study/studymaster/data/DataItem;->rate:I

    if-lez p1, :cond_1b

    goto :goto_23

    :cond_1b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;->openStatus(Ljava/lang/Boolean;Landroid/view/View;Lcom/online/languages/study/studymaster/data/DataItem;)V

    goto :goto_32

    :cond_23
    :goto_23
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;->openStatus(Ljava/lang/Boolean;Landroid/view/View;Lcom/online/languages/study/studymaster/data/DataItem;)V

    goto :goto_32

    :cond_2b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;->openStatus(Ljava/lang/Boolean;Landroid/view/View;Lcom/online/languages/study/studymaster/data/DataItem;)V

    :goto_32
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DataItem;->image:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    goto :goto_15

    :cond_14
    const/4 v0, 0x1

    :goto_15
    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DataItem;->type:Ljava/lang/String;

    const-string v1, "divider"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 v0, 0x3

    :cond_28
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/online/languages/study/studymaster/adapters/ContentAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;->onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/ContentAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/ContentAdapter$MyViewHolder;I)V
    .registers 8

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/ContentAdapter$MyViewHolder;->txt:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/ContentAdapter$MyViewHolder;->translate:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/ContentAdapter$MyViewHolder;->helperView:Landroid/view/View;

    iget-object v2, v0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget v1, v0, Lcom/online/languages/study/studymaster/data/DataItem;->starred:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2a

    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/ContentAdapter$MyViewHolder;->starIcon:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2f

    :cond_2a
    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/ContentAdapter$MyViewHolder;->starIcon:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2f
    iget-object v1, v0, Lcom/online/languages/study/studymaster/data/DataItem;->type:Ljava/lang/String;

    const-string v4, "divider"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/ContentAdapter$MyViewHolder;->helperView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    const-string v4, "none"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/ContentAdapter$MyViewHolder;->txt:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/ContentAdapter$MyViewHolder;->txt:Landroid/widget/TextView;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_54
    if-eqz p2, :cond_61

    iget-boolean p2, p0, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;->autoDivider:Z

    if-eqz p2, :cond_5b

    goto :goto_61

    :cond_5b
    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/ContentAdapter$MyViewHolder;->divider:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_66

    :cond_61
    :goto_61
    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/ContentAdapter$MyViewHolder;->divider:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_66
    iget-object p2, v0, Lcom/online/languages/study/studymaster/data/DataItem;->image:Ljava/lang/String;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:///android_asset/pics/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/RoundedTransformation;

    invoke-direct {v1, v3, v3}, Lcom/online/languages/study/studymaster/adapters/RoundedTransformation;-><init>(II)V

    invoke-virtual {p2, v1}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    invoke-virtual {p2}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    invoke-virtual {p2}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/ContentAdapter$MyViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;->theme:Ljava/lang/String;

    const-string v1, "westworld"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b6

    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/ContentAdapter$MyViewHolder;->image:Landroid/widget/ImageView;

    const/16 v1, 0xff

    const/16 v2, 0x32

    const/16 v3, 0xfa

    const/16 v4, 0xf0

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_b6
    iget p2, p0, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;->showStatus:I

    iget-object p1, p1, Lcom/online/languages/study/studymaster/adapters/ContentAdapter$MyViewHolder;->statusView:Landroid/view/View;

    invoke-direct {p0, p2, p1, v0}, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;->statusInfoDisplay(ILandroid/view/View;Lcom/online/languages/study/studymaster/data/DataItem;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/online/languages/study/studymaster/adapters/ContentAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/online/languages/study/studymaster/adapters/ContentAdapter$MyViewHolder;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_14

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0045

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_36

    :cond_14
    const/4 v1, 0x3

    if-ne p2, v1, :cond_27

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0044

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_36

    :cond_27
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0043

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :goto_36
    new-instance p2, Lcom/online/languages/study/studymaster/adapters/ContentAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/online/languages/study/studymaster/adapters/ContentAdapter$MyViewHolder;-><init>(Lcom/online/languages/study/studymaster/adapters/ContentAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public remove(I)V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/adapters/ContentAdapter;->notifyItemRemoved(I)V

    return-void
.end method
