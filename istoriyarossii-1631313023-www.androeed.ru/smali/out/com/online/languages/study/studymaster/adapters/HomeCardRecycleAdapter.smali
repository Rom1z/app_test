.class public Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HomeCardRecycleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field count:I

.field private sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/NavSection;",
            ">;"
        }
    .end annotation
.end field

.field private showWorld:Ljava/lang/Boolean;

.field private theme:Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/NavSection;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;->count:I

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "world_section"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;->showWorld:Ljava/lang/Boolean;

    iput p4, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;->type:I

    invoke-direct {p0, p2}, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;->checkSections(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;->sections:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;->theme:Ljava/lang/String;

    iget p1, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;->type:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_37

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0a004d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;->count:I

    :cond_37
    return-void
.end method

.method private checkSections(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/NavSection;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/NavSection;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object v2, v1, Lcom/online/languages/study/studymaster/data/NavSection;->spec:Ljava/lang/String;

    const-string v3, "world"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;->showWorld:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_2b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_2f
    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;->onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter$MyViewHolder;I)V
    .registers 16

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/online/languages/study/studymaster/data/NavSection;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter$MyViewHolder;->desc:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/online/languages/study/studymaster/data/NavSection;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:///android_asset/pics/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/online/languages/study/studymaster/data/NavSection;->image:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    new-instance v2, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p1, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter$MyViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;->type:I

    const/16 v2, 0x32

    const/16 v4, 0xff

    const-string v6, "westworld"

    const/4 v7, 0x2

    const/16 v8, 0xf0

    if-ne v1, v7, :cond_11e

    iget-object v1, p1, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter$MyViewHolder;->imageWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x7f030003

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x1

    if-ne p2, v9, :cond_7a

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x7f030004

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    :cond_7a
    if-ne p2, v7, :cond_89

    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f030005

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    :cond_89
    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;->context:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {p2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    iget-object v7, v0, Lcom/online/languages/study/studymaster/data/NavSection;->desc:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a7

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/NavSection;->desc:Ljava/lang/String;

    const-string v7, "none"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    :cond_a7
    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter$MyViewHolder;->desc:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_ae
    const/4 v0, 0x0

    :goto_af
    iget v7, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;->count:I

    if-ge v0, v7, :cond_11e

    const v7, 0x7f0c0098

    iget-object v9, p1, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter$MyViewHolder;->imageWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v7, v9, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    const/high16 v9, 0x3f800000    # 1.0f

    iget v10, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;->count:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v10, v11, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v9, 0x7f090159

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v1, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v10

    new-instance v11, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;

    const/16 v12, 0x10

    invoke-direct {v11, v12, v5}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;-><init>(II)V

    invoke-virtual {v10, v11}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v10

    invoke-virtual {v10}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v10

    invoke-virtual {v10}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    iget-object v10, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;->theme:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_116

    invoke-static {v4, v2, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v10, v11}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_116
    iget-object v9, p1, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter$MyViewHolder;->imageWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_af

    :cond_11e
    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;->theme:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_131

    iget-object p1, p1, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter$MyViewHolder;->icon:Landroid/widget/ImageView;

    invoke-static {v4, v2, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_131
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter$MyViewHolder;
    .registers 6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c009a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_24

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0099

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_24
    new-instance p1, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter$MyViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter$MyViewHolder;-><init>(Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;Landroid/view/View;)V

    return-object p1
.end method
