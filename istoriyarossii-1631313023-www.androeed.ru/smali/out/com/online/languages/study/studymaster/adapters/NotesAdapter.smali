.class public Lcom/online/languages/study/studymaster/adapters/NotesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NotesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field fragment:Lcom/online/languages/study/studymaster/fragments/NotesFragment;

.field private notes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/NoteData;",
            ">;"
        }
    .end annotation
.end field

.field private picsFolder:Ljava/lang/String;

.field private pics_list:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/online/languages/study/studymaster/fragments/NotesFragment;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/NoteData;",
            ">;",
            "Lcom/online/languages/study/studymaster/fragments/NotesFragment;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->notes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030009

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->pics_list:[Ljava/lang/String;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->context:Landroid/content/Context;

    const p2, 0x7f11011b

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->picsFolder:Ljava/lang/String;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->fragment:Lcom/online/languages/study/studymaster/fragments/NotesFragment;

    return-void
.end method

.method private attachLongClickToCat(Landroid/view/View;Lcom/online/languages/study/studymaster/data/NoteData;)V
    .registers 4

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$3;

    invoke-direct {v0, p0, p2}, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$3;-><init>(Lcom/online/languages/study/studymaster/adapters/NotesAdapter;Lcom/online/languages/study/studymaster/data/NoteData;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private emptyImage(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "empty.png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    :goto_1c
    return p1
.end method

.method private manageMoreView(Landroid/view/View;Lcom/online/languages/study/studymaster/data/NoteData;)V
    .registers 6

    const v0, 0x7f0901e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901e3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p2, Lcom/online/languages/study/studymaster/data/NoteData;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p2, Lcom/online/languages/study/studymaster/data/NoteData;->info:Ljava/lang/String;

    const-string v1, "hide"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_25

    const/16 p2, 0x8

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_29

    :cond_25
    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_29
    const p2, 0x7f0901e2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$4;

    invoke-direct {p2, p0}, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$4;-><init>(Lcom/online/languages/study/studymaster/adapters/NotesAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private validatedPic(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->pics_list:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v2, v1, :cond_17

    aget-object v4, v0, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v3, 0x1

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_17
    if-nez v3, :cond_1b

    const-string p1, "none"

    :cond_1b
    return-object p1
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->notes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->notes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/NoteData;

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/NoteData;->image:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->validatedPic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->emptyImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x2

    goto :goto_17

    :cond_16
    const/4 v0, 0x1

    :goto_17
    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/NoteData;->id:Ljava/lang/String;

    const-string v1, "last"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 v0, 0x3

    :cond_22
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;I)V
    .registers 8

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->notes:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/online/languages/study/studymaster/data/NoteData;

    iget-object v0, p2, Lcom/online/languages/study/studymaster/data/NoteData;->image:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->validatedPic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/online/languages/study/studymaster/data/NoteData;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;->content:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/online/languages/study/studymaster/data/NoteData;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lcom/online/languages/study/studymaster/data/NoteData;->id:Ljava/lang/String;

    const-string v2, "last"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;->mainWrap:Landroid/view/View;

    invoke-direct {p0, v1, p2}, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->manageMoreView(Landroid/view/View;Lcom/online/languages/study/studymaster/data/NoteData;)V

    :cond_2b
    iget-object v1, p2, Lcom/online/languages/study/studymaster/data/NoteData;->title:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_44

    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;->content:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_4f

    :cond_44
    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;->content:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_4f
    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->emptyImage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;->noteIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5a
    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:///android_asset/pics/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->picsFolder:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;

    const/16 v2, 0x14

    invoke-direct {v1, v2, v3}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;->noteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;->mainWrap:Landroid/view/View;

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$1;-><init>(Lcom/online/languages/study/studymaster/adapters/NotesAdapter;Lcom/online/languages/study/studymaster/data/NoteData;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;->mainWrap:Landroid/view/View;

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$2;-><init>(Lcom/online/languages/study/studymaster/adapters/NotesAdapter;Lcom/online/languages/study/studymaster/data/NoteData;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;->mainWrap:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->attachLongClickToCat(Landroid/view/View;Lcom/online/languages/study/studymaster/data/NoteData;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;
    .registers 6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00c1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_22

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00c3

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :cond_22
    const/4 v1, 0x3

    if-ne p2, v1, :cond_34

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00c2

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :cond_34
    new-instance p1, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;

    invoke-direct {p1, p0, v0}, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;-><init>(Lcom/online/languages/study/studymaster/adapters/NotesAdapter;Landroid/view/View;)V

    return-object p1
.end method
