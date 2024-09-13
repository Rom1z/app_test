.class public Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;
.super Ljava/lang/Object;
.source "ThemeAdapter.java"


# instance fields
.field appSettings:Landroid/content/SharedPreferences;

.field private colorListTxt:I

.field private context:Landroid/content/Context;

.field private dialog:Ljava/lang/Boolean;

.field public styleTheme:I

.field private transparentStatus:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->transparentStatus:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->dialog:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->transparentStatus:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->dialog:Ljava/lang/Boolean;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->appSettings:Landroid/content/SharedPreferences;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->setTheme(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->transparentStatus:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->dialog:Ljava/lang/Boolean;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->appSettings:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->setTheme(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private getThemeStyleName(Ljava/lang/String;)I
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "night_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_13c

    :goto_14
    const/4 v2, -0x1

    goto :goto_61

    :sswitch_16
    const-string v1, "westworld"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_14

    :cond_1f
    const/4 v2, 0x6

    goto :goto_61

    :sswitch_21
    const-string v1, "default"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    goto :goto_14

    :cond_2a
    const/4 v2, 0x5

    goto :goto_61

    :sswitch_2c
    const-string v1, "white"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    goto :goto_14

    :cond_35
    const/4 v2, 0x4

    goto :goto_61

    :sswitch_37
    const-string v1, "smoky"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_40

    goto :goto_14

    :cond_40
    const/4 v2, 0x3

    goto :goto_61

    :sswitch_42
    const-string v1, "dark"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b

    goto :goto_14

    :cond_4b
    const/4 v2, 0x2

    goto :goto_61

    :sswitch_4d
    const-string v1, "red"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_56

    goto :goto_14

    :cond_56
    const/4 v2, 0x1

    goto :goto_61

    :sswitch_58
    const-string v1, "white_map"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_61

    goto :goto_14

    :cond_61
    :goto_61
    const p1, 0x7f120111

    packed-switch v2, :pswitch_data_15a

    goto/16 :goto_13a

    :pswitch_69
    const p1, 0x7f120290

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->transparentStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_77

    const p1, 0x7f120291

    :cond_77
    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->dialog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13a

    const p1, 0x7f120292

    goto/16 :goto_13a

    :pswitch_84
    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->transparentStatus:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->dialog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_95

    const p1, 0x7f120112

    :cond_95
    if-eqz v0, :cond_13a

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->transparentStatus:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const p1, 0x7f120113

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->dialog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13a

    const p1, 0x7f120114

    goto/16 :goto_13a

    :pswitch_ad
    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->transparentStatus:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const p1, 0x7f120294

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->dialog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c1

    const p1, 0x7f120295

    :cond_c1
    if-eqz v0, :cond_13a

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->transparentStatus:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const p1, 0x7f120297

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->dialog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13a

    const p1, 0x7f120298

    goto :goto_13a

    :pswitch_d8
    const p1, 0x7f1201a1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->transparentStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e6

    const p1, 0x7f1201a2

    :cond_e6
    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->dialog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13a

    const p1, 0x7f1201a3

    goto :goto_13a

    :pswitch_f2
    const p1, 0x7f12010d

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->transparentStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_100

    const p1, 0x7f12010e

    :cond_100
    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->dialog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13a

    const p1, 0x7f12010f

    goto :goto_13a

    :pswitch_10c
    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->transparentStatus:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const p1, 0x7f120175

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->dialog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_120

    const p1, 0x7f120176

    :cond_120
    if-eqz v0, :cond_13a

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->transparentStatus:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const p1, 0x7f120177

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->dialog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13a

    const p1, 0x7f120178

    goto :goto_13a

    :pswitch_137
    const p1, 0x7f120296

    :cond_13a
    :goto_13a
    return p1

    nop

    :sswitch_data_13c
    .sparse-switch
        -0x62999bba -> :sswitch_58
        0x1b891 -> :sswitch_4d
        0x2eef76 -> :sswitch_42
        0x687c983 -> :sswitch_37
        0x6bdcc29 -> :sswitch_2c
        0x5c13d641 -> :sswitch_21
        0x77c62f43 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_15a
    .packed-switch 0x0
        :pswitch_137
        :pswitch_10c
        :pswitch_f2
        :pswitch_d8
        :pswitch_ad
        :pswitch_84
        :pswitch_69
    .end packed-switch
.end method

.method private setTheme(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 5

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->transparentStatus:Ljava/lang/Boolean;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->appSettings:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->dialog:Ljava/lang/Boolean;

    invoke-direct {p0, p2}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getThemeStyleName(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->styleTheme:I

    const p1, 0x7f04010a

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getColorFromAttr(I)I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->colorListTxt:I

    return-void
.end method


# virtual methods
.method public getColorFromAttr(I)I
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->styleTheme:I

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method public getTheme()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->context:Landroid/content/Context;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->styleTheme:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method
