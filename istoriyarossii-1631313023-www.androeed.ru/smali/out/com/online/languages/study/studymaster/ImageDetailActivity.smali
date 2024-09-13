.class public Lcom/online/languages/study/studymaster/ImageDetailActivity;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "ImageDetailActivity.java"


# instance fields
.field appSettings:Landroid/content/SharedPreferences;

.field dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

.field detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

.field itemPostion:I

.field starStatusChanged:Ljava/lang/Boolean;

.field starrable:Ljava/lang/Boolean;

.field themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

.field public themeTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BaseActivity;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput v0, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->itemPostion:I

    iput-object v1, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->starrable:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->starStatusChanged:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/online/languages/study/studymaster/ImageDetailActivity;Ljava/lang/String;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->changeStarStatus(Ljava/lang/String;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    return-void
.end method

.method private changeStarStatus(Ljava/lang/String;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->checkStarred(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "#gallery"

    invoke-virtual {v1, p1, v0, v2}, Lcom/online/languages/study/studymaster/DBHelper;->setStarred(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->limitMessage()V

    :cond_1b
    invoke-direct {p0, p1, p2}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->checkStarStatus(Ljava/lang/String;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    return-void
.end method

.method private checkStarStatus(Ljava/lang/String;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->checkStarred(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    iget v0, v0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->styleTheme:I

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x7f040360

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    const/16 v2, 0x15

    if-eqz p1, :cond_46

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_35

    const p1, 0x7f0800eb

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_40

    :cond_35
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0800ed

    invoke-static {p1, v1, v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object p1

    :goto_40
    const-string v0, "starred"

    invoke-virtual {p2, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTag(Ljava/lang/Object;)V

    goto :goto_5a

    :cond_46
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_4f

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_5a

    :cond_4f
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0800ea

    invoke-static {p1, v1, v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object p1

    :goto_5a
    invoke-virtual {p2, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "not"

    invoke-virtual {p2, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private checkStarred(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/DBHelper;->checkStarred(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private getInfoTxtSize()I
    .registers 5

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v2, "detail_txt_size"

    const-string v3, "small"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "medium"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a002a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_28
    const-string v2, "large"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_3b
    return v0
.end method


# virtual methods
.method public convertDimen(I)I
    .registers 4

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public finish()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/DetailItem;->id:Ljava/lang/String;

    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->starStatusChanged:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1f

    :cond_1c
    invoke-virtual {p0, v2, v0}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->setResult(ILandroid/content/Intent;)V

    :goto_1f
    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->finish()V

    const v0, 0x7f010022

    invoke-virtual {p0, v2, v0}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public limitMessage()V
    .registers 3

    const v0, 0x7f1101d7

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onBackPressed()V
    .registers 1

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "theme"

    const-string v1, "default"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->themeTitle:Ljava/lang/String;

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "position"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->itemPostion:I

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v2, "full_version"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz p1, :cond_3c

    iput-object v2, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->starrable:Ljava/lang/Boolean;

    :cond_3c
    iput-object v2, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->starrable:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->starStatusChanged:Ljava/lang/Boolean;

    const p1, 0x7f0c002a

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->setContentView(I)V

    new-instance p1, Lcom/online/languages/study/studymaster/DBHelper;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    const p1, 0x7f0902e4

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-direct {v2, p0}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Lcom/online/languages/study/studymaster/data/DataManager;->getDetailFromDB(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/DetailItem;

    move-result-object v3

    iput-object v3, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object v3, v3, Lcom/online/languages/study/studymaster/data/DetailItem;->title:Ljava/lang/String;

    const-string v4, "not found"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    invoke-virtual {v2, p1}, Lcom/online/languages/study/studymaster/data/DataManager;->getDataItemFromDB(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/DataItem;

    move-result-object p1

    new-instance v2, Lcom/online/languages/study/studymaster/data/DetailItem;

    invoke-direct {v2, p1}, Lcom/online/languages/study/studymaster/data/DetailItem;-><init>(Lcom/online/languages/study/studymaster/data/DataItem;)V

    iput-object v2, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    :cond_87
    const p1, 0x7f090180

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v2, 0x7f090181

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090053

    invoke-virtual {p0, v3}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f09023d

    invoke-virtual {p0, v4}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0900b1

    invoke-virtual {p0, v5}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object v6, v6, Lcom/online/languages/study/studymaster/data/DetailItem;->title:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DetailItem;->image:Ljava/lang/String;

    const-string v6, "none"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ec

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/16 v6, 0x17c

    invoke-virtual {p0, v6}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->convertDimen(I)I

    move-result v6

    iput v6, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/16 v5, 0x82

    invoke-virtual {p0, v5}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->convertDimen(I)I

    move-result v5

    iput v5, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x8

    invoke-virtual {v4, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_ec
    const p1, 0x7f0902e5

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const v3, 0x7f090121

    invoke-virtual {p0, v3}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->starrable:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_115

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/online/languages/study/studymaster/ImageDetailActivity$1;

    invoke-direct {v5, p0, v3}, Lcom/online/languages/study/studymaster/ImageDetailActivity$1;-><init>(Lcom/online/languages/study/studymaster/ImageDetailActivity;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    const-wide/16 v6, 0x15e

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_115
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->itemPostion:I

    const-string v0, " "

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DetailItem;->desc:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->getInfoTxtSize()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const p1, 0x7f090159

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///android_asset/pics/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/DetailItem;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->themeTitle:Ljava/lang/String;

    const-string v0, "westworld"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DetailItem;->id:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->checkStarStatus(Ljava/lang/String;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    new-instance p1, Lcom/online/languages/study/studymaster/ImageDetailActivity$2;

    invoke-direct {p1, p0, v3}, Lcom/online/languages/study/studymaster/ImageDetailActivity$2;-><init>(Lcom/online/languages/study/studymaster/ImageDetailActivity;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    invoke-virtual {v3, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0012

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_18

    const v1, 0x7f090137

    if-eq v0, v1, :cond_14

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_14
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->openImage()V

    return v2

    :cond_18
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->finish()V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050014

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_31

    const p1, 0x7f010029

    const v0, 0x7f01002c

    invoke-virtual {p0, p1, v0}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->overridePendingTransition(II)V

    :cond_31
    return v2
.end method

.method public openImage()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/online/languages/study/studymaster/MapActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ImageDetailActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/DetailItem;->id:Ljava/lang/String;

    const-string v2, "page_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "pic"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0, v2}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const v0, 0x7f01001f

    const v1, 0x7f010023

    invoke-virtual {p0, v0, v1}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public pageTransition()V
    .registers 3

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_16

    const v0, 0x7f01002a

    const v1, 0x7f01002b

    invoke-virtual {p0, v0, v1}, Lcom/online/languages/study/studymaster/ImageDetailActivity;->overridePendingTransition(II)V

    :cond_16
    return-void
.end method
