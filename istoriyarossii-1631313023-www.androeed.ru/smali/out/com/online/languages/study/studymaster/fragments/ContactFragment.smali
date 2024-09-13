.class public Lcom/online/languages/study/studymaster/fragments/ContactFragment;
.super Landroidx/fragment/app/Fragment;
.source "ContactFragment.java"


# instance fields
.field appSettings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private getShareIntent()V
    .registers 4

    const v0, 0x7f110024

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f1101ca

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f11009f

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/app/ShareCompat$IntentBuilder;->from(Landroid/app/Activity;)Landroidx/core/app/ShareCompat$IntentBuilder;

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

.method private goToPlayStore(Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x48080000    # 139264.0f

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_21
    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_24
    .catch Landroid/content/ActivityNotFoundException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_47

    :catch_25
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f11009f

    invoke-virtual {p0, v3}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->startActivity(Landroid/content/Intent;)V

    :goto_47
    return-void
.end method

.method private openAppLink(Ljava/lang/String;)V
    .registers 5

    const v0, 0x7f110024

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_52

    goto :goto_33

    :sswitch_13
    const-string v1, "jp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto :goto_33

    :cond_1c
    const/4 v2, 0x2

    goto :goto_33

    :sswitch_1e
    const-string v1, "fr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_33

    :cond_27
    const/4 v2, 0x1

    goto :goto_33

    :sswitch_29
    const-string v1, "en"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    goto :goto_33

    :cond_32
    const/4 v2, 0x0

    :goto_33
    packed-switch v2, :pswitch_data_60

    goto :goto_4e

    :pswitch_37
    const p1, 0x7f1100ba

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4e

    :pswitch_3f
    const p1, 0x7f110096

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4e

    :pswitch_47
    const p1, 0x7f11005b

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4e
    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->goToPlayStore(Ljava/lang/String;)V

    return-void

    :sswitch_data_52
    .sparse-switch
        0xca9 -> :sswitch_29
        0xccc -> :sswitch_1e
        0xd46 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_47
        :pswitch_3f
        :pswitch_37
    .end packed-switch
.end method

.method private rate()V
    .registers 3

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/RateDialog;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/online/languages/study/studymaster/adapters/RateDialog;-><init>(Landroid/content/Context;)V

    const-string v1, "Rate"

    invoke-virtual {v0, v1, v1}, Lcom/online/languages/study/studymaster/adapters/RateDialog;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendMail(I)V
    .registers 9

    const v0, 0x7f1100bf

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1100d7

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_18

    const p1, 0x7f1100d8

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_18
    const-string p1, "5.9.1"

    iget-object v3, p0, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->appSettings:Landroid/content/SharedPreferences;

    const-string v4, "full_version"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "+"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_36
    const v3, 0x7f1100dd

    invoke-virtual {p0, v3}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const v6, 0x7f1100dc

    invoke-virtual {p0, v6}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?subject="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&body="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const p1, 0x7f1100db

    :try_start_9f
    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_aa
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9f .. :try_end_aa} :catch_ab

    goto :goto_b9

    :catch_ab
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1100da

    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_b9
    return-void
.end method

.method private shareIntent()V
    .registers 1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->getShareIntent()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreateView$0$ContactFragment(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->sendFeedback()V

    return-void
.end method

.method public synthetic lambda$onCreateView$1$ContactFragment(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->sendReport()V

    return-void
.end method

.method public synthetic lambda$onCreateView$2$ContactFragment(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->rate()V

    return-void
.end method

.method public synthetic lambda$onCreateView$3$ContactFragment(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->shareIntent()V

    return-void
.end method

.method public synthetic lambda$onCreateView$4$ContactFragment(Landroid/view/View;)V
    .registers 2

    const-string p1, "en"

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->openAppLink(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onCreateView$5$ContactFragment(Landroid/view/View;)V
    .registers 2

    const-string p1, "fr"

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->openAppLink(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onCreateView$6$ContactFragment(Landroid/view/View;)V
    .registers 2

    const-string p1, "jp"

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->openAppLink(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0c0085

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->appSettings:Landroid/content/SharedPreferences;

    const p2, 0x7f090263

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/online/languages/study/studymaster/fragments/-$$Lambda$ContactFragment$fwW7Lmvg699ksVubnVK6XaTKRIU;

    invoke-direct {p3, p0}, Lcom/online/languages/study/studymaster/fragments/-$$Lambda$ContactFragment$fwW7Lmvg699ksVubnVK6XaTKRIU;-><init>(Lcom/online/languages/study/studymaster/fragments/ContactFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090264

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/online/languages/study/studymaster/fragments/-$$Lambda$ContactFragment$_XMeBUl2cNdnxNxwLJ4OzorHJVA;

    invoke-direct {p3, p0}, Lcom/online/languages/study/studymaster/fragments/-$$Lambda$ContactFragment$_XMeBUl2cNdnxNxwLJ4OzorHJVA;-><init>(Lcom/online/languages/study/studymaster/fragments/ContactFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090211

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/online/languages/study/studymaster/fragments/-$$Lambda$ContactFragment$9uJsfsOh5XLy3D9rl8JtM1qGeMs;

    invoke-direct {p3, p0}, Lcom/online/languages/study/studymaster/fragments/-$$Lambda$ContactFragment$9uJsfsOh5XLy3D9rl8JtM1qGeMs;-><init>(Lcom/online/languages/study/studymaster/fragments/ContactFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900aa

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/online/languages/study/studymaster/fragments/-$$Lambda$ContactFragment$tvVcAK4j2Oe4ubNxMRMupA8qjgA;

    invoke-direct {p3, p0}, Lcom/online/languages/study/studymaster/fragments/-$$Lambda$ContactFragment$tvVcAK4j2Oe4ubNxMRMupA8qjgA;-><init>(Lcom/online/languages/study/studymaster/fragments/ContactFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090054

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/online/languages/study/studymaster/fragments/-$$Lambda$ContactFragment$o2voGuokwLI25PFp4mV3dqGTnOI;

    invoke-direct {p3, p0}, Lcom/online/languages/study/studymaster/fragments/-$$Lambda$ContactFragment$o2voGuokwLI25PFp4mV3dqGTnOI;-><init>(Lcom/online/languages/study/studymaster/fragments/ContactFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090055

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/online/languages/study/studymaster/fragments/-$$Lambda$ContactFragment$lmpoFOYoZ7xNLEGfhKteAIAEgDk;

    invoke-direct {p3, p0}, Lcom/online/languages/study/studymaster/fragments/-$$Lambda$ContactFragment$lmpoFOYoZ7xNLEGfhKteAIAEgDk;-><init>(Lcom/online/languages/study/studymaster/fragments/ContactFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090056

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/online/languages/study/studymaster/fragments/-$$Lambda$ContactFragment$MKunnm9VjqVbu81lgLWHZFCvyOQ;

    invoke-direct {p3, p0}, Lcom/online/languages/study/studymaster/fragments/-$$Lambda$ContactFragment$MKunnm9VjqVbu81lgLWHZFCvyOQ;-><init>(Lcom/online/languages/study/studymaster/fragments/ContactFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public sendFeedback()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->sendMail(I)V

    return-void
.end method

.method public sendReport()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/fragments/ContactFragment;->sendMail(I)V

    return-void
.end method
