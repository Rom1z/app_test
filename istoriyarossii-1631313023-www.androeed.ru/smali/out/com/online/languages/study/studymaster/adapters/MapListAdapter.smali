.class public Lcom/online/languages/study/studymaster/adapters/MapListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MapListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/adapters/MapListAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/online/languages/study/studymaster/adapters/MapListAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private categoryArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/ViewCategory;",
            ">;"
        }
    .end annotation
.end field

.field private color:I

.field private context:Landroid/content/Context;

.field dataSelect:Ljava/lang/String;

.field private theme:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/ViewCategory;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/online/languages/study/studymaster/adapters/MapListAdapter;->type:I

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/MapListAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/MapListAdapter;->categoryArrayList:Ljava/util/ArrayList;

    iput p3, p0, Lcom/online/languages/study/studymaster/adapters/MapListAdapter;->type:I

    iput-object p4, p0, Lcom/online/languages/study/studymaster/adapters/MapListAdapter;->theme:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/MapListAdapter;->categoryArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/MapListAdapter;->categoryArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/ViewCategory;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/ViewCategory;->type:Ljava/lang/String;

    const-string v0, "set"

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

    check-cast p1, Lcom/online/languages/study/studymaster/adapters/MapListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/MapListAdapter;->onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/MapListAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/MapListAdapter$MyViewHolder;I)V
    .registers 8

    if-nez p2, :cond_9

    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/MapListAdapter$MyViewHolder;->setDivider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/MapListAdapter;->categoryArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/data/ViewCategory;

    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/MapListAdapter$MyViewHolder;->sectionItemBox:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/MapListAdapter$MyViewHolder;->taggedView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p2, v0, Lcom/online/languages/study/studymaster/data/ViewCategory;->title:Ljava/lang/String;

    iget-object v1, v0, Lcom/online/languages/study/studymaster/data/ViewCategory;->desc:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_3c

    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/MapListAdapter$MyViewHolder;->sectionDesc:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/online/languages/study/studymaster/data/ViewCategory;->desc:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/MapListAdapter$MyViewHolder;->sectionDesc:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3c
    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/MapListAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, v0, Lcom/online/languages/study/studymaster/data/ViewCategory;->image:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4d

    const-string p2, "Slav2.png"

    iput-object p2, v0, Lcom/online/languages/study/studymaster/data/ViewCategory;->image:Ljava/lang/String;

    :cond_4d
    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/MapListAdapter$MyViewHolder;->mapImage:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget p2, p0, Lcom/online/languages/study/studymaster/adapters/MapListAdapter;->type:I

    const/4 v1, 0x2

    const-string v2, "file:///android_asset/maps/"

    if-ne p2, v1, :cond_82

    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/MapListAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/ViewCategory;->image:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    invoke-virtual {p2}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    invoke-virtual {p2}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/MapListAdapter$MyViewHolder;->mapImage:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_aa

    :cond_82
    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/MapListAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/ViewCategory;->image:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    invoke-virtual {p2}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    invoke-virtual {p2}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/MapListAdapter$MyViewHolder;->mapImage:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    :goto_aa
    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/MapListAdapter;->theme:Ljava/lang/String;

    const-string v0, "westworld"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c5

    iget-object p1, p1, Lcom/online/languages/study/studymaster/adapters/MapListAdapter$MyViewHolder;->mapImage:Landroid/widget/ImageView;

    const/16 p2, 0x5a

    const/16 v0, 0xe6

    const/16 v1, 0xff

    invoke-static {v1, p2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_c5
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/MapListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/online/languages/study/studymaster/adapters/MapListAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/online/languages/study/studymaster/adapters/MapListAdapter$MyViewHolder;
    .registers 6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0111

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/MapListAdapter;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_24

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0112

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_24
    new-instance p1, Lcom/online/languages/study/studymaster/adapters/MapListAdapter$MyViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/online/languages/study/studymaster/adapters/MapListAdapter$MyViewHolder;-><init>(Lcom/online/languages/study/studymaster/adapters/MapListAdapter;Landroid/view/View;)V

    return-object p1
.end method
