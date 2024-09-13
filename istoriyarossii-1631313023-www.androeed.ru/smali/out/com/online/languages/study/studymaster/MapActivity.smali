.class public Lcom/online/languages/study/studymaster/MapActivity;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "MapActivity.java"


# instance fields
.field appSettings:Landroid/content/SharedPreferences;

.field imageMapsData:Lcom/online/languages/study/studymaster/data/ImageMapsData;

.field mapData:Lcom/online/languages/study/studymaster/data/ImageData;

.field picType:I

.field themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

.field public themeTitle:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/MapActivity;->picType:I

    return-void
.end method

.method private getDataFromDetail(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/ImageData;
    .registers 10

    new-instance v0, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/data/DataManager;->getDataItemFromDB(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/DataItem;

    move-result-object v1

    iget-object v2, v1, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    iput-object v2, p0, Lcom/online/languages/study/studymaster/MapActivity;->title:Ljava/lang/String;

    new-instance v2, Lcom/online/languages/study/studymaster/data/DetailItem;

    invoke-direct {v2, v1}, Lcom/online/languages/study/studymaster/data/DetailItem;-><init>(Lcom/online/languages/study/studymaster/data/DataItem;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/online/languages/study/studymaster/data/DetailItem;->title:Ljava/lang/String;

    iget v3, p0, Lcom/online/languages/study/studymaster/MapActivity;->picType:I

    const-string v4, "not found"

    const-string v5, ""

    const/4 v6, 0x2

    if-ne v3, v6, :cond_49

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/data/DataManager;->getDetailFromDB(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/DetailItem;

    move-result-object v2

    iget-object v3, v2, Lcom/online/languages/study/studymaster/data/DetailItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    new-instance v2, Lcom/online/languages/study/studymaster/data/DetailItem;

    invoke-direct {v2, v1}, Lcom/online/languages/study/studymaster/data/DetailItem;-><init>(Lcom/online/languages/study/studymaster/data/DataItem;)V

    :cond_46
    iget-object v3, v2, Lcom/online/languages/study/studymaster/data/DetailItem;->img_info:Ljava/lang/String;

    goto :goto_4a

    :cond_49
    move-object v3, v5

    :goto_4a
    iget v6, p0, Lcom/online/languages/study/studymaster/MapActivity;->picType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_aa

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/data/DataManager;->getDetailFromDB(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/DetailItem;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0418\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435 \u043a \u0437\u0430\u043f\u0438\u0441\u0438: \n\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " \n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v6, "img_from_full"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    iput-object v0, v2, Lcom/online/languages/study/studymaster/data/DetailItem;->title:Ljava/lang/String;

    :cond_7e
    iget-object v1, p1, Lcom/online/languages/study/studymaster/data/DetailItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_aa

    iget-object v1, p1, Lcom/online/languages/study/studymaster/data/DetailItem;->image:Ljava/lang/String;

    iput-object v1, v2, Lcom/online/languages/study/studymaster/data/DetailItem;->image:Ljava/lang/String;

    iget-object v1, p1, Lcom/online/languages/study/studymaster/data/DetailItem;->img_info:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_aa

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DetailItem;->img_info:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\n\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/online/languages/study/studymaster/data/DetailItem;->title:Ljava/lang/String;

    :cond_aa
    new-instance p1, Lcom/online/languages/study/studymaster/data/ImageData;

    iget-object v0, v2, Lcom/online/languages/study/studymaster/data/DetailItem;->title:Ljava/lang/String;

    iget-object v1, v2, Lcom/online/languages/study/studymaster/data/DetailItem;->id:Ljava/lang/String;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/DetailItem;->image:Ljava/lang/String;

    invoke-direct {p1, v0, v3, v1, v2}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private pageTransition()V
    .registers 5

    iget v0, p0, Lcom/online/languages/study/studymaster/MapActivity;->picType:I

    const v1, 0x7f010024

    const v2, 0x7f010020

    const/4 v3, 0x1

    if-ne v0, v3, :cond_f

    invoke-virtual {p0, v2, v1}, Lcom/online/languages/study/studymaster/MapActivity;->overridePendingTransition(II)V

    goto :goto_35

    :cond_f
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "from_full"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0, v2, v1}, Lcom/online/languages/study/studymaster/MapActivity;->overridePendingTransition(II)V

    goto :goto_35

    :cond_1f
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_35

    const v0, 0x7f010029

    const v1, 0x7f01002c

    invoke-virtual {p0, v0, v1}, Lcom/online/languages/study/studymaster/MapActivity;->overridePendingTransition(II)V

    :cond_35
    :goto_35
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onBackPressed()V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/MapActivity;->pageTransition()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MapActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "theme"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MapActivity;->themeTitle:Ljava/lang/String;

    const-string v1, "white"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "white_map"

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MapActivity;->themeTitle:Ljava/lang/String;

    :cond_1c
    new-instance v0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MapActivity;->themeTitle:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, p0, v1, v3}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MapActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_44

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MapActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_44
    const p1, 0x7f0c002e

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MapActivity;->setContentView(I)V

    const p1, 0x7f0902e4

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MapActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MapActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MapActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    new-instance p1, Lcom/online/languages/study/studymaster/data/ImageMapsData;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/data/ImageMapsData;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MapActivity;->imageMapsData:Lcom/online/languages/study/studymaster/data/ImageMapsData;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "page_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "pic"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/online/languages/study/studymaster/MapActivity;->picType:I

    const-string v3, ""

    iput-object v3, p0, Lcom/online/languages/study/studymaster/MapActivity;->title:Ljava/lang/String;

    const v3, 0x7f11012a

    if-nez v1, :cond_a5

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MapActivity;->imageMapsData:Lcom/online/languages/study/studymaster/data/ImageMapsData;

    invoke-virtual {v1, p1}, Lcom/online/languages/study/studymaster/data/ImageMapsData;->getMapInfoById(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/ImageData;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MapActivity;->mapData:Lcom/online/languages/study/studymaster/data/ImageData;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/ImageData;->title:Ljava/lang/String;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MapActivity;->title:Ljava/lang/String;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MapActivity;->mapData:Lcom/online/languages/study/studymaster/data/ImageData;

    invoke-virtual {p0, v3}, Lcom/online/languages/study/studymaster/MapActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/MapActivity;->mapData:Lcom/online/languages/study/studymaster/data/ImageData;

    iget-object v4, v4, Lcom/online/languages/study/studymaster/data/ImageData;->title:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/online/languages/study/studymaster/data/ImageData;->title:Ljava/lang/String;

    goto :goto_cd

    :cond_a5
    const/4 v4, 0x2

    if-ne v1, v4, :cond_c7

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/MapActivity;->getDataFromDetail(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/ImageData;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MapActivity;->mapData:Lcom/online/languages/study/studymaster/data/ImageData;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/ImageData;->title:Ljava/lang/String;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MapActivity;->title:Ljava/lang/String;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MapActivity;->mapData:Lcom/online/languages/study/studymaster/data/ImageData;

    invoke-virtual {p0, v3}, Lcom/online/languages/study/studymaster/MapActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/MapActivity;->mapData:Lcom/online/languages/study/studymaster/data/ImageData;

    iget-object v4, v4, Lcom/online/languages/study/studymaster/data/ImageData;->title:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/online/languages/study/studymaster/data/ImageData;->title:Ljava/lang/String;

    goto :goto_cd

    :cond_c7
    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/MapActivity;->getDataFromDetail(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/ImageData;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MapActivity;->mapData:Lcom/online/languages/study/studymaster/data/ImageData;

    :goto_cd
    const p1, 0x4019999a    # 2.4f

    iget v1, p0, Lcom/online/languages/study/studymaster/MapActivity;->picType:I

    if-ne v1, v0, :cond_d6

    const/high16 p1, 0x3fc00000    # 1.5f

    :cond_d6
    iget-object v0, p0, Lcom/online/languages/study/studymaster/MapActivity;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/MapActivity;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f090134

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/MapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->setMaxZoomRatio(F)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "img_from_full"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f8

    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_f8
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///android_asset/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "pics/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/MapActivity;->mapData:Lcom/online/languages/study/studymaster/data/ImageData;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/ImageData;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MapActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0014

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

    const v1, 0x7f0901fe

    if-eq v0, v1, :cond_14

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_14
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MapActivity;->showInfoDialog()V

    return v2

    :cond_18
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MapActivity;->finish()V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/MapActivity;->pageTransition()V

    return v2
.end method

.method public openWebLink(Landroid/view/View;)V
    .registers 3

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MapActivity;->mapData:Lcom/online/languages/study/studymaster/data/ImageData;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/ImageData;->weblink:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_12
    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MapActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_15
    .catch Landroid/content/ActivityNotFoundException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_21

    :catch_16
    const p1, 0x7f1100d9

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_21
    return-void
.end method

.method public showInfoDialog()V
    .registers 8

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/MapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c0079

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0901fc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090306

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/online/languages/study/studymaster/MapActivity;->mapData:Lcom/online/languages/study/studymaster/data/ImageData;

    iget-object v4, v4, Lcom/online/languages/study/studymaster/data/ImageData;->weblink:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v6, 0x8

    if-eqz v4, :cond_3a

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_3a
    iget-object v3, p0, Lcom/online/languages/study/studymaster/MapActivity;->mapData:Lcom/online/languages/study/studymaster/data/ImageData;

    iget-object v3, v3, Lcom/online/languages/study/studymaster/data/ImageData;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MapActivity;->mapData:Lcom/online/languages/study/studymaster/data/ImageData;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/ImageData;->desc:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MapActivity;->mapData:Lcom/online/languages/study/studymaster/data/ImageData;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/ImageData;->desc:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_55
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f110128

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f110053

    new-instance v4, Lcom/online/languages/study/studymaster/MapActivity$1;

    invoke-direct {v4, p0}, Lcom/online/languages/study/studymaster/MapActivity$1;-><init>(Lcom/online/languages/study/studymaster/MapActivity;)V

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
