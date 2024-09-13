.class public Lcom/online/languages/study/studymaster/adapters/SectionListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SectionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/adapters/SectionListAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/online/languages/study/studymaster/adapters/SectionListAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private errorsLabel:Ljava/lang/String;

.field private showStatus:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter;->dataList:Ljava/util/ArrayList;

    iput p2, p0, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter;->showStatus:I

    invoke-static {}, Lcom/online/languages/study/studymaster/App;->getAppContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f110154

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter;->errorsLabel:Ljava/lang/String;

    return-void
.end method

.method private manageErrorsView(Landroid/view/View;I)V
    .registers 7

    const v0, 0x7f0900f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter;->errorsLabel:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez p2, :cond_22

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_27

    :cond_22
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_27
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

    invoke-direct {p0, p2, p1}, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter;->manageStatusView(Landroid/view/View;I)V

    iget p1, p3, Lcom/online/languages/study/studymaster/data/DataItem;->errors:I

    invoke-direct {p0, p2, p1}, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter;->manageErrorsView(Landroid/view/View;I)V

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

    invoke-direct {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter;->openStatus(Ljava/lang/Boolean;Landroid/view/View;Lcom/online/languages/study/studymaster/data/DataItem;)V

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

    invoke-direct {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter;->openStatus(Ljava/lang/Boolean;Landroid/view/View;Lcom/online/languages/study/studymaster/data/DataItem;)V

    goto :goto_32

    :cond_23
    :goto_23
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter;->openStatus(Ljava/lang/Boolean;Landroid/view/View;Lcom/online/languages/study/studymaster/data/DataItem;)V

    goto :goto_32

    :cond_2b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter;->openStatus(Ljava/lang/Boolean;Landroid/view/View;Lcom/online/languages/study/studymaster/data/DataItem;)V

    :goto_32
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DataItem;->type:Ljava/lang/String;

    const-string v0, "group_title"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x2

    goto :goto_15

    :cond_14
    const/4 p1, 0x1

    :goto_15
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter;->onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/SectionListAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/SectionListAdapter$MyViewHolder;I)V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter$MyViewHolder;->txt:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter$MyViewHolder;->translate:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter$MyViewHolder;->helperView:Landroid/view/View;

    iget-object v1, p2, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    const v2, 0x7f09016f

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter$MyViewHolder;->helperView:Landroid/view/View;

    iget-object v1, p2, Lcom/online/languages/study/studymaster/data/DataItem;->type:Ljava/lang/String;

    const v2, 0x7f090171

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget v0, p2, Lcom/online/languages/study/studymaster/data/DataItem;->starred:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_36

    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter$MyViewHolder;->starIcon:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3c

    :cond_36
    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter$MyViewHolder;->starIcon:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3c
    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter;->showStatus:I

    iget-object p1, p1, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter$MyViewHolder;->statusView:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter;->statusInfoDisplay(ILandroid/view/View;Lcom/online/languages/study/studymaster/data/DataItem;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/online/languages/study/studymaster/adapters/SectionListAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/online/languages/study/studymaster/adapters/SectionListAdapter$MyViewHolder;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_14

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c00f0

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_23

    :cond_14
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c00ef

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :goto_23
    new-instance p2, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/online/languages/study/studymaster/adapters/SectionListAdapter$MyViewHolder;-><init>(Lcom/online/languages/study/studymaster/adapters/SectionListAdapter;Landroid/view/View;)V

    return-object p2
.end method
