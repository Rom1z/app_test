.class public Lcom/online/languages/study/studymaster/GetPremium;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "GetPremium.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field appSettings:Landroid/content/SharedPreferences;

.field getPremiumMsg:Landroid/widget/LinearLayout;

.field mGotInventoryListener:Lcom/online/languages/study/studymaster/util/IabHelper$QueryInventoryFinishedListener;

.field mHelper:Lcom/online/languages/study/studymaster/util/IabHelper;

.field mPurchaseFinishedListener:Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;

.field openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

.field purchaseButton:Landroid/widget/Button;

.field thanksMsg:Landroid/widget/LinearLayout;

.field themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

.field public themeTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BaseActivity;-><init>()V

    new-instance v0, Lcom/online/languages/study/studymaster/GetPremium$2;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/GetPremium$2;-><init>(Lcom/online/languages/study/studymaster/GetPremium;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/GetPremium;->mGotInventoryListener:Lcom/online/languages/study/studymaster/util/IabHelper$QueryInventoryFinishedListener;

    new-instance v0, Lcom/online/languages/study/studymaster/GetPremium$3;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/GetPremium$3;-><init>(Lcom/online/languages/study/studymaster/GetPremium;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/GetPremium;->mPurchaseFinishedListener:Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/online/languages/study/studymaster/GetPremium;)V
    .registers 1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/GetPremium;->updateAfterPurchase()V

    return-void
.end method

.method private changeShowAd(Ljava/lang/Boolean;)V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/GetPremium;->appSettings:Landroid/content/SharedPreferences;

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

    iget-object v0, p0, Lcom/online/languages/study/studymaster/GetPremium;->appSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "full_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateAfterPurchase()V
    .registers 3

    const-string v0, "Thank you!"

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/GetPremium;->showRes(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/GetPremium;->getPremiumMsg:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/GetPremium;->thanksMsg:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/GetPremium;->changeVersion(Ljava/lang/Boolean;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/online/languages/study/studymaster/GetPremium;->setResult(ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public continueAfterBuy(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/GetPremium;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/GetPremium;->mHelper:Lcom/online/languages/study/studymaster/util/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/online/languages/study/studymaster/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-super {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string p1, "UI developer update."

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/GetPremium;->showRes(Ljava/lang/String;)V

    goto :goto_19

    :cond_14
    const-string p1, "onActivityResult handled by IABUtil."

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/GetPremium;->showRes(Ljava/lang/String;)V

    :goto_19
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/GetPremium;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "theme"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/GetPremium;->themeTitle:Ljava/lang/String;

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v0, v3}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/GetPremium;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0029

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/GetPremium;->setContentView(I)V

    const p1, 0x7f11005c

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/GetPremium;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/online/languages/study/studymaster/util/IabHelper;

    invoke-direct {v0, p0, p1}, Lcom/online/languages/study/studymaster/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/GetPremium;->mHelper:Lcom/online/languages/study/studymaster/util/IabHelper;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/GetPremium;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->setOrientation()V

    const p1, 0x7f0902e4

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/GetPremium;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/GetPremium;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/GetPremium;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f09013a

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/GetPremium;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/GetPremium;->getPremiumMsg:Landroid/widget/LinearLayout;

    const p1, 0x7f0902da

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/GetPremium;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/GetPremium;->thanksMsg:Landroid/widget/LinearLayout;

    const p1, 0x7f090209

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/GetPremium;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/GetPremium;->purchaseButton:Landroid/widget/Button;

    const p1, 0x7f090138

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/GetPremium;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/GetPremium;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "full_version"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/online/languages/study/studymaster/GetPremium;->getPremiumMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/GetPremium;->thanksMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_99

    :cond_96
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_99
    iget-object p1, p0, Lcom/online/languages/study/studymaster/GetPremium;->mHelper:Lcom/online/languages/study/studymaster/util/IabHelper;

    new-instance v0, Lcom/online/languages/study/studymaster/GetPremium$1;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/GetPremium$1;-><init>(Lcom/online/languages/study/studymaster/GetPremium;)V

    invoke-virtual {p1, v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->startSetup(Lcom/online/languages/study/studymaster/util/IabHelper$OnIabSetupFinishedListener;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/GetPremium;->mHelper:Lcom/online/languages/study/studymaster/util/IabHelper;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->dispose()V

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/GetPremium;->mHelper:Lcom/online/languages/study/studymaster/util/IabHelper;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_e

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_e
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/GetPremium;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public purchase(Landroid/view/View;)V
    .registers 8

    iget-object p1, p0, Lcom/online/languages/study/studymaster/GetPremium;->mHelper:Lcom/online/languages/study/studymaster/util/IabHelper;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/util/IabHelper;->flagEndAsync()V

    :cond_7
    iget-object v0, p0, Lcom/online/languages/study/studymaster/GetPremium;->mHelper:Lcom/online/languages/study/studymaster/util/IabHelper;

    const/16 v3, 0x2711

    iget-object v4, p0, Lcom/online/languages/study/studymaster/GetPremium;->mPurchaseFinishedListener:Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;

    const-string v2, "premium_version"

    const-string v5, ""

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/online/languages/study/studymaster/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public showFail(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/GetPremium;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public showRes(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
