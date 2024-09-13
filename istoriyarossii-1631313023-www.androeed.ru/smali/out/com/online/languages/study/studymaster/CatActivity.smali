.class public Lcom/online/languages/study/studymaster/CatActivity;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "CatActivity.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# static fields
.field public static catSpec:Ljava/lang/String;

.field public static categoryID:Ljava/lang/String;

.field public static section:Lcom/online/languages/study/studymaster/data/Section;


# instance fields
.field private MY_DATA_CHECK_CODE:I

.field adCard:Landroid/view/View;

.field adContainer:Landroid/view/View;

.field adapter:Lcom/online/languages/study/studymaster/adapters/CatViewPagerAdapter;

.field appSettings:Landroid/content/SharedPreferences;

.field public cardData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

.field dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

.field easy_mode:Ljava/lang/Boolean;

.field public exerciseData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field fullDirect:Ljava/lang/String;

.field mAdView:Lcom/google/android/gms/ads/AdView;

.field private myTTS:Landroid/speech/tts/TextToSpeech;

.field openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

.field placeholder:Landroid/widget/ImageView;

.field showAd:Ljava/lang/Boolean;

.field showDelStats:Z

.field sortMenuItem:Landroid/view/MenuItem;

.field speakBtn:Landroid/view/View;

.field speaking:Z

.field themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

.field public themeTitle:Ljava/lang/String;

.field viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->exerciseData:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->cardData:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->MY_DATA_CHECK_CODE:I

    return-void
.end method

.method static synthetic access$000(Lcom/online/languages/study/studymaster/CatActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/CatActivity;->showBanner()V

    return-void
.end method

.method static synthetic access$100(Lcom/online/languages/study/studymaster/CatActivity;)I
    .registers 1

    iget p0, p0, Lcom/online/languages/study/studymaster/CatActivity;->MY_DATA_CHECK_CODE:I

    return p0
.end method

.method static synthetic access$200(Lcom/online/languages/study/studymaster/CatActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/CatActivity;->showSort(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/online/languages/study/studymaster/CatActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/CatActivity;->deleteCatResults()V

    return-void
.end method

.method private checkAdShow()V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "show_ad"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->showAd:Ljava/lang/Boolean;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1b

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->showAd:Ljava/lang/Boolean;

    :cond_1b
    const-string v0, "launches"

    invoke-virtual {p0, v0, v2}, Lcom/online/languages/study/studymaster/CatActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "launches_num"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CatActivity;->showAd:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/CatActivity;->showAdCard()V

    :cond_32
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3d

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->adContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4c

    :cond_3d
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/CatActivity$8;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/CatActivity$8;-><init>(Lcom/online/languages/study/studymaster/CatActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_4c
    return-void
.end method

.method private checkTTSIntent()V
    .registers 6

    iget-boolean v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->speaking:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CatActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->speaking:Z

    goto :goto_2e

    :cond_1f
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/online/languages/study/studymaster/CatActivity$3;

    invoke-direct {v2, p0, v1}, Lcom/online/languages/study/studymaster/CatActivity$3;-><init>(Lcom/online/languages/study/studymaster/CatActivity;Landroid/content/Intent;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2e
    return-void
.end method

.method private chekMenuItem()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->appSettings:Landroid/content/SharedPreferences;

    const v1, 0x7f1101a9

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/CatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sort_pers"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "alphabet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->sortMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0800e2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_28

    :cond_20
    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->sortMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0800e1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_28
    return-void
.end method

.method private deleteCatResults()V
    .registers 4

    sget-object v0, Lcom/online/languages/study/studymaster/CatActivity;->categoryID:Ljava/lang/String;

    const v1, 0x7f110051

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CatActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {v1, v0}, Lcom/online/languages/study/studymaster/data/DataManager;->removeCatData(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/CatViewPagerAdapter;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/CatViewPagerAdapter;->getFragmentOne()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->updateDataList()V

    :cond_1f
    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/CatViewPagerAdapter;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/CatViewPagerAdapter;->getFragmentTwo()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->updateResults()V

    :cond_2c
    return-void
.end method

.method private getDataItems()V
    .registers 3

    new-instance v0, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/online/languages/study/studymaster/CatActivity;->categoryID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/data/DataManager;->getCatDBList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->exerciseData:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->cardData:Ljava/util/ArrayList;

    return-void
.end method

.method private infoMessage()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    const v1, 0x7f1100b5

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/CatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1100b4

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/CatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showAdCard()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->showAd:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->adContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    return-void
.end method

.method private showBanner()V
    .registers 4

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/CatActivity;->showAdCard()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->placeholder:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->placeholder:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->placeholder:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private showSort(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1b

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    aget-object v0, p1, v2

    :cond_1b
    iget-object p1, p0, Lcom/online/languages/study/studymaster/CatActivity;->appSettings:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "sort_pers"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CatActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/CatViewPagerAdapter;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/CatViewPagerAdapter;->getFragmentOne()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->updateSort()V

    :cond_36
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/CatActivity;->chekMenuItem()V

    return-void
.end method

.method private sortDialog()V
    .registers 6

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CatActivity;->appSettings:Landroid/content/SharedPreferences;

    const v2, 0x7f1101a9

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/CatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sort_pers"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "alphabet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f1101cc

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/CatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f030016

    new-instance v4, Lcom/online/languages/study/studymaster/CatActivity$5;

    invoke-direct {v4, p0}, Lcom/online/languages/study/studymaster/CatActivity$5;-><init>(Lcom/online/languages/study/studymaster/CatActivity;)V

    invoke-virtual {v2, v3, v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f110053

    new-instance v3, Lcom/online/languages/study/studymaster/CatActivity$4;

    invoke-direct {v3, p0}, Lcom/online/languages/study/studymaster/CatActivity$4;-><init>(Lcom/online/languages/study/studymaster/CatActivity;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public deleteConfirmDialog()V
    .registers 4

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110045

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f11004f

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/online/languages/study/studymaster/CatActivity$6;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/CatActivity$6;-><init>(Lcom/online/languages/study/studymaster/CatActivity;)V

    const v2, 0x7f11004c

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/online/languages/study/studymaster/CatActivity$7;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/CatActivity$7;-><init>(Lcom/online/languages/study/studymaster/CatActivity;)V

    const v2, 0x7f110035

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public manageAd()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->showAd:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/CatActivity;->showAdCard()V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CatActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CatActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_3e

    :cond_32
    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->adContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    :goto_3e
    return-void
.end method

.method public nextPage(I)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/online/languages/study/studymaster/ExerciseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-nez p1, :cond_11

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/online/languages/study/studymaster/CardsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_16

    :cond_11
    const-string v1, "ex_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_16
    sget-object v1, Lcom/online/languages/study/studymaster/CatActivity;->categoryID:Ljava/lang/String;

    const-string v2, "cat_tag"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "dataItems"

    if-nez p1, :cond_27

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CatActivity;->cardData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_2c

    :cond_27
    iget-object p1, p0, Lcom/online/languages/study/studymaster/CatActivity;->exerciseData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_2c
    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/online/languages/study/studymaster/CatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CatActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1d

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2a

    const-string v2, "result"

    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CatActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/CatViewPagerAdapter;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/CatViewPagerAdapter;->getFragmentOne()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;

    if-eqz v1, :cond_2a

    invoke-virtual {v1, p3}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->checkStarred(I)V

    goto :goto_2a

    :cond_1d
    iget-object p3, p0, Lcom/online/languages/study/studymaster/CatActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/CatViewPagerAdapter;

    invoke-virtual {p3}, Lcom/online/languages/study/studymaster/adapters/CatViewPagerAdapter;->getFragmentOne()Landroidx/fragment/app/Fragment;

    move-result-object p3

    check-cast p3, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;

    if-eqz p3, :cond_2a

    invoke-virtual {p3}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->checkDataList()V

    :cond_2a
    :goto_2a
    iget p3, p0, Lcom/online/languages/study/studymaster/CatActivity;->MY_DATA_CHECK_CODE:I

    if-ne p1, p3, :cond_45

    if-ne p2, v0, :cond_38

    new-instance p1, Landroid/speech/tts/TextToSpeech;

    invoke-direct {p1, p0, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CatActivity;->myTTS:Landroid/speech/tts/TextToSpeech;

    goto :goto_45

    :cond_38
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.speech.tts.engine.INSTALL_TTS_DATA"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CatActivity;->startActivity(Landroid/content/Intent;)V

    :cond_45
    :goto_45
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CatActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "theme"

    const-string v1, "default"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CatActivity;->themeTitle:Ljava/lang/String;

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, p1, v2}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    const p1, 0x7f0c001e

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CatActivity;->setContentView(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CatActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "data_mode"

    const-string v3, "2"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CatActivity;->easy_mode:Ljava/lang/Boolean;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CatActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    new-instance p1, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CatActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CatActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->setOrientation()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CatActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "set_del_stats_cat"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/online/languages/study/studymaster/CatActivity;->showDelStats:Z

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CatActivity;->appSettings:Landroid/content/SharedPreferences;

    const v0, 0x7f110195

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/CatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "set_full_detail"

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CatActivity;->fullDirect:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CatActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "cat_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/online/languages/study/studymaster/CatActivity;->categoryID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CatActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "cat_spec"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/online/languages/study/studymaster/CatActivity;->catSpec:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CatActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "cat_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/online/languages/study/studymaster/CatActivity;->catSpec:Ljava/lang/String;

    const-string v3, "pers"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->easy_mode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b2

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f050013

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_ca

    :cond_b2
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f050012

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_ca

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110127

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_ca
    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CatActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/CatActivity;->getDataItems()V

    const p1, 0x7f0902e4

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f0902aa

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    const v1, 0x7f11015f

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    const v1, 0x7f110160

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    const v0, 0x7f0900ab

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/CatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/CatViewPagerAdapter;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v3

    invoke-direct {v0, v1, v3}, Lcom/online/languages/study/studymaster/adapters/CatViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/CatViewPagerAdapter;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CatActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v1, p1}, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    new-instance v0, Lcom/online/languages/study/studymaster/CatActivity$1;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/CatActivity$1;-><init>(Lcom/online/languages/study/studymaster/CatActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    const p1, 0x7f090200

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CatActivity;->placeholder:Landroid/widget/ImageView;

    const p1, 0x7f090047

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CatActivity;->adContainer:Landroid/view/View;

    const p1, 0x7f090046

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CatActivity;->adCard:Landroid/view/View;

    iput-object v2, p0, Lcom/online/languages/study/studymaster/CatActivity;->showAd:Ljava/lang/Boolean;

    const p1, 0x7f090049

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/AdView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CatActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    new-instance v0, Lcom/online/languages/study/studymaster/CatActivity$2;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/CatActivity$2;-><init>(Lcom/online/languages/study/studymaster/CatActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/CatActivity;->checkAdShow()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CatActivity;->appSettings:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const-string v1, "set_speak_mode"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/online/languages/study/studymaster/CatActivity;->speaking:Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0900e3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f090275

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/online/languages/study/studymaster/CatActivity;->sortMenuItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CatActivity;->easy_mode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_26

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_26
    sget-object v0, Lcom/online/languages/study/studymaster/CatActivity;->catSpec:Ljava/lang/String;

    const-string v1, "pers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/CatActivity;->chekMenuItem()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-boolean v0, v0, Lcom/online/languages/study/studymaster/data/DataManager;->simplified:Z

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->sortMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3e
    iget-boolean v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->showDelStats:Z

    if-nez v0, :cond_4d

    const v0, 0x7f090227

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4d
    return v2
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    :cond_7
    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->myTTS:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    :cond_e
    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onInit(I)V
    .registers 3

    if-nez p1, :cond_16

    new-instance p1, Ljava/util/Locale;

    const-string v0, "ru"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->myTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->myTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    :cond_16
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_28

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_d
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/CatActivity;->sortDialog()V

    return v1

    :sswitch_11
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CatActivity;->deleteConfirmDialog()V

    return v1

    :sswitch_15
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/CatActivity;->infoMessage()V

    return v1

    :sswitch_19
    iget-object p1, p0, Lcom/online/languages/study/studymaster/CatActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;->openDialog()V

    return v1

    :sswitch_1f
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CatActivity;->finish()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CatActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return v1

    :sswitch_data_28
    .sparse-switch
        0x102002c -> :sswitch_1f
        0x7f0900e3 -> :sswitch_19
        0x7f090164 -> :sswitch_15
        0x7f090227 -> :sswitch_11
        0x7f090275 -> :sswitch_d
    .end sparse-switch
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    :cond_7
    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->showAd:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/CatActivity;->checkAdShow()V

    :cond_15
    return-void
.end method

.method public showAlertDialog(Landroid/view/View;I)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "divider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity;->fullDirect:Ljava/lang/String;

    const-string v1, "full"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "id"

    const-string v2, "starrable"

    const/4 v3, 0x1

    if-eqz v0, :cond_3b

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/online/languages/study/studymaster/FullDetailActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/online/languages/study/studymaster/CatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const p1, 0x7f01001e

    const p2, 0x7f010023

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/CatActivity;->overridePendingTransition(II)V

    goto :goto_57

    :cond_3b
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/online/languages/study/studymaster/ScrollingActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "position"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/online/languages/study/studymaster/CatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const p1, 0x7f010028

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/CatActivity;->overridePendingTransition(II)V

    :goto_57
    return-void
.end method
