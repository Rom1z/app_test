.class public Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;
.super Ljava/lang/Object;
.source "DialogSpeakerMode.java"

# interfaces
.implements Lcom/online/languages/study/studymaster/adapters/OnModeSelector;


# instance fields
.field appSettings:Landroid/content/SharedPreferences;

.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;->appSettings:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic lambda$createDialog$0(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$createDialog2$1(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$listModeChoice$11(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method


# virtual methods
.method public callHint()V
    .registers 1

    return-void
.end method

.method public callMode(I)V
    .registers 2

    return-void
.end method

.method public createDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget-object v1, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$3ue2wGWK6mdVTxCh_347pkGH7E4;->INSTANCE:Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$3ue2wGWK6mdVTxCh_347pkGH7E4;

    const v2, 0x7f110053

    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    const p2, 0x102000b

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/high16 p2, 0x41600000    # 14.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public createDialog2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;->createDialog2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public createDialog2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 18

    move-object v6, p0

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, v6, Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, v6, Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iget-object v2, v6, Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;->appSettings:Landroid/content/SharedPreferences;

    const-string v3, "set_speak_mode"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, v6, Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;->context:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f0c0078

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0900ce

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object v4, p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0900cf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object v5, p3

    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-nez v4, :cond_5c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_5c
    const v3, 0x7f090076

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090077

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v7, 0x7f090078

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f09020b

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    const v9, 0x7f09020c

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    const v10, 0x7f09020d

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {v9, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    if-eqz p5, :cond_a2

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_ab

    :cond_a2
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_ab
    const/4 v5, 0x1

    if-nez v1, :cond_b1

    invoke-virtual {v8, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_b1
    if-ne v1, v5, :cond_b9

    invoke-virtual {v9, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {v10, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_b9
    move-object v1, p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f110053

    sget-object v5, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$9S3y3eN24McoVD8lblCcUNSuGok;->INSTANCE:Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$9S3y3eN24McoVD8lblCcUNSuGok;

    invoke-virtual {v1, v2, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    if-eqz p4, :cond_db

    const v1, 0x7f1100d5

    new-instance v2, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$Sz8BdN3zfbOhWi5LPUPkW5bXq7U;

    invoke-direct {v2, p0}, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$Sz8BdN3zfbOhWi5LPUPkW5bXq7U;-><init>(Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_db
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/appcompat/app/AlertDialog;->show()V

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$Y1MET1ZFc5esacyneMpPJV23gRc;

    invoke-direct {v0, p0, v9, v8, v5}, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$Y1MET1ZFc5esacyneMpPJV23gRc;-><init>(Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$rYGJXZpIljEMskhGC2uqgGyvWyY;

    invoke-direct {v0, p0, v8, v9, v5}, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$rYGJXZpIljEMskhGC2uqgGyvWyY;-><init>(Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v11, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$D7ENi3Beg_1Ux8M3B4mI5tpsBtI;

    move-object v0, v11

    move-object v1, p0

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$D7ENi3Beg_1Ux8M3B4mI5tpsBtI;-><init>(Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v7, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public createEasyDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;->createDialog2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public createModeHint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;->createDialog2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public synthetic lambda$createDialog2$2$DialogSpeakerMode(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;->callHint()V

    return-void
.end method

.method public synthetic lambda$createDialog2$4$DialogSpeakerMode(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 5

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$XqAUdGT04-XfRIwc2Aop4E2emuA;

    invoke-direct {p2, p0, p3}, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$XqAUdGT04-XfRIwc2Aop4E2emuA;-><init>(Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;Landroidx/appcompat/app/AlertDialog;)V

    const-wide/16 p3, 0x190

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$createDialog2$6$DialogSpeakerMode(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 5

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$upjoR7vzN2pWQESFH_-9m7CxUEM;

    invoke-direct {p2, p0, p3}, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$upjoR7vzN2pWQESFH_-9m7CxUEM;-><init>(Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;Landroidx/appcompat/app/AlertDialog;)V

    const-wide/16 p3, 0x190

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$createDialog2$8$DialogSpeakerMode(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 6

    const/4 p5, 0x0

    invoke-virtual {p1, p5}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {p3, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$9-Z0bq7pjWJ3JkH78xkW6G419cs;

    invoke-direct {p2, p0, p4}, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$9-Z0bq7pjWJ3JkH78xkW6G419cs;-><init>(Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;Landroidx/appcompat/app/AlertDialog;)V

    const-wide/16 p3, 0x190

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$listModeChoice$10$DialogSpeakerMode(Landroid/content/DialogInterface;I)V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$WaBiwOITUOJlTkt5f6Z7WgixUE8;

    invoke-direct {v1, p0, p2, p1}, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$WaBiwOITUOJlTkt5f6Z7WgixUE8;-><init>(Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;ILandroid/content/DialogInterface;)V

    const-wide/16 p1, 0x190

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$null$3$DialogSpeakerMode(Landroidx/appcompat/app/AlertDialog;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;->callMode(I)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    return-void
.end method

.method public synthetic lambda$null$5$DialogSpeakerMode(Landroidx/appcompat/app/AlertDialog;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;->callMode(I)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    return-void
.end method

.method public synthetic lambda$null$7$DialogSpeakerMode(Landroidx/appcompat/app/AlertDialog;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;->callMode(I)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    return-void
.end method

.method public synthetic lambda$null$9$DialogSpeakerMode(ILandroid/content/DialogInterface;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;->callMode(I)V

    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public listModeChoice(Ljava/lang/String;)V
    .registers 8

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1101ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;->appSettings:Landroid/content/SharedPreferences;

    const-string v3, "data_mode"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f03000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2b
    array-length v5, v2

    if-ge v3, v5, :cond_3a

    aget-object v5, v2, v3

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    move v4, v3

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_3a
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f03000e

    new-instance v2, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$dexUU8eBLoGg24VbRSyIFo4d2f0;

    invoke-direct {v2, p0}, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$dexUU8eBLoGg24VbRSyIFo4d2f0;-><init>(Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;)V

    invoke-virtual {p1, v1, v4, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f110053

    sget-object v2, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$JOGQDc8Dgz286GJAYgujIa02J_o;->INSTANCE:Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$JOGQDc8Dgz286GJAYgujIa02J_o;

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public modeInfoDialog()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11021f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openDialog()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
