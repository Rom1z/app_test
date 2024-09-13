.class public Lcom/online/languages/study/studymaster/MainActivity;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final ACITVE_MENU_ITEM:Ljava/lang/String; = "ACTIVE_ITEM"

.field public static final PUBLIC_KEY_1:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuHpMkp0RqQJ4CzsokYgM0kkzAXgffvRI9aQCS5KYGsSe6RIAZHqvZurxjWjQN"

.field public static final PUBLIC_KEY_2:Ljava/lang/String; = "kpKHwRa5IdDHZD7BUsA1+pooJtyPRZLEvCAlXf1XNY93clF9UEHz77fp29RuzTEGtlZysUk56Do5++FKKcwa4UEJkobyObTCzo6e+jVMy23"

.field public static final PUBLIC_KEY_3:Ljava/lang/String; = "gFX2A0HP25aP4RUfX5UsPjFpPMydGgGyLZoD5TcQVB1aLvUSCCdTuQpgkEEB4Cdqd09VlYXSrgJqDg4f0+ZbDM06UvE63XEmtnj79ivu5adm9"

.field public static final PUBLIC_KEY_4:Ljava/lang/String; = "S1NLNHkFor9DbTrMgNWvvcFCIMPkMxlcRYS0ewdFptA8mKmDABMBEq12rCkjOFSSwIDAQAB"

.field public static final SKU_PREMIUM:Ljava/lang/String; = "premium_version"

.field public static allDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field public static errorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field public static hasPrivilege:Ljava/lang/Boolean;

.field public static oldestDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private PRO_VERSION:Ljava/lang/Boolean;

.field appSettings:Landroid/content/SharedPreferences;

.field bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field bottomNavBox:Landroid/view/View;

.field bottomNavDisplay:Ljava/lang/Boolean;

.field btmNavState:Ljava/lang/String;

.field btmOnly:Z

.field contactFragment:Lcom/online/languages/study/studymaster/fragments/ContactFragment;

.field dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

.field drawer:Landroidx/drawerlayout/widget/DrawerLayout;

.field fPages:Landroidx/fragment/app/FragmentTransaction;

.field fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field fragmentManager:Landroidx/fragment/app/FragmentManager;

.field fullVersion:Ljava/lang/Boolean;

.field galleryFragment:Lcom/online/languages/study/studymaster/fragments/GalleryFragment;

.field homeFragment:Lcom/online/languages/study/studymaster/fragments/HomeFragment;

.field infoFragment:Lcom/online/languages/study/studymaster/fragments/InfoFragment;

.field launchesNum:I

.field listView:Landroid/widget/ListView;

.field mGotInventoryListener:Lcom/online/languages/study/studymaster/util/IabHelper$QueryInventoryFinishedListener;

.field mHelper:Lcom/online/languages/study/studymaster/util/IabHelper;

.field mLaunches:Landroid/content/SharedPreferences;

.field mMenuListAdapter:Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;

.field private mOnNavigationItemSelectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

.field menuActiveItem:I

.field menuTitles:[Ljava/lang/String;

.field multipane:Ljava/lang/Boolean;

.field navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

.field navigationView:Lcom/google/android/material/navigation/NavigationView;

.field notesFragment:Lcom/online/languages/study/studymaster/fragments/NotesFragment;

.field openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

.field prefsFragment:Lcom/online/languages/study/studymaster/fragments/PrefsFragment;

.field requestRate:Z

.field sectionFragment:Lcom/online/languages/study/studymaster/fragments/SectionFragment;

.field shouldBack:Ljava/lang/Boolean;

.field starredFragment:Lcom/online/languages/study/studymaster/fragments/StarredFragment;

.field statsFragment:Lcom/online/languages/study/studymaster/fragments/StatsFragment;

.field themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

.field public themeTitle:Ljava/lang/String;

.field toggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

.field toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->listView:Landroid/widget/ListView;

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->menuActiveItem:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity;->shouldBack:Ljava/lang/Boolean;

    const-string v1, ""

    iput-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity;->btmNavState:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->btmOnly:Z

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->requestRate:Z

    new-instance v0, Lcom/online/languages/study/studymaster/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/MainActivity$4;-><init>(Lcom/online/languages/study/studymaster/MainActivity;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->mGotInventoryListener:Lcom/online/languages/study/studymaster/util/IabHelper$QueryInventoryFinishedListener;

    new-instance v0, Lcom/online/languages/study/studymaster/MainActivity$9;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/MainActivity$9;-><init>(Lcom/online/languages/study/studymaster/MainActivity;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->mOnNavigationItemSelectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/online/languages/study/studymaster/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/MainActivity;->noteFabClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/online/languages/study/studymaster/MainActivity;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/MainActivity;->changeVersion(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$200(Lcom/online/languages/study/studymaster/MainActivity;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/MainActivity;->changeShowAd(Ljava/lang/Boolean;)V

    return-void
.end method

.method private changeShowAd(Ljava/lang/Boolean;)V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->appSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "show_ad"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private changeVersion(Ljava/lang/Boolean;)V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->appSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "full_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private checkGalleryNavItem(Lcom/google/android/material/navigation/NavigationView;)V
    .registers 4

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0901c5

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-boolean v1, v1, Lcom/online/languages/study/studymaster/data/DataManager;->gallerySection:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v0, 0x7f0901cd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-boolean v0, v0, Lcom/online/languages/study/studymaster/data/DataManager;->statsSection:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_26
    return-void
.end method

.method private checkPremium()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->mHelper:Lcom/online/languages/study/studymaster/util/IabHelper;

    new-instance v1, Lcom/online/languages/study/studymaster/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/MainActivity$3;-><init>(Lcom/online/languages/study/studymaster/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/util/IabHelper;->startSetup(Lcom/online/languages/study/studymaster/util/IabHelper$OnIabSetupFinishedListener;)V

    return-void
.end method

.method private checkRateRequest()V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->mLaunches:Landroid/content/SharedPreferences;

    const-string v1, "launch_rate_start"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v3, "set_rate_request"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    add-int/lit8 v0, v0, 0x8

    :try_start_14
    iget v3, p0, Lcom/online/languages/study/studymaster/MainActivity;->launchesNum:I

    if-ne v3, v0, :cond_1b

    if-eqz v1, :cond_1b

    const/4 v2, 0x1

    :cond_1b
    iput-boolean v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->requestRate:Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_22
    return-void
.end method

.method private getShareIntent()V
    .registers 4

    const v0, 0x7f110024

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f1101ca

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f11009f

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroidx/core/app/ShareCompat$IntentBuilder;->from(Landroid/app/Activity;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object v1

    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroidx/core/app/ShareCompat$IntentBuilder;->setType(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object v1

    const v2, 0x7f1101cb

    invoke-virtual {v1, v2}, Landroidx/core/app/ShareCompat$IntentBuilder;->setChooserTitle(I)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/core/app/ShareCompat$IntentBuilder;->setText(Ljava/lang/CharSequence;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/ShareCompat$IntentBuilder;->startChooser()V

    return-void
.end method

.method private goBack()V
    .registers 2

    iget v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->menuActiveItem:I

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/MainActivity;->openPage(I)V

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/MainActivity;->updateMenuList(I)V

    goto :goto_f

    :cond_c
    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onBackPressed()V

    :goto_f
    return-void
.end method

.method private isNetworkAvailable()Z
    .registers 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public static synthetic lambda$_hX-APuTq-I3HMAgZxCvMS0B4B4(Lcom/online/languages/study/studymaster/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/MainActivity;->rateApp()V

    return-void
.end method

.method private manageNoteFab(I)V
    .registers 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_13

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/online/languages/study/studymaster/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/MainActivity$5;-><init>(Lcom/online/languages/study/studymaster/MainActivity;)V

    const-wide/16 v1, 0x226

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_22

    :cond_13
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/online/languages/study/studymaster/MainActivity$6;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/MainActivity$6;-><init>(Lcom/online/languages/study/studymaster/MainActivity;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_22
    return-void
.end method

.method private needCheck()Z
    .registers 4

    const-string v0, "launches"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/online/languages/study/studymaster/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "launches_num"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->launchesNum:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_1a

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/MainActivity;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method private noteFabClick()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "notes"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->fabClick()V

    :cond_f
    return-void
.end method

.method private openOldPage()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/online/languages/study/studymaster/ExerciseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ex_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "cat_tag"

    const-string v2, "revise"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/online/languages/study/studymaster/MainActivity;->oldestDataList:Ljava/util/ArrayList;

    const-string v2, "dataItems"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/MainActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method private openPageFromMenu(I)V
    .registers 6

    iget v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->menuActiveItem:I

    if-eq v0, p1, :cond_15

    iput p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->menuActiveItem:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/MainActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/online/languages/study/studymaster/MainActivity$7;-><init>(Lcom/online/languages/study/studymaster/MainActivity;I)V

    const-wide/16 v2, 0x186

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_15
    iget p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->menuActiveItem:I

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MainActivity;->updateMenuList(I)V

    return-void
.end method

.method private openSearch()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/online/languages/study/studymaster/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    const-string v2, "nav_structure"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/online/languages/study/studymaster/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private openWebsite()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_10
    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_13
    .catch Landroid/content/ActivityNotFoundException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_1f

    :catch_14
    const v0, 0x7f1100d9

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1f
    return-void
.end method

.method private rateApp()V
    .registers 4

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/RateDialog;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/adapters/RateDialog;-><init>(Landroid/content/Context;)V

    const-string v1, "Rate"

    invoke-virtual {v0, v1, v1}, Lcom/online/languages/study/studymaster/adapters/RateDialog;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->requestRate:Z

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity;->appSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "set_rate_request"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public bottomNavDisplay()V
    .registers 11

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->appSettings:Landroid/content/SharedPreferences;

    const v1, 0x7f110178

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "btm_nav"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f110177

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->btmOnly:Z

    iget-object v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->btmNavState:Ljava/lang/String;

    const v3, 0x7f110174

    invoke-virtual {p0, v3}, Lcom/online/languages/study/studymaster/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v4, 0x7f110175

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_3c

    iget-object v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->btmNavState:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/online/languages/study/studymaster/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    :cond_3c
    invoke-virtual {p0, v3}, Lcom/online/languages/study/studymaster/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    invoke-virtual {p0, v4}, Lcom/online/languages/study/studymaster/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    goto :goto_53

    :cond_51
    const/4 v2, 0x0

    goto :goto_54

    :cond_53
    :goto_53
    const/4 v2, 0x1

    :goto_54
    iget-object v7, p0, Lcom/online/languages/study/studymaster/MainActivity;->btmNavState:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/16 v8, 0x8

    if-nez v7, :cond_ea

    if-nez v2, :cond_ea

    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/MainActivity;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->btmOnly:Z

    const v7, 0x7f0901d0

    const v9, 0x7f0901cf

    if-eqz v2, :cond_85

    invoke-virtual {p0, v7}, Lcom/online/languages/study/studymaster/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v2, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setVisibility(I)V

    invoke-virtual {p0, v9}, Lcom/online/languages/study/studymaster/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v6}, Lcom/online/languages/study/studymaster/MainActivity;->setDrawerState(Z)V

    goto :goto_9a

    :cond_85
    invoke-virtual {p0, v9}, Lcom/online/languages/study/studymaster/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v2, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setVisibility(I)V

    invoke-virtual {p0, v7}, Lcom/online/languages/study/studymaster/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lcom/online/languages/study/studymaster/MainActivity;->setDrawerState(Z)V

    :goto_9a
    iget v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->menuActiveItem:I

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/MainActivity;->setToolbarTitle(I)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/Menu;->clear()V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-boolean v2, v2, Lcom/online/languages/study/studymaster/data/DataManager;->gallerySection:Z

    if-eqz v2, :cond_c4

    iget-boolean v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->btmOnly:Z

    if-eqz v2, :cond_bb

    iget-object v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const v7, 0x7f0d0004

    invoke-virtual {v2, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->inflateMenu(I)V

    goto :goto_e8

    :cond_bb
    iget-object v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const v7, 0x7f0d0003

    invoke-virtual {v2, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->inflateMenu(I)V

    goto :goto_e8

    :cond_c4
    iget-boolean v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->btmOnly:Z

    if-eqz v2, :cond_e0

    iget-object v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-boolean v2, v2, Lcom/online/languages/study/studymaster/data/DataManager;->statsSection:Z

    if-nez v2, :cond_d7

    iget-object v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const v7, 0x7f0d0002

    invoke-virtual {v2, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->inflateMenu(I)V

    goto :goto_e8

    :cond_d7
    iget-object v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const v7, 0x7f0d0005

    invoke-virtual {v2, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->inflateMenu(I)V

    goto :goto_e8

    :cond_e0
    iget-object v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const v7, 0x7f0d0001

    invoke-virtual {v2, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->inflateMenu(I)V

    :goto_e8
    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->btmNavState:Ljava/lang/String;

    :cond_ea
    iget-object v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object v7, p0, Lcom/online/languages/study/studymaster/MainActivity;->mOnNavigationItemSelectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    invoke-virtual {v2, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    const v2, 0x7f090066

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->bottomNavBox:Landroid/view/View;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11f

    invoke-virtual {p0, v4}, Lcom/online/languages/study/studymaster/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11f

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11d

    goto :goto_11f

    :cond_11d
    const/4 v1, 0x0

    goto :goto_120

    :cond_11f
    :goto_11f
    const/4 v1, 0x1

    :goto_120
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v2, v4, :cond_127

    const/4 v1, 0x0

    :cond_127
    const v2, 0x7f090122

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/online/languages/study/studymaster/MainActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-direct {p0, v4}, Lcom/online/languages/study/studymaster/MainActivity;->checkGalleryNavItem(Lcom/google/android/material/navigation/NavigationView;)V

    iget-object v4, p0, Lcom/online/languages/study/studymaster/MainActivity;->bottomNavBox:Landroid/view/View;

    if-eqz v4, :cond_18e

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/online/languages/study/studymaster/MainActivity;->bottomNavDisplay:Ljava/lang/Boolean;

    const v4, 0x7f090135

    const v7, 0x7f090144

    if-eqz v1, :cond_174

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity;->bottomNavBox:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    if-eqz v1, :cond_18e

    invoke-virtual {v1}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/online/languages/study/studymaster/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v5

    invoke-interface {v1, v7, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-virtual {p0, v4}, Lcom/online/languages/study/studymaster/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity;->bottomNavBox:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/online/languages/study/studymaster/MainActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/online/languages/study/studymaster/MainActivity$2;-><init>(Lcom/online/languages/study/studymaster/MainActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_18e

    :cond_174
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->bottomNavBox:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    if-eqz v0, :cond_18e

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v7, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-virtual {p0, v4}, Lcom/online/languages/study/studymaster/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    :cond_18e
    :goto_18e
    iget v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->menuActiveItem:I

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/MainActivity;->updateMenuList(I)V

    return-void
.end method

.method public checkPrivilege()Ljava/lang/Boolean;
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->mLaunches:Landroid/content/SharedPreferences;

    const-string v1, "launches_num"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->launchesNum:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_15

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/online/languages/study/studymaster/MainActivity;->hasPrivilege:Ljava/lang/Boolean;

    :cond_15
    sget-object v0, Lcom/online/languages/study/studymaster/MainActivity;->hasPrivilege:Ljava/lang/Boolean;

    return-object v0
.end method

.method public displayEmtySection()V
    .registers 3

    const v0, 0x7f110110

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    const/4 v0, -0x1

    if-ne p2, v0, :cond_13

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MainActivity;->finish()V

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/MainActivity;->startActivity(Landroid/content/Intent;)V

    :cond_13
    const/16 v0, 0xa

    if-ne p1, v0, :cond_31

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "starred"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_24
    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "notes"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_31
    const/16 v0, 0x64

    if-ne p1, v0, :cond_42

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "gallery"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_42
    iget-boolean p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->requestRate:Z

    if-eqz p1, :cond_55

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/online/languages/study/studymaster/-$$Lambda$MainActivity$_hX-APuTq-I3HMAgZxCvMS0B4B4;

    invoke-direct {p2, p0}, Lcom/online/languages/study/studymaster/-$$Lambda$MainActivity$_hX-APuTq-I3HMAgZxCvMS0B4B4;-><init>(Lcom/online/languages/study/studymaster/MainActivity;)V

    const-wide/16 v0, 0x96

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_55
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->multipane:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/MainActivity;->goBack()V

    goto :goto_25

    :cond_c
    const v0, 0x7f0900de

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_25

    :cond_22
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/MainActivity;->goBack()V

    :goto_25
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "theme"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->themeTitle:Ljava/lang/String;

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    const-string v0, "launches"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v0, v1}, Lcom/online/languages/study/studymaster/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->mLaunches:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f030006

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->menuTitles:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f05000b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->multipane:Ljava/lang/Boolean;

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    new-instance v0, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-direct {v0, p0, v2}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->setOrientation()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->multipane:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6f

    const v0, 0x7f0c009e

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/MainActivity;->setContentView(I)V

    goto :goto_97

    :cond_6f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_91

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v4, -0x80000000

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    const/high16 v4, 0x4000000

    invoke-virtual {v0, v4}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06018d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_91
    const v0, 0x7f0c002d

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/MainActivity;->setContentView(I)V

    :goto_97
    const v0, 0x7f11005c

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/online/languages/study/studymaster/util/IabHelper;

    invoke-direct {v4, p0, v0}, Lcom/online/languages/study/studymaster/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/online/languages/study/studymaster/MainActivity;->mHelper:Lcom/online/languages/study/studymaster/util/IabHelper;

    iput-object v3, p0, Lcom/online/languages/study/studymaster/MainActivity;->PRO_VERSION:Ljava/lang/Boolean;

    sput-object v3, Lcom/online/languages/study/studymaster/MainActivity;->hasPrivilege:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v4, "full_version"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->fullVersion:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c4

    invoke-direct {p0, v2}, Lcom/online/languages/study/studymaster/MainActivity;->changeVersion(Ljava/lang/Boolean;)V

    invoke-direct {p0, v3}, Lcom/online/languages/study/studymaster/MainActivity;->changeShowAd(Ljava/lang/Boolean;)V

    goto :goto_ca

    :cond_c4
    invoke-direct {p0, v3}, Lcom/online/languages/study/studymaster/MainActivity;->changeVersion(Ljava/lang/Boolean;)V

    invoke-direct {p0, v2}, Lcom/online/languages/study/studymaster/MainActivity;->changeShowAd(Ljava/lang/Boolean;)V

    :goto_ca
    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->fullVersion:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d5

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/MainActivity;->checkPremium()V

    :cond_d5
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MainActivity;->checkPrivilege()Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/online/languages/study/studymaster/MainActivity;->hasPrivilege:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->PRO_VERSION:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e5

    sput-object v2, Lcom/online/languages/study/studymaster/MainActivity;->hasPrivilege:Ljava/lang/Boolean;

    :cond_e5
    const v0, 0x7f0902e4

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/MainActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    const v0, 0x7f090123

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->multipane:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_127

    const v0, 0x7f090199

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->listView:Landroid/widget/ListView;

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->menuTitles:[Ljava/lang/String;

    iget v3, p0, Lcom/online/languages/study/studymaster/MainActivity;->menuActiveItem:I

    invoke-direct {v0, p0, v2, v3}, Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->mMenuListAdapter:Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_15f

    :cond_127
    const v0, 0x7f0900de

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v4, p0, Lcom/online/languages/study/studymaster/MainActivity;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance v0, Landroidx/appcompat/app/ActionBarDrawerToggle;

    iget-object v5, p0, Lcom/online/languages/study/studymaster/MainActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v6, 0x7f11010e

    const v7, 0x7f11010d

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->toggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v2, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->toggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    const v0, 0x7f0901ce

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0, p0}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MainActivity;->bottomNavDisplay()V

    :goto_15f
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance v0, Lcom/online/languages/study/studymaster/fragments/HomeFragment;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/fragments/HomeFragment;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->homeFragment:Lcom/online/languages/study/studymaster/fragments/HomeFragment;

    new-instance v0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->starredFragment:Lcom/online/languages/study/studymaster/fragments/StarredFragment;

    new-instance v0, Lcom/online/languages/study/studymaster/fragments/InfoFragment;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/fragments/InfoFragment;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->infoFragment:Lcom/online/languages/study/studymaster/fragments/InfoFragment;

    new-instance v0, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->prefsFragment:Lcom/online/languages/study/studymaster/fragments/PrefsFragment;

    new-instance v0, Lcom/online/languages/study/studymaster/fragments/SectionFragment;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/fragments/SectionFragment;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->sectionFragment:Lcom/online/languages/study/studymaster/fragments/SectionFragment;

    new-instance v0, Lcom/online/languages/study/studymaster/fragments/ContactFragment;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->contactFragment:Lcom/online/languages/study/studymaster/fragments/ContactFragment;

    new-instance v0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/fragments/StatsFragment;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->statsFragment:Lcom/online/languages/study/studymaster/fragments/StatsFragment;

    new-instance v0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->galleryFragment:Lcom/online/languages/study/studymaster/fragments/GalleryFragment;

    new-instance v0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->notesFragment:Lcom/online/languages/study/studymaster/fragments/NotesFragment;

    if-eqz p1, :cond_1af

    const-string v0, "ACTIVE_ITEM"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->menuActiveItem:I

    goto :goto_1cb

    :cond_1af
    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->fPages:Landroidx/fragment/app/FragmentTransaction;

    const v0, 0x7f0900af

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity;->homeFragment:Lcom/online/languages/study/studymaster/fragments/HomeFragment;

    const-string v2, "home"

    invoke-virtual {p1, v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->fPages:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->disallowAddToBackStack()Landroidx/fragment/app/FragmentTransaction;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->fPages:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :goto_1cb
    iget p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->menuActiveItem:I

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MainActivity;->updateMenuList(I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lcom/online/languages/study/studymaster/MainActivity;->errorsList:Ljava/util/ArrayList;

    new-instance p1, Lcom/online/languages/study/studymaster/data/NavStructure;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/data/NavStructure;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    new-instance p1, Lcom/online/languages/study/studymaster/data/DataFromJson;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/data/DataFromJson;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/data/DataFromJson;->getStructure()Lcom/online/languages/study/studymaster/data/NavStructure;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    const-string v1, "structure"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "section_id"

    const-string v1, "root"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cat_id"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->homeFragment:Lcom/online/languages/study/studymaster/fragments/HomeFragment;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->statsFragment:Lcom/online/languages/study/studymaster/fragments/StatsFragment;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->galleryFragment:Lcom/online/languages/study/studymaster/fragments/GalleryFragment;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->setArguments(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v0, Lcom/online/languages/study/studymaster/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/MainActivity$1;-><init>(Lcom/online/languages/study/studymaster/MainActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/MainActivity;->checkRateRequest()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->mHelper:Lcom/online/languages/study/studymaster/util/IabHelper;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->dispose()V

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->mHelper:Lcom/online/languages/study/studymaster/util/IabHelper;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/online/languages/study/studymaster/MainActivity;->onMenuItemClicker(I)V

    return-void
.end method

.method public onMenuItemClicker(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/MainActivity;->openPageFromMenu(I)V

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MainActivity;->updateMenuList(I)V

    return-void
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .registers 7

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7f0901c6

    if-ne p1, v3, :cond_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_47

    :cond_f
    const v3, 0x7f0901c5

    if-ne p1, v3, :cond_16

    const/4 p1, 0x1

    goto :goto_47

    :cond_16
    const v3, 0x7f0901cc

    if-ne p1, v3, :cond_1d

    const/4 p1, 0x2

    goto :goto_47

    :cond_1d
    const v3, 0x7f0901cd

    if-ne p1, v3, :cond_24

    const/4 p1, 0x3

    goto :goto_47

    :cond_24
    const v3, 0x7f0901c9

    if-ne p1, v3, :cond_2b

    const/4 p1, 0x4

    goto :goto_47

    :cond_2b
    const v3, 0x7f0901ca

    if-ne p1, v3, :cond_32

    const/4 p1, 0x5

    goto :goto_47

    :cond_32
    const v3, 0x7f0901c7

    if-ne p1, v3, :cond_39

    const/4 p1, 0x6

    goto :goto_47

    :cond_39
    const v3, 0x7f0901c3

    if-ne p1, v3, :cond_40

    const/4 p1, 0x7

    goto :goto_47

    :cond_40
    const v3, 0x7f0901cb

    if-ne p1, v3, :cond_d

    const/16 p1, 0x8

    :goto_47
    const v3, 0x7f0900de

    invoke-virtual {p0, v3}, Lcom/online/languages/study/studymaster/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout;

    const v4, 0x800003

    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    if-ne p1, v0, :cond_5c

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/MainActivity;->getShareIntent()V

    return v2

    :cond_5c
    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MainActivity;->onMenuItemClicker(I)V

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090247

    if-ne v0, v1, :cond_e

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/MainActivity;->openSearch()V

    const/4 p1, 0x1

    return p1

    :cond_e
    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->menuActiveItem:I

    const-string v1, "ACTIVE_ITEM"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public openCatActivity(Landroid/view/View;I)V
    .registers 6

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/NavStructure;->sections:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object p2, p1, Lcom/online/languages/study/studymaster/data/NavSection;->type:Ljava/lang/String;

    const-string v0, "simple"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_30

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/NavSection;->navCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/NavCategory;

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/online/languages/study/studymaster/CatActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    iget-object v1, p1, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/online/languages/study/studymaster/data/NavCategory;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/NavCategory;->spec:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->openCat(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_70

    :cond_30
    iget-object p2, p1, Lcom/online/languages/study/studymaster/data/NavSection;->type:Ljava/lang/String;

    const-string v1, "gallery"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5e

    iget-object p2, p1, Lcom/online/languages/study/studymaster/data/NavSection;->spec:Ljava/lang/String;

    const-string v1, "gallery_simple"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5a

    iget-object p2, p1, Lcom/online/languages/study/studymaster/data/NavSection;->navCategories:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/online/languages/study/studymaster/data/NavCategory;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/NavSection;->id:Ljava/lang/String;

    iget-object v2, p2, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    iget-object p2, p2, Lcom/online/languages/study/studymaster/data/NavCategory;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->openImageList(Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5a
    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MainActivity;->openGallery(Lcom/online/languages/study/studymaster/data/NavSection;)V

    return-void

    :cond_5e
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/online/languages/study/studymaster/SectionActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/NavSection;->id:Ljava/lang/String;

    const-string v2, "root"

    invoke-virtual {v0, p2, v1, p1, v2}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->openSection(Landroid/content/Intent;Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Ljava/lang/String;)V

    :goto_70
    return-void
.end method

.method public openCatFromGallery(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const v0, 0x7f0902b3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/MainActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/online/languages/study/studymaster/MainActivity$8;-><init>(Lcom/online/languages/study/studymaster/MainActivity;Ljava/lang/String;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public openDataTypeBySections(I)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/online/languages/study/studymaster/SectionStatsListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "data_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/MainActivity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method public openErrors(Landroid/view/View;)V
    .registers 4

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/online/languages/study/studymaster/CustomDataListActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v0, Lcom/online/languages/study/studymaster/MainActivity;->errorsList:Ljava/util/ArrayList;

    const-string v1, "dataItems"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    const-string v1, "nav_structure"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "section_id"

    const-string v1, "errors"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MainActivity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method public openGallery(Lcom/online/languages/study/studymaster/data/NavSection;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/online/languages/study/studymaster/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "cat_id"

    const-string v2, "root"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/NavSection;->id:Ljava/lang/String;

    const-string v1, "section_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    const-string v1, "nav_structure"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/online/languages/study/studymaster/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method public openGetPremium(Landroid/view/View;)V
    .registers 3

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/online/languages/study/studymaster/GetPremium;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/online/languages/study/studymaster/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public openKnownBySections(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MainActivity;->openDataTypeBySections(I)V

    return-void
.end method

.method public openNavDialog()V
    .registers 3

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog;

    invoke-direct {v0, p0, p0}, Lcom/online/languages/study/studymaster/adapters/NavigationDialog;-><init>(Landroid/content/Context;Lcom/online/languages/study/studymaster/MainActivity;)V

    const-string v1, "Navigation"

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/adapters/NavigationDialog;->openInfoDialog(Ljava/lang/String;)V

    return-void
.end method

.method public openPage(I)V
    .registers 10

    const-string v0, "home"

    const-string v1, "gallery"

    const-string v2, "starred"

    const-string v3, "stats"

    const-string v4, "notes"

    const-string v5, "prefs"

    const-string v6, "desc"

    const-string v7, "contact"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity;->fPages:Landroidx/fragment/app/FragmentTransaction;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-lez v1, :cond_37

    if-ne p1, v2, :cond_31

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, v3, v4}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    goto :goto_3c

    :cond_31
    iget-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, v3, v2}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    goto :goto_3c

    :cond_37
    iget-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, v3, v4}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    :goto_3c
    iget-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity;->fPages:Landroidx/fragment/app/FragmentTransaction;

    const v3, 0x7f01001c

    invoke-virtual {v1, v3, v4, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    const v1, 0x7f0900af

    if-nez p1, :cond_51

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->fPages:Landroidx/fragment/app/FragmentTransaction;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->homeFragment:Lcom/online/languages/study/studymaster/fragments/HomeFragment;

    invoke-virtual {p1, v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_9c

    :cond_51
    if-ne p1, v2, :cond_5b

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->fPages:Landroidx/fragment/app/FragmentTransaction;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->galleryFragment:Lcom/online/languages/study/studymaster/fragments/GalleryFragment;

    invoke-virtual {p1, v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_9c

    :cond_5b
    const/4 v2, 0x2

    if-ne p1, v2, :cond_66

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->fPages:Landroidx/fragment/app/FragmentTransaction;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->starredFragment:Lcom/online/languages/study/studymaster/fragments/StarredFragment;

    invoke-virtual {p1, v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_9c

    :cond_66
    const/4 v2, 0x3

    if-ne p1, v2, :cond_71

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->fPages:Landroidx/fragment/app/FragmentTransaction;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->statsFragment:Lcom/online/languages/study/studymaster/fragments/StatsFragment;

    invoke-virtual {p1, v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_9c

    :cond_71
    const/4 v2, 0x4

    if-ne p1, v2, :cond_7c

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->fPages:Landroidx/fragment/app/FragmentTransaction;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->notesFragment:Lcom/online/languages/study/studymaster/fragments/NotesFragment;

    invoke-virtual {p1, v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_9c

    :cond_7c
    const/4 v2, 0x5

    if-ne p1, v2, :cond_87

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->fPages:Landroidx/fragment/app/FragmentTransaction;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->prefsFragment:Lcom/online/languages/study/studymaster/fragments/PrefsFragment;

    invoke-virtual {p1, v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_9c

    :cond_87
    const/4 v2, 0x6

    if-ne p1, v2, :cond_92

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->fPages:Landroidx/fragment/app/FragmentTransaction;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->infoFragment:Lcom/online/languages/study/studymaster/fragments/InfoFragment;

    invoke-virtual {p1, v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_9c

    :cond_92
    const/4 v2, 0x7

    if-ne p1, v2, :cond_9c

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->fPages:Landroidx/fragment/app/FragmentTransaction;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->contactFragment:Lcom/online/languages/study/studymaster/fragments/ContactFragment;

    invoke-virtual {p1, v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    :cond_9c
    :goto_9c
    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->fPages:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->disallowAddToBackStack()Landroidx/fragment/app/FragmentTransaction;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->fPages:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public openProgressStats(Landroid/view/View;)V
    .registers 4

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    const-string v1, "nav_structure"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MainActivity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method public openReference(Landroid/view/View;)V
    .registers 3

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/online/languages/study/studymaster/ReferenceActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MainActivity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method public openSectionStats(Landroid/view/View;I)V
    .registers 5

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/online/languages/study/studymaster/SectionStatsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    const-string v1, "nav_structure"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/NavStructure;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/NavSection;->id:Ljava/lang/String;

    const-string v1, "section_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "section_num"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MainActivity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method public openStarred(Landroid/view/View;)V
    .registers 3

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/online/languages/study/studymaster/UserListActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MainActivity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method public openStarredGallery(Landroid/view/View;)V
    .registers 4

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/online/languages/study/studymaster/StarredGalleryActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "cat_id"

    const-string v1, "01010"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "section_id"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    const-string v1, "nav_structure"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MainActivity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method public openStudiedBySections(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MainActivity;->openDataTypeBySections(I)V

    return-void
.end method

.method public openUnknownBySections(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MainActivity;->openDataTypeBySections(I)V

    return-void
.end method

.method public setDrawerState(Z)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->toggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->toggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    goto :goto_23

    :cond_14
    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->toggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->toggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    :goto_23
    return-void
.end method

.method public setToolbarTitle(I)V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->menuTitles:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-nez p1, :cond_d

    const p1, 0x7f110220

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_d
    iget-boolean p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->btmOnly:Z

    if-eqz p1, :cond_22

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_22
    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/MainActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public testAllPage(Landroid/view/View;)V
    .registers 4

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/online/languages/study/studymaster/ExerciseActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "ex_type"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "cat_tag"

    const-string v1, "all"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/online/languages/study/studymaster/MainActivity;->allDataList:Ljava/util/ArrayList;

    const-string v1, "dataItems"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MainActivity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method public testOldstPage(Landroid/view/View;)V
    .registers 3

    sget-object p1, Lcom/online/languages/study/studymaster/MainActivity;->oldestDataList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_d

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MainActivity;->displayEmtySection()V

    goto :goto_10

    :cond_d
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/MainActivity;->openOldPage()V

    :goto_10
    return-void
.end method

.method public updateMenuList(I)V
    .registers 9

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_118

    iput p1, p0, Lcom/online/languages/study/studymaster/MainActivity;->menuActiveItem:I

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity;->multipane:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_45

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    if-ne p1, v2, :cond_2e

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity;->menuTitles:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->mMenuListAdapter:Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_3c

    :cond_2e
    new-instance v1, Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/MainActivity;->menuTitles:[Ljava/lang/String;

    aget v0, v0, p1

    invoke-direct {v1, p0, v2, v0}, Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity;->mMenuListAdapter:Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MainActivity;->setToolbarTitle(I)V

    :goto_3c
    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity;->mMenuListAdapter:Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_10f

    :cond_45
    iget-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v1}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_50
    if-ge v5, v1, :cond_62

    iget-object v6, p0, Lcom/online/languages/study/studymaster/MainActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v6}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    add-int/lit8 v5, v5, 0x1

    goto :goto_50

    :cond_62
    iget-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v4, v3, v4}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    const/4 v1, 0x0

    :goto_6c
    iget-object v5, p0, Lcom/online/languages/study/studymaster/MainActivity;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v5

    if-ge v1, v5, :cond_88

    iget-object v5, p0, Lcom/online/languages/study/studymaster/MainActivity;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    :cond_88
    iget-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v4, v3, v3}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    if-eq p1, v2, :cond_d3

    aget v0, v0, p1

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v1}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/MainActivity;->setToolbarTitle(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-boolean v0, v0, Lcom/online/languages/study/studymaster/data/DataManager;->gallerySection:Z

    if-eqz v0, :cond_bc

    const/4 v0, 0x4

    if-ge p1, v0, :cond_cc

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_cc

    :cond_bc
    const/4 v0, 0x3

    if-ge p1, v0, :cond_cc

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_cc
    :goto_cc
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->shouldBack:Ljava/lang/Boolean;

    goto :goto_e7

    :cond_d3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->shouldBack:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :goto_e7
    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "full_version"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->fullVersion:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const v1, 0x7f0901c4

    if-eqz v0, :cond_108

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10f

    :cond_108
    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_10f
    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v0, :cond_116

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/MainActivity;->manageNoteFab(I)V

    :cond_116
    return-void

    nop

    :array_118
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data
.end method

.method public visitSite(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/MainActivity;->openWebsite()V

    return-void
.end method
