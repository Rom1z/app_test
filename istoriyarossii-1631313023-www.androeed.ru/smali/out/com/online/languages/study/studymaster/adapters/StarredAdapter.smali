.class public Lcom/online/languages/study/studymaster/adapters/StarredAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StarredAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field catTag:Ljava/lang/String;

.field context:Landroid/content/Context;

.field dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/StarredAdapter;->dataList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/StarredAdapter;->dataList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/adapters/StarredAdapter;->catTag:Ljava/lang/String;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StarredAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method private checkStarred(Landroid/widget/ImageView;I)V
    .registers 3

    if-lez p2, :cond_7

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    :cond_7
    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_b
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/StarredAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/StarredAdapter;->onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;I)V
    .registers 7

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/StarredAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;->txt:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;->translate:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;->helperView:Landroid/view/View;

    iget-object v1, p2, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget v0, p2, Lcom/online/languages/study/studymaster/data/DataItem;->starred:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_29

    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;->starIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2f

    :cond_29
    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;->starIcon:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2f
    iget-object p2, p2, Lcom/online/languages/study/studymaster/data/DataItem;->image:Ljava/lang/String;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/StarredAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:///android_asset/pics/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/RoundedTransformation;

    invoke-direct {v0, v1, v1}, Lcom/online/languages/study/studymaster/adapters/RoundedTransformation;-><init>(II)V

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    invoke-virtual {p2}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    invoke-virtual {p2}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/StarredAdapter;->catTag:Ljava/lang/String;

    const-string v0, "dates"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_72

    iget-object p1, p1, Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;->catItemWrap:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_72
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/StarredAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;
    .registers 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00f5

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;-><init>(Lcom/online/languages/study/studymaster/adapters/StarredAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public remove(I)V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/StarredAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/adapters/StarredAdapter;->notifyItemRemoved(I)V

    return-void
.end method
