.class Landroidx/preference/PreferenceInflater;
.super Ljava/lang/Object;
.source "PreferenceInflater.java"


# static fields
.field private static final CONSTRUCTOR_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final EXTRA_TAG_NAME:Ljava/lang/String; = "extra"

.field private static final INTENT_TAG_NAME:Ljava/lang/String; = "intent"

.field private static final TAG:Ljava/lang/String; = "PreferenceInflater"


# instance fields
.field private final mConstructorArgs:[Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private mDefaultPackages:[Ljava/lang/String;

.field private mPreferenceManager:Landroidx/preference/PreferenceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Landroidx/preference/PreferenceInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/preference/PreferenceInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceManager;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/preference/PreferenceInflater;->mConstructorArgs:[Ljava/lang/Object;

    iput-object p1, p0, Landroidx/preference/PreferenceInflater;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroidx/preference/PreferenceInflater;->init(Landroidx/preference/PreferenceManager;)V

    return-void
.end method

.method private createItem(Ljava/lang/String;[Ljava/lang/String;Landroid/util/AttributeSet;)Landroidx/preference/Preference;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    sget-object v0, Landroidx/preference/PreferenceInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    const-string v1, ": Error inflating class "

    const/4 v2, 0x1

    if-nez v0, :cond_6c

    :try_start_d
    iget-object v0, p0, Landroidx/preference/PreferenceInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz p2, :cond_5a

    array-length v3, p2

    if-nez v3, :cond_19

    goto :goto_5a

    :cond_19
    array-length v3, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v5

    :goto_1d
    if-ge v4, v3, :cond_39

    aget-object v7, p2, v4
    :try_end_21
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_21} :catch_97
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_21} :catch_77

    :try_start_21
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_34
    .catch Ljava/lang/ClassNotFoundException; {:try_start_21 .. :try_end_34} :catch_35
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_34} :catch_77

    goto :goto_39

    :catch_35
    move-exception v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_39
    :goto_39
    if-nez v5, :cond_5e

    if-nez v6, :cond_59

    :try_start_3d
    new-instance p2, Landroid/view/InflateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_59
    throw v6

    :cond_5a
    :goto_5a
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    :cond_5e
    sget-object p2, Landroidx/preference/PreferenceInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v5, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    sget-object p2, Landroidx/preference/PreferenceInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6c
    iget-object p2, p0, Landroidx/preference/PreferenceInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object p3, p2, v2

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/Preference;
    :try_end_76
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3d .. :try_end_76} :catch_97
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_76} :catch_77

    return-object p2

    :catch_77
    move-exception p2

    new-instance v0, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :catch_97
    move-exception p1

    throw p1
.end method

.method private createItemFromTag(Ljava/lang/String;Landroid/util/AttributeSet;)Landroidx/preference/Preference;
    .registers 6

    const/4 v0, -0x1

    const/16 v1, 0x2e

    :try_start_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v0, v1, :cond_e

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceInflater;->onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Landroidx/preference/Preference;

    move-result-object p1

    goto :goto_13

    :cond_e
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/preference/PreferenceInflater;->createItem(Ljava/lang/String;[Ljava/lang/String;Landroid/util/AttributeSet;)Landroidx/preference/Preference;

    move-result-object p1
    :try_end_13
    .catch Landroid/view/InflateException; {:try_start_3 .. :try_end_13} :catch_58
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_13} :catch_36
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_14

    :goto_13
    return-object p1

    :catch_14
    move-exception v0

    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": Error inflating class "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :catch_36
    move-exception v0

    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": Error inflating class (not found)"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :catch_58
    move-exception p1

    throw p1
.end method

.method private init(Landroidx/preference/PreferenceManager;)V
    .registers 5

    iput-object p1, p0, Landroidx/preference/PreferenceInflater;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroidx/preference/Preference;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p1, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroidx/preference/SwitchPreference;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceInflater;->setDefaultPackages([Ljava/lang/String;)V

    return-void
.end method

.method private onMergeRoots(Landroidx/preference/PreferenceGroup;Landroidx/preference/PreferenceGroup;)Landroidx/preference/PreferenceGroup;
    .registers 3

    if-nez p1, :cond_8

    iget-object p1, p0, Landroidx/preference/PreferenceInflater;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    return-object p2

    :cond_8
    return-object p1
.end method

.method private rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_11

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_73

    :cond_11
    const/4 v2, 0x1

    if-eq v1, v2, :cond_73

    const/4 v2, 0x2

    if-eq v1, v2, :cond_18

    goto :goto_4

    :cond_18
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Error parsing preference"

    if-eqz v2, :cond_40

    :try_start_26
    invoke-virtual {p0}, Landroidx/preference/PreferenceInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, p3}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v1
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_32} :catch_36

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_4

    :catch_36
    move-exception p1

    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {p2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2

    :cond_40
    const-string v2, "extra"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-virtual {p0}, Landroidx/preference/PreferenceInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v2, p3, v4}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :try_start_57
    invoke-static {p1}, Landroidx/preference/PreferenceInflater;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_4

    :catch_5b
    move-exception p1

    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {p2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2

    :cond_65
    invoke-direct {p0, v1, p3}, Landroidx/preference/PreferenceInflater;->createItemFromTag(Ljava/lang/String;Landroid/util/AttributeSet;)Landroidx/preference/Preference;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addItemFromInflater(Landroidx/preference/Preference;)V

    invoke-direct {p0, p1, v1, p3}, Landroidx/preference/PreferenceInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    goto :goto_4

    :cond_73
    return-void
.end method

.method private static skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_14

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-gt v1, v0, :cond_4

    :cond_14
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroidx/preference/PreferenceInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultPackages()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroidx/preference/PreferenceInflater;->mDefaultPackages:[Ljava/lang/String;

    return-object v0
.end method

.method public inflate(ILandroidx/preference/PreferenceGroup;)Landroidx/preference/Preference;
    .registers 4

    invoke-virtual {p0}, Landroidx/preference/PreferenceInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    :try_start_c
    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroidx/preference/PreferenceGroup;)Landroidx/preference/Preference;

    move-result-object p2
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_14

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    return-object p2

    :catchall_14
    move-exception p2

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    throw p2
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroidx/preference/PreferenceGroup;)Landroidx/preference/Preference;
    .registers 8

    iget-object v0, p0, Landroidx/preference/PreferenceInflater;->mConstructorArgs:[Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/PreferenceInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/preference/PreferenceInflater;->mContext:Landroid/content/Context;

    aput-object v4, v2, v3
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_7e

    :cond_e
    :try_start_e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_18

    const/4 v4, 0x1

    if-ne v2, v4, :cond_e

    :cond_18
    if-ne v2, v3, :cond_2d

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Landroidx/preference/PreferenceInflater;->createItemFromTag(Ljava/lang/String;Landroid/util/AttributeSet;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceGroup;

    invoke-direct {p0, p2, v2}, Landroidx/preference/PreferenceInflater;->onMergeRoots(Landroidx/preference/PreferenceGroup;Landroidx/preference/PreferenceGroup;)Landroidx/preference/PreferenceGroup;

    move-result-object p2

    invoke-direct {p0, p1, p2, v1}, Landroidx/preference/PreferenceInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V
    :try_end_2b
    .catch Landroid/view/InflateException; {:try_start_e .. :try_end_2b} :catch_7c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_2b} :catch_6e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2b} :catch_48
    .catchall {:try_start_e .. :try_end_2b} :catchall_7e

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_7e

    return-object p2

    :cond_2d
    :try_start_2d
    new-instance p2, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": No start tag found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_48
    .catch Landroid/view/InflateException; {:try_start_2d .. :try_end_48} :catch_7c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2d .. :try_end_48} :catch_6e
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_48} :catch_48
    .catchall {:try_start_2d .. :try_end_48} :catchall_7e

    :catch_48
    move-exception p2

    :try_start_49
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :catch_6e
    move-exception p1

    new-instance p2, Landroid/view/InflateException;

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2

    :catch_7c
    move-exception p1

    throw p1

    :catchall_7e
    move-exception p1

    monitor-exit v0
    :try_end_80
    .catchall {:try_start_49 .. :try_end_80} :catchall_7e

    throw p1
.end method

.method protected onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Landroidx/preference/Preference;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/preference/PreferenceInflater;->mDefaultPackages:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Landroidx/preference/PreferenceInflater;->createItem(Ljava/lang/String;[Ljava/lang/String;Landroid/util/AttributeSet;)Landroidx/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultPackages([Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroidx/preference/PreferenceInflater;->mDefaultPackages:[Ljava/lang/String;

    return-void
.end method
