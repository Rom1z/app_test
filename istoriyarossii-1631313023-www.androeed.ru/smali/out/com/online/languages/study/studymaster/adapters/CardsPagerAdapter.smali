.class public Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "CardsPagerAdapter.java"


# instance fields
.field context:Landroid/content/Context;

.field count:I

.field mixWords:Ljava/lang/Boolean;

.field reverseData:Ljava/lang/Boolean;

.field showTranscript:Ljava/lang/Boolean;

.field showTranslate:Ljava/lang/Boolean;

.field wordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->wordList:Ljava/util/ArrayList;

    const/4 v0, 0x4

    iput v0, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->count:I

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->wordList:Ljava/util/ArrayList;

    return-void
.end method

.method private itemMirrorTextSize(Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/16 v1, 0x1e

    if-le p1, v1, :cond_22

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0049

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_22
    return v0
.end method

.method private itemTextSize(Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/16 v1, 0x14

    if-le p1, v1, :cond_22

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_22
    const/16 v1, 0x3c

    if-le p1, v1, :cond_33

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0049

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_33
    return v0
.end method

.method private textSize(Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/16 v1, 0x96

    if-le p1, v1, :cond_22

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_22
    const/16 v1, 0xc8

    if-le p1, v1, :cond_33

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_33
    const/16 v1, 0xf0

    if-le p1, v1, :cond_44

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0046

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_44
    return v0
.end method

.method private textSizeMirror(Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/16 v1, 0x96

    if-le p1, v1, :cond_22

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_22
    const/16 v1, 0xc8

    if-le p1, v1, :cond_33

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_33
    const/16 v1, 0xf0

    if-le p1, v1, :cond_44

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0046

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_44
    return v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    check-cast p3, Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->wordList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 16

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c0082

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->wordList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/online/languages/study/studymaster/data/DataItem;

    sget-object v1, Lcom/online/languages/study/studymaster/CardsActivity;->fShowTranslate:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->showTranslate:Ljava/lang/Boolean;

    sget-object v1, Lcom/online/languages/study/studymaster/CardsActivity;->fMixWords:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->mixWords:Ljava/lang/Boolean;

    sget-object v1, Lcom/online/languages/study/studymaster/CardsActivity;->fShowTranscript:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->showTranscript:Ljava/lang/Boolean;

    sget-object v1, Lcom/online/languages/study/studymaster/CardsActivity;->fRevertData:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->reverseData:Ljava/lang/Boolean;

    const v1, 0x7f090117

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v3, 0x7f090118

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->reverseData:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_4d

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_53

    :cond_4d
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_53
    const v1, 0x7f090119

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f090113

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const v4, 0x7f090269

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f090115

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f09011a

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f09011f

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const v9, 0x7f090114

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    const v10, 0x7f09026a

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f090116

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iget-object v12, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->showTranslate:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_b8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_b8
    iget-object v2, p2, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p2, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->itemTextSize(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p2, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->textSize(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p2, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float v1, v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter$1;

    invoke-direct {v1, p0, v4, v6}, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter$1;-><init>(Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p2, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->itemMirrorTextSize(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p2, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->textSizeMirror(Ljava/lang/String;)I

    move-result v1

    iget-object p2, p2, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    invoke-virtual {v11, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p2, v1

    invoke-virtual {v11, p2}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance p2, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter$2;

    invoke-direct {p2, p0, v10, v8}, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter$2;-><init>(Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    invoke-virtual {v9, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public setCount(I)V
    .registers 3

    const/16 v0, 0xa

    if-ge p1, v0, :cond_6

    iput p1, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->count:I

    :cond_6
    return-void
.end method
