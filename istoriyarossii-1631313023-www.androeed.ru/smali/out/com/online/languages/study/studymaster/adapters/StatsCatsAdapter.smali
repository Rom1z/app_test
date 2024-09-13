.class public Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StatsCatsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private colorProgress:Lcom/online/languages/study/studymaster/adapters/ColorProgress;

.field context:Landroid/content/Context;

.field private sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/Section;",
            ">;"
        }
    .end annotation
.end field

.field private simplified:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/Section;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter;->sections:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter;->simplified:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter;->sections:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter;->context:Landroid/content/Context;

    new-instance p2, Lcom/online/languages/study/studymaster/adapters/ColorProgress;

    invoke-direct {p2, p1}, Lcom/online/languages/study/studymaster/adapters/ColorProgress;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter;->colorProgress:Lcom/online/languages/study/studymaster/adapters/ColorProgress;

    new-instance p1, Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/data/DataManager;->getParams()V

    iget-boolean p1, p1, Lcom/online/languages/study/studymaster/data/DataManager;->simplified:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter;->simplified:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter;->onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter$MyViewHolder;I)V
    .registers 9

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/online/languages/study/studymaster/data/Section;

    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/online/languages/study/studymaster/data/Section;->title_short:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p2, Lcom/online/languages/study/studymaster/data/Section;->stadiedCatsCount:I

    iget v1, p2, Lcom/online/languages/study/studymaster/data/Section;->errorsCount:I

    iget v2, p2, Lcom/online/languages/study/studymaster/data/Section;->progress:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter;->context:Landroid/content/Context;

    const v5, 0x7f11003c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " &nbsp;&nbsp;&nbsp;"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-lez v1, :cond_4e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<font color=\"red\">\u041e\u0448\u0438\u0431\u043e\u043a: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "</font>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_62

    :cond_4e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u041e\u0448\u0438\u0431\u043e\u043a: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_62
    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter$MyViewHolder;->desc:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter;->simplified:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter$MyViewHolder;->desc:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/online/languages/study/studymaster/data/Section;->desc_short:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7a
    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter$MyViewHolder;->progress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter$MyViewHolder;->progress:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter;->colorProgress:Lcom/online/languages/study/studymaster/adapters/ColorProgress;

    invoke-virtual {v1, v2}, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->getColorFromAttr(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///android_asset/pics/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/online/languages/study/studymaster/data/Section;->image:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/RoundedTransformation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/online/languages/study/studymaster/adapters/RoundedTransformation;-><init>(II)V

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    invoke-virtual {p2}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    invoke-virtual {p2}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget-object p1, p1, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter$MyViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter$MyViewHolder;
    .registers 6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00f6

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_28

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00f7

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_28
    new-instance p1, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter$MyViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter$MyViewHolder;-><init>(Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter;Landroid/view/View;)V

    return-object p1
.end method
