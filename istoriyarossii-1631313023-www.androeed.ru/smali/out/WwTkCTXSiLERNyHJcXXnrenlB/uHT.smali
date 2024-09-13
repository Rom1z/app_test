.class public LWwTkCTXSiLERNyHJcXXnrenlB/uHT;
.super Ljava/lang/Object;


# static fields
.field private static myAppContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, LWwTkCTXSiLERNyHJcXXnrenlB/uHT;->myAppContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static QiYVFNcWFCKkKeQXxsEBNuGjjsIjgEaOzruVrqpsgEQTaDSF()Ljava/lang/String;
    .registers 5

    const-string v0, ""

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    mul-double v1, v1, v3

    double-to-int v1, v1

    packed-switch v1, :pswitch_data_1e

    goto :goto_19

    :pswitch_f
    const-string v0, "0JXRidGRINC40LPRgNGL"

    :pswitch_11
    const-string v0, "0JXRidGRINC80L7QtNGL"

    :pswitch_13
    const-string v0, "0JrQsNGC0LDQu9C+0LMg0LjQs9GA"

    :pswitch_15
    const-string v0, "0J3QsNGI0Lgg0LjQs9GA0Ys="

    :pswitch_17
    const-string v0, "0J3QsNGI0Lgg0LzQvtC00Ys="

    :goto_19
    invoke-static {v0}, LWwTkCTXSiLERNyHJcXXnrenlB/uHT;->QiYVFNcWFCKkKeQXxsEBNuGjjsIjgEaOzruVrqpsgEQTaDSF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_f
        :pswitch_11
        :pswitch_13
        :pswitch_15
        :pswitch_17
    .end packed-switch
.end method

.method public static QiYVFNcWFCKkKeQXxsEBNuGjjsIjgEaOzruVrqpsgEQTaDSF(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static QiYVFNcWFCKkKeQXxsEBNuGjjsIjgEaOzruVrqpsgEQTaDSF(Landroid/content/Context;)V
    .registers 9

    const-string v0, "androeed"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "nya"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f5

    const-string v0, "androeed"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "first"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e7

    const-string v0, "androeed"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "first"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    :try_start_2e
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "Y29uZmlnLmJpbi5ieXRlcw"

    invoke-static {v4}, LWwTkCTXSiLERNyHJcXXnrenlB/uHT;->QiYVFNcWFCKkKeQXxsEBNuGjjsIjgEaOzruVrqpsgEQTaDSF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const-string v3, "#000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const/4 v1, 0x0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v3, v7, :cond_72

    const v1, 0x103023a

    goto :goto_7b

    :cond_72
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v3, v7, :cond_7b

    const v1, 0x3

    :cond_7b
    :goto_7b
    if-nez v1, :cond_83

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_88

    :cond_83
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_88
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const-string v1, "ru"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b5

    const-string v1, "ua"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b5

    const-string v1, "Cl\u043ese"

    goto :goto_b7

    :cond_b5
    const-string v1, "\u0417\u0430\u043a\u0440\u044b\u0442\u044c"

    :goto_b7
    invoke-static {}, LWwTkCTXSiLERNyHJcXXnrenlB/uHT;->QiYVFNcWFCKkKeQXxsEBNuGjjsIjgEaOzruVrqpsgEQTaDSF()Ljava/lang/String;

    move-result-object v6

    new-instance v7, LWwTkCTXSiLERNyHJcXXnrenlB/uHT$1;

    invoke-direct {v7, p0}, LWwTkCTXSiLERNyHJcXXnrenlB/uHT$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4, v6, v7}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v6, LWwTkCTXSiLERNyHJcXXnrenlB/uHT$2;

    invoke-direct {v6, p0}, LWwTkCTXSiLERNyHJcXXnrenlB/uHT$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5, v1, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_f5

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    invoke-static {v5}, LWwTkCTXSiLERNyHJcXXnrenlB/uHT;->QiYVFNcWFCKkKeQXxsEBNuGjjsIjgEaOzruVrqpsgEQTaDSF(Landroid/widget/Button;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-static {v4}, LWwTkCTXSiLERNyHJcXXnrenlB/uHT;->QiYVFNcWFCKkKeQXxsEBNuGjjsIjgEaOzruVrqpsgEQTaDSF(Landroid/widget/Button;)V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_e2} :catch_e3

    goto :goto_f5

    :catch_e3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e7
    const/4 v1, 0x0

    const-string v0, "d3d3LmFuZHJv0LVlZC5ydQ=="

    invoke-static {v0}, LWwTkCTXSiLERNyHJcXXnrenlB/uHT;->QiYVFNcWFCKkKeQXxsEBNuGjjsIjgEaOzruVrqpsgEQTaDSF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_f5
    :goto_f5
    return-void
.end method

.method private static QiYVFNcWFCKkKeQXxsEBNuGjjsIjgEaOzruVrqpsgEQTaDSF(Landroid/widget/Button;)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
