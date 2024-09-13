.class public Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CatsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;",
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

.field colorProgress:Lcom/online/languages/study/studymaster/adapters/ColorProgress;

.field private context:Landroid/content/Context;

.field dataSelect:Ljava/lang/String;

.field full_version:Ljava/lang/Boolean;

.field show:Ljava/lang/Boolean;

.field type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Boolean;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/ViewCategory;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;->type:I

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;->categoryArrayList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;->full_version:Ljava/lang/Boolean;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;->show:Ljava/lang/Boolean;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/ColorProgress;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/online/languages/study/studymaster/adapters/ColorProgress;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;->colorProgress:Lcom/online/languages/study/studymaster/adapters/ColorProgress;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "data_select"

    const-string p3, "dates"

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;->dataSelect:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;->categoryArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;->categoryArrayList:Ljava/util/ArrayList;

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

    check-cast p1, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;->onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;I)V
    .registers 12

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;->categoryArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/data/ViewCategory;

    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->sectionItemBox:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/online/languages/study/studymaster/data/ViewCategory;->title:Ljava/lang/String;

    iget-object v2, v0, Lcom/online/languages/study/studymaster/data/ViewCategory;->desc:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_2a

    iget-object v2, p1, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->sectionDesc:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/online/languages/study/studymaster/data/ViewCategory;->desc:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->sectionDesc:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2a
    iget v2, v0, Lcom/online/languages/study/studymaster/data/ViewCategory;->subgroup:I

    if-lez v2, :cond_49

    iget-object v2, p1, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->catGroupCountBox:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p1, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->catGroupCount:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/online/languages/study/studymaster/data/ViewCategory;->subgroup:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_49
    iget-object v2, v0, Lcom/online/languages/study/studymaster/data/ViewCategory;->type:Ljava/lang/String;

    const-string v3, "set"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v5, 0x8

    if-eqz v2, :cond_6b

    if-nez p2, :cond_5c

    iget-object v2, p1, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->setDivider:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_5c
    iget-object v2, v0, Lcom/online/languages/study/studymaster/data/ViewCategory;->title:Ljava/lang/String;

    const-string v6, "none"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, p1, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6b
    iget v2, v0, Lcom/online/languages/study/studymaster/data/ViewCategory;->progress:I

    iget-object v6, p0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;->show:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/16 v7, 0x5f

    if-eqz v6, :cond_8f

    if-nez p2, :cond_7b

    const/16 v2, 0x64

    :cond_7b
    const/4 v6, 0x1

    if-ne p2, v6, :cond_80

    const/16 v2, 0x5f

    :cond_80
    const/4 v6, 0x2

    if-ne p2, v6, :cond_85

    const/16 v2, 0x4c

    :cond_85
    const/4 v6, 0x3

    if-ne p2, v6, :cond_8a

    const/16 v2, 0x30

    :cond_8a
    const/4 v6, 0x4

    if-ne p2, v6, :cond_8f

    const/16 v2, 0x13

    :cond_8f
    if-lez v2, :cond_f1

    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->progressBox:Landroid/view/View;

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->progressTxt:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "%"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->progressTxt:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;->colorProgress:Lcom/online/languages/study/studymaster/adapters/ColorProgress;

    invoke-virtual {v6, v2}, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->setCatColorFromAttr(I)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    if-le v2, v7, :cond_c2

    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->progressCircle:Landroid/widget/ImageView;

    const v2, 0x7f080086

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_f1

    :cond_c2
    const/16 p2, 0x4f

    if-le v2, p2, :cond_cf

    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->progressCircle:Landroid/widget/ImageView;

    const v2, 0x7f080084

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_f1

    :cond_cf
    const/16 p2, 0x31

    if-le v2, p2, :cond_dc

    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->progressCircle:Landroid/widget/ImageView;

    const v2, 0x7f080083

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_f1

    :cond_dc
    const/16 p2, 0x14

    if-le v2, p2, :cond_e9

    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->progressCircle:Landroid/widget/ImageView;

    const v2, 0x7f080082

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_f1

    :cond_e9
    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->progressCircle:Landroid/widget/ImageView;

    const v2, 0x7f080085

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_f1
    :goto_f1
    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;->dataSelect:Ljava/lang/String;

    const-string v2, "all"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10a

    iget-object p2, v0, Lcom/online/languages/study/studymaster/data/ViewCategory;->type:Ljava/lang/String;

    const-string v2, "extra"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10a

    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->progressBox:Landroid/view/View;

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_10a
    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;->full_version:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_129

    iget-object p2, v0, Lcom/online/languages/study/studymaster/data/ViewCategory;->unlocked:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_129

    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->catGroupCountBox:Landroid/view/View;

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->progressBox:Landroid/view/View;

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->catLockedBox:Landroid/view/View;

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_129
    iget-object p2, v0, Lcom/online/languages/study/studymaster/data/ViewCategory;->type:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13b

    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->progressBox:Landroid/view/View;

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->catLockedBox:Landroid/view/View;

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_13b
    iget-object p1, p1, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_14

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c010b

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_23

    :cond_14
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c010a

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :goto_23
    new-instance p2, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;-><init>(Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;Landroid/view/View;)V

    return-object p2
.end method
