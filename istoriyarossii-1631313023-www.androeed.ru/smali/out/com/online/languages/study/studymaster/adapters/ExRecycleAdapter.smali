.class public Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ExRecycleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private exLinkDesc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private exLinkTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private exercises:Ljava/lang/Boolean;

.field private results:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;[ILjava/lang/Boolean;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;[I",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;->results:[I

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;->exLinkTitles:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;->exLinkDesc:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;->exercises:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;->results:[I

    return-void

    :array_16
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;->exLinkTitles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;->onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter$MyViewHolder;I)V
    .registers 7

    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;->exLinkTitles:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter$MyViewHolder;->desc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;->exLinkDesc:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    if-nez p2, :cond_3e

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;->exercises:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3e

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f040215

    invoke-virtual {v1, v2, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    iget-object p1, p1, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter$MyViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_78

    :cond_3e
    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;->results:[I

    aget p2, v1, p2

    const/4 v2, 0x0

    aget v3, v1, v2

    if-gtz v3, :cond_55

    aget v0, v1, v0

    if-gtz v0, :cond_55

    const/4 v0, 0x2

    aget v0, v1, v0

    if-gtz v0, :cond_55

    const/4 v0, 0x3

    aget v0, v1, v0

    if-lez v0, :cond_78

    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter$MyViewHolder;->progressBox:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter$MyViewHolder;->progressTxt:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_78
    :goto_78
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter$MyViewHolder;
    .registers 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c007c

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter$MyViewHolder;-><init>(Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;Landroid/view/View;)V

    return-object p2
.end method
