.class public Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ImgPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private folder:Ljava/lang/String;

.field private pics:[Ljava/lang/String;

.field selected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter;->pics:[Ljava/lang/String;

    iput p3, p0, Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter;->selected:I

    const p2, 0x7f11011b

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter;->folder:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter;->pics:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter;->onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter$MyViewHolder;I)V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter;->pics:[Ljava/lang/String;

    aget-object v0, v0, p2

    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter$MyViewHolder;->icon:Landroid/widget/ImageView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    if-nez p2, :cond_15

    iget-object v2, p1, Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter$MyViewHolder;->emptyTxt:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    iget v2, p0, Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter;->selected:I

    if-ne v2, p2, :cond_1f

    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter$MyViewHolder;->selector:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_25

    :cond_1f
    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter$MyViewHolder;->selector:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_25
    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///android_asset/pics/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter;->folder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    invoke-virtual {p2}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    invoke-virtual {p2}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget-object p1, p1, Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter$MyViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter$MyViewHolder;
    .registers 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c009b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter$MyViewHolder;-><init>(Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter;Landroid/view/View;)V

    return-object p2
.end method
