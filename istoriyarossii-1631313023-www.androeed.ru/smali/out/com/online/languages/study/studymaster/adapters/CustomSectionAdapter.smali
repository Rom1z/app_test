.class public Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CustomSectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private color:I

.field private context:Landroid/content/Context;

.field private sectionCustomData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/Category;",
            ">;"
        }
    .end annotation
.end field

.field type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/Category;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter;->type:I

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter;->sectionCustomData:Ljava/util/ArrayList;

    iput p3, p0, Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter;->color:I

    iput p4, p0, Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter;->type:I

    return-void
.end method

.method private dataCount(Lcom/online/languages/study/studymaster/data/Category;)I
    .registers 4

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter;->type:I

    if-nez v0, :cond_9

    iget v0, p1, Lcom/online/languages/study/studymaster/data/Category;->studiedDataCount:I

    iput v0, p1, Lcom/online/languages/study/studymaster/data/Category;->customItemsCount:I

    goto :goto_18

    :cond_9
    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    iget v0, p1, Lcom/online/languages/study/studymaster/data/Category;->familiarDataCount:I

    iput v0, p1, Lcom/online/languages/study/studymaster/data/Category;->customItemsCount:I

    goto :goto_18

    :cond_11
    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    iget v0, p1, Lcom/online/languages/study/studymaster/data/Category;->unknownDataCount:I

    iput v0, p1, Lcom/online/languages/study/studymaster/data/Category;->customItemsCount:I

    :cond_18
    :goto_18
    iget p1, p1, Lcom/online/languages/study/studymaster/data/Category;->customItemsCount:I

    return p1
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter;->sectionCustomData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter;->onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter$MyViewHolder;I)V
    .registers 7

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter;->sectionCustomData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/online/languages/study/studymaster/data/Category;

    invoke-direct {p0, p2}, Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter;->dataCount(Lcom/online/languages/study/studymaster/data/Category;)I

    move-result v0

    iget v1, p2, Lcom/online/languages/study/studymaster/data/Category;->allDataCount:I

    iget-object v2, p1, Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    iget-object p2, p2, Lcom/online/languages/study/studymaster/data/Category;->title:Ljava/lang/String;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0900b9

    invoke-virtual {p2, v3, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter$MyViewHolder;->progressBox:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    if-lez v0, :cond_50

    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter$MyViewHolder;->progressBox:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget p2, p0, Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter;->color:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_56

    iget-object p1, p1, Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter$MyViewHolder;->progressBox:Landroid/widget/TextView;

    iget p2, p0, Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter;->color:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_56

    :cond_50
    iget-object p1, p1, Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter$MyViewHolder;->progressBox:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_56
    :goto_56
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter$MyViewHolder;
    .registers 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0066

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter$MyViewHolder;-><init>(Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter;Landroid/view/View;)V

    return-object p2
.end method
