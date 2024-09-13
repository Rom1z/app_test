.class public Lorg/apache/commons/text/StrSubstitutor;
.super Ljava/lang/Object;
.source "StrSubstitutor.java"


# static fields
.field public static final DEFAULT_ESCAPE:C = '$'

.field public static final DEFAULT_PREFIX:Lorg/apache/commons/text/StrMatcher;

.field public static final DEFAULT_SUFFIX:Lorg/apache/commons/text/StrMatcher;

.field public static final DEFAULT_VALUE_DELIMITER:Lorg/apache/commons/text/StrMatcher;


# instance fields
.field private enableSubstitutionInVariables:Z

.field private escapeChar:C

.field private prefixMatcher:Lorg/apache/commons/text/StrMatcher;

.field private preserveEscapes:Z

.field private suffixMatcher:Lorg/apache/commons/text/StrMatcher;

.field private valueDelimiterMatcher:Lorg/apache/commons/text/StrMatcher;

.field private variableResolver:Lorg/apache/commons/text/StrLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/text/StrLookup<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "${"

    invoke-static {v0}, Lorg/apache/commons/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/text/StrMatcher;

    const-string v0, "}"

    invoke-static {v0}, Lorg/apache/commons/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/text/StrMatcher;

    const-string v0, ":-"

    invoke-static {v0}, Lorg/apache/commons/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/text/StrSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/apache/commons/text/StrMatcher;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v0, 0x0

    check-cast v0, Lorg/apache/commons/text/StrLookup;

    sget-object v1, Lorg/apache/commons/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/text/StrMatcher;

    sget-object v2, Lorg/apache/commons/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/text/StrMatcher;

    const/16 v3, 0x24

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/text/StrSubstitutor;-><init>(Lorg/apache/commons/text/StrLookup;Lorg/apache/commons/text/StrMatcher;Lorg/apache/commons/text/StrMatcher;C)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/text/StrLookup;

    move-result-object p1

    sget-object v0, Lorg/apache/commons/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/text/StrMatcher;

    sget-object v1, Lorg/apache/commons/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/text/StrMatcher;

    const/16 v2, 0x24

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/commons/text/StrSubstitutor;-><init>(Lorg/apache/commons/text/StrLookup;Lorg/apache/commons/text/StrMatcher;Lorg/apache/commons/text/StrMatcher;C)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/text/StrLookup;

    move-result-object p1

    const/16 v0, 0x24

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/text/StrSubstitutor;-><init>(Lorg/apache/commons/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;C)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/text/StrLookup;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/text/StrSubstitutor;-><init>(Lorg/apache/commons/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/text/StrLookup;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/text/StrSubstitutor;-><init>(Lorg/apache/commons/text/StrLookup;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/text/StrLookup;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/text/StrLookup<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/text/StrMatcher;

    sget-object v1, Lorg/apache/commons/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/text/StrMatcher;

    const/16 v2, 0x24

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/commons/text/StrSubstitutor;-><init>(Lorg/apache/commons/text/StrLookup;Lorg/apache/commons/text/StrMatcher;Lorg/apache/commons/text/StrMatcher;C)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/text/StrLookup<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/text/StrSubstitutor;->preserveEscapes:Z

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrSubstitutor;->setVariableResolver(Lorg/apache/commons/text/StrLookup;)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StrSubstitutor;->setVariablePrefix(Ljava/lang/String;)Lorg/apache/commons/text/StrSubstitutor;

    invoke-virtual {p0, p3}, Lorg/apache/commons/text/StrSubstitutor;->setVariableSuffix(Ljava/lang/String;)Lorg/apache/commons/text/StrSubstitutor;

    invoke-virtual {p0, p4}, Lorg/apache/commons/text/StrSubstitutor;->setEscapeChar(C)V

    sget-object p1, Lorg/apache/commons/text/StrSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/apache/commons/text/StrMatcher;

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrSubstitutor;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/text/StrLookup;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/text/StrLookup<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/text/StrSubstitutor;->preserveEscapes:Z

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrSubstitutor;->setVariableResolver(Lorg/apache/commons/text/StrLookup;)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StrSubstitutor;->setVariablePrefix(Ljava/lang/String;)Lorg/apache/commons/text/StrSubstitutor;

    invoke-virtual {p0, p3}, Lorg/apache/commons/text/StrSubstitutor;->setVariableSuffix(Ljava/lang/String;)Lorg/apache/commons/text/StrSubstitutor;

    invoke-virtual {p0, p4}, Lorg/apache/commons/text/StrSubstitutor;->setEscapeChar(C)V

    invoke-virtual {p0, p5}, Lorg/apache/commons/text/StrSubstitutor;->setValueDelimiter(Ljava/lang/String;)Lorg/apache/commons/text/StrSubstitutor;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/text/StrLookup;Lorg/apache/commons/text/StrMatcher;Lorg/apache/commons/text/StrMatcher;C)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/text/StrLookup<",
            "*>;",
            "Lorg/apache/commons/text/StrMatcher;",
            "Lorg/apache/commons/text/StrMatcher;",
            "C)V"
        }
    .end annotation

    sget-object v5, Lorg/apache/commons/text/StrSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/apache/commons/text/StrMatcher;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/text/StrSubstitutor;-><init>(Lorg/apache/commons/text/StrLookup;Lorg/apache/commons/text/StrMatcher;Lorg/apache/commons/text/StrMatcher;CLorg/apache/commons/text/StrMatcher;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/text/StrLookup;Lorg/apache/commons/text/StrMatcher;Lorg/apache/commons/text/StrMatcher;CLorg/apache/commons/text/StrMatcher;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/text/StrLookup<",
            "*>;",
            "Lorg/apache/commons/text/StrMatcher;",
            "Lorg/apache/commons/text/StrMatcher;",
            "C",
            "Lorg/apache/commons/text/StrMatcher;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/text/StrSubstitutor;->preserveEscapes:Z

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrSubstitutor;->setVariableResolver(Lorg/apache/commons/text/StrLookup;)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrSubstitutor;

    invoke-virtual {p0, p3}, Lorg/apache/commons/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrSubstitutor;

    invoke-virtual {p0, p4}, Lorg/apache/commons/text/StrSubstitutor;->setEscapeChar(C)V

    invoke-virtual {p0, p5}, Lorg/apache/commons/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrSubstitutor;

    return-void
.end method

.method private checkCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    new-instance p1, Lorg/apache/commons/text/StrBuilder;

    const/16 v0, 0x100

    invoke-direct {p1, v0}, Lorg/apache/commons/text/StrBuilder;-><init>(I)V

    const-string v0, "Infinite loop in property interpolation of "

    invoke-virtual {p1, v0}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    const-string v0, "->"

    invoke-virtual {p1, p2, v0}, Lorg/apache/commons/text/StrBuilder;->appendWithSeparators(Ljava/lang/Iterable;Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/text/StrSubstitutor;

    invoke-direct {v0, p1}, Lorg/apache/commons/text/StrSubstitutor;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/text/StrSubstitutor;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/text/StrSubstitutor;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Properties;)Ljava/lang/String;
    .registers 6

    if-nez p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_24
    invoke-static {p0, v0}, Lorg/apache/commons/text/StrSubstitutor;->replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceSystemProperties(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    new-instance v0, Lorg/apache/commons/text/StrSubstitutor;

    invoke-static {}, Lorg/apache/commons/text/StrLookup;->systemPropertiesLookup()Lorg/apache/commons/text/StrLookup;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/text/StrSubstitutor;-><init>(Lorg/apache/commons/text/StrLookup;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private substitute(Lorg/apache/commons/text/StrBuilder;IILjava/util/List;)I
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/text/StrBuilder;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/text/StrSubstitutor;->getVariablePrefixMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/text/StrSubstitutor;->getVariableSuffixMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/text/StrSubstitutor;->getEscapeChar()C

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/text/StrSubstitutor;->getValueDelimiterMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/text/StrSubstitutor;->isEnableSubstitutionInVariables()Z

    move-result v8

    if-nez p4, :cond_20

    const/4 v11, 0x1

    goto :goto_21

    :cond_20
    const/4 v11, 0x0

    :goto_21
    iget-object v12, v1, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    add-int v13, v2, v3

    move v15, v2

    move v14, v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v12

    move-object/from16 v12, p4

    :goto_2e
    if-ge v15, v14, :cond_147

    invoke-virtual {v4, v13, v15, v2, v14}, Lorg/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v18

    if-nez v18, :cond_42

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v11

    const/4 v6, 0x1

    const/4 v11, 0x0

    goto/16 :goto_13f

    :cond_42
    if-le v15, v2, :cond_67

    add-int/lit8 v10, v15, -0x1

    aget-char v9, v13, v10

    if-ne v9, v6, :cond_67

    iget-boolean v9, v0, Lorg/apache/commons/text/StrSubstitutor;->preserveEscapes:Z

    if-eqz v9, :cond_51

    add-int/lit8 v15, v15, 0x1

    goto :goto_2e

    :cond_51
    invoke-virtual {v1, v10}, Lorg/apache/commons/text/StrBuilder;->deleteCharAt(I)Lorg/apache/commons/text/StrBuilder;

    iget-object v9, v1, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    add-int/lit8 v16, v16, -0x1

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v21, v5

    move/from16 v22, v6

    move-object v13, v9

    move/from16 v23, v11

    const/4 v6, 0x1

    const/4 v11, 0x0

    const/16 v17, 0x1

    goto/16 :goto_13f

    :cond_67
    add-int v9, v15, v18

    move v10, v9

    const/16 v19, 0x0

    :goto_6c
    if-ge v10, v14, :cond_136

    if-eqz v8, :cond_7f

    invoke-virtual {v4, v13, v10, v2, v14}, Lorg/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v20

    if-eqz v20, :cond_7f

    invoke-virtual {v4, v13, v10, v2, v14}, Lorg/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v20

    add-int/lit8 v19, v19, 0x1

    add-int v10, v10, v20

    goto :goto_6c

    :cond_7f
    invoke-virtual {v5, v13, v10, v2, v14}, Lorg/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v20

    if-nez v20, :cond_88

    add-int/lit8 v10, v10, 0x1

    goto :goto_6c

    :cond_88
    if-nez v19, :cond_124

    move-object/from16 v21, v5

    new-instance v5, Ljava/lang/String;

    sub-int v19, v10, v15

    move/from16 v22, v6

    sub-int v6, v19, v18

    invoke-direct {v5, v13, v9, v6}, Ljava/lang/String;-><init>([CII)V

    if-eqz v8, :cond_aa

    new-instance v6, Lorg/apache/commons/text/StrBuilder;

    invoke-direct {v6, v5}, Lorg/apache/commons/text/StrBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v5

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v9, v5}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    invoke-virtual {v6}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_aa
    add-int v10, v10, v20

    if-eqz v7, :cond_dd

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    move/from16 v23, v11

    const/4 v6, 0x0

    :goto_b5
    array-length v11, v9

    if-ge v6, v11, :cond_df

    if-nez v8, :cond_c2

    array-length v11, v9

    invoke-virtual {v4, v9, v6, v6, v11}, Lorg/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v11

    if-eqz v11, :cond_c2

    goto :goto_df

    :cond_c2
    invoke-virtual {v7, v9, v6}, Lorg/apache/commons/text/StrMatcher;->isMatch([CI)I

    move-result v11

    if-eqz v11, :cond_d9

    invoke-virtual {v7, v9, v6}, Lorg/apache/commons/text/StrMatcher;->isMatch([CI)I

    move-result v9

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    add-int/2addr v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v5, v18

    goto :goto_e1

    :cond_d9
    const/4 v11, 0x0

    add-int/lit8 v6, v6, 0x1

    goto :goto_b5

    :cond_dd
    move/from16 v23, v11

    :cond_df
    :goto_df
    const/4 v11, 0x0

    const/4 v6, 0x0

    :goto_e1
    if-nez v12, :cond_f0

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v13, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f0
    invoke-direct {v0, v5, v12}, Lorg/apache/commons/text/StrSubstitutor;->checkCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5, v1, v15, v10}, Lorg/apache/commons/text/StrSubstitutor;->resolveVariable(Ljava/lang/String;Lorg/apache/commons/text/StrBuilder;II)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_fd

    goto :goto_fe

    :cond_fd
    move-object v6, v5

    :goto_fe
    if-eqz v6, :cond_119

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v15, v10, v6}, Lorg/apache/commons/text/StrBuilder;->replace(IILjava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    invoke-direct {v0, v1, v15, v5, v12}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;IILjava/util/List;)I

    move-result v6

    add-int/2addr v6, v5

    sub-int v5, v10, v15

    sub-int/2addr v6, v5

    add-int/2addr v10, v6

    add-int/2addr v14, v6

    add-int v16, v16, v6

    iget-object v13, v1, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    move v15, v10

    const/16 v17, 0x1

    goto :goto_11a

    :cond_119
    move v15, v10

    :goto_11a
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v12, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_13f

    :cond_124
    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v11

    const/4 v6, 0x1

    const/4 v11, 0x0

    add-int/lit8 v19, v19, -0x1

    add-int v10, v10, v20

    move/from16 v6, v22

    move/from16 v11, v23

    goto/16 :goto_6c

    :cond_136
    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v11

    const/4 v6, 0x1

    const/4 v11, 0x0

    move v15, v10

    :goto_13f
    move-object/from16 v5, v21

    move/from16 v6, v22

    move/from16 v11, v23

    goto/16 :goto_2e

    :cond_147
    move/from16 v23, v11

    if-eqz v23, :cond_14c

    return v17

    :cond_14c
    return v16
.end method


# virtual methods
.method public getEscapeChar()C
    .registers 2

    iget-char v0, p0, Lorg/apache/commons/text/StrSubstitutor;->escapeChar:C

    return v0
.end method

.method public getValueDelimiterMatcher()Lorg/apache/commons/text/StrMatcher;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/text/StrSubstitutor;->valueDelimiterMatcher:Lorg/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public getVariablePrefixMatcher()Lorg/apache/commons/text/StrMatcher;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/text/StrSubstitutor;->prefixMatcher:Lorg/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public getVariableResolver()Lorg/apache/commons/text/StrLookup;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/text/StrLookup<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/text/StrSubstitutor;->variableResolver:Lorg/apache/commons/text/StrLookup;

    return-object v0
.end method

.method public getVariableSuffixMatcher()Lorg/apache/commons/text/StrMatcher;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/text/StrSubstitutor;->suffixMatcher:Lorg/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public isEnableSubstitutionInVariables()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/text/StrSubstitutor;->enableSubstitutionInVariables:Z

    return v0
.end method

.method public isPreserveEscapes()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/text/StrSubstitutor;->preserveEscapes:Z

    return v0
.end method

.method public replace(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/text/StrSubstitutor;->replace(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public replace(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance v0, Lorg/apache/commons/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/CharSequence;II)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public replace(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance v0, Lorg/apache/commons/text/StrBuilder;

    invoke-direct {v0}, Lorg/apache/commons/text/StrBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance v0, Lorg/apache/commons/text/StrBuilder;

    invoke-direct {v0, p1}, Lorg/apache/commons/text/StrBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    move-result v1

    if-nez v1, :cond_15

    return-object p1

    :cond_15
    invoke-virtual {v0}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public replace(Ljava/lang/String;II)Ljava/lang/String;
    .registers 6

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance v0, Lorg/apache/commons/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/text/StrBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    move-result v1

    if-nez v1, :cond_1a

    add-int/2addr p3, p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1a
    invoke-virtual {v0}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public replace(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance v0, Lorg/apache/commons/text/StrBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuffer;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public replace(Ljava/lang/StringBuffer;II)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance v0, Lorg/apache/commons/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lorg/apache/commons/text/StrBuilder;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance v0, Lorg/apache/commons/text/StrBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Lorg/apache/commons/text/StrBuilder;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lorg/apache/commons/text/StrBuilder;II)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance v0, Lorg/apache/commons/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append(Lorg/apache/commons/text/StrBuilder;II)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public replace([C)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance v0, Lorg/apache/commons/text/StrBuilder;

    array-length v1, p1

    invoke-direct {v0, v1}, Lorg/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/text/StrBuilder;->append([C)Lorg/apache/commons/text/StrBuilder;

    move-result-object v0

    const/4 v1, 0x0

    array-length p1, p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    invoke-virtual {v0}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public replace([CII)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance v0, Lorg/apache/commons/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append([CII)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public replaceIn(Ljava/lang/StringBuffer;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/text/StrSubstitutor;->replaceIn(Ljava/lang/StringBuffer;II)Z

    move-result p1

    return p1
.end method

.method public replaceIn(Ljava/lang/StringBuffer;II)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    new-instance v1, Lorg/apache/commons/text/StrBuilder;

    invoke-direct {v1, p3}, Lorg/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/text/StrBuilder;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p3}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    move-result v2

    if-nez v2, :cond_14

    return v0

    :cond_14
    add-int/2addr p3, p2

    invoke-virtual {v1}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x1

    return p1
.end method

.method public replaceIn(Ljava/lang/StringBuilder;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/text/StrSubstitutor;->replaceIn(Ljava/lang/StringBuilder;II)Z

    move-result p1

    return p1
.end method

.method public replaceIn(Ljava/lang/StringBuilder;II)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    new-instance v1, Lorg/apache/commons/text/StrBuilder;

    invoke-direct {v1, p3}, Lorg/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuilder;II)Lorg/apache/commons/text/StrBuilder;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p3}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    move-result v2

    if-nez v2, :cond_14

    return v0

    :cond_14
    add-int/2addr p3, p2

    invoke-virtual {v1}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1
.end method

.method public replaceIn(Lorg/apache/commons/text/StrBuilder;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    move-result p1

    return p1
.end method

.method public replaceIn(Lorg/apache/commons/text/StrBuilder;II)Z
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;II)Z

    move-result p1

    return p1
.end method

.method protected resolveVariable(Ljava/lang/String;Lorg/apache/commons/text/StrBuilder;II)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/text/StrSubstitutor;->getVariableResolver()Lorg/apache/commons/text/StrLookup;

    move-result-object p2

    if-nez p2, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    invoke-virtual {p2, p1}, Lorg/apache/commons/text/StrLookup;->lookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setEnableSubstitutionInVariables(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/commons/text/StrSubstitutor;->enableSubstitutionInVariables:Z

    return-void
.end method

.method public setEscapeChar(C)V
    .registers 2

    iput-char p1, p0, Lorg/apache/commons/text/StrSubstitutor;->escapeChar:C

    return-void
.end method

.method public setPreserveEscapes(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/commons/text/StrSubstitutor;->preserveEscapes:Z

    return-void
.end method

.method public setValueDelimiter(C)Lorg/apache/commons/text/StrSubstitutor;
    .registers 2

    invoke-static {p1}, Lorg/apache/commons/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/text/StrMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrSubstitutor;

    move-result-object p1

    return-object p1
.end method

.method public setValueDelimiter(Ljava/lang/String;)Lorg/apache/commons/text/StrSubstitutor;
    .registers 3

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_12

    :cond_9
    invoke-static {p1}, Lorg/apache/commons/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/text/StrMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrSubstitutor;

    move-result-object p1

    return-object p1

    :cond_12
    :goto_12
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrSubstitutor;

    return-object p0
.end method

.method public setValueDelimiterMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrSubstitutor;
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/text/StrSubstitutor;->valueDelimiterMatcher:Lorg/apache/commons/text/StrMatcher;

    return-object p0
.end method

.method public setVariablePrefix(C)Lorg/apache/commons/text/StrSubstitutor;
    .registers 2

    invoke-static {p1}, Lorg/apache/commons/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/text/StrMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrSubstitutor;

    move-result-object p1

    return-object p1
.end method

.method public setVariablePrefix(Ljava/lang/String;)Lorg/apache/commons/text/StrSubstitutor;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Variable prefix must not be null!"

    invoke-static {v1, v2, v0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/apache/commons/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/text/StrMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrSubstitutor;

    move-result-object p1

    return-object p1
.end method

.method public setVariablePrefixMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrSubstitutor;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Variable prefix matcher must not be null!"

    invoke-static {v1, v2, v0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/commons/text/StrSubstitutor;->prefixMatcher:Lorg/apache/commons/text/StrMatcher;

    return-object p0
.end method

.method public setVariableResolver(Lorg/apache/commons/text/StrLookup;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/text/StrLookup<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/commons/text/StrSubstitutor;->variableResolver:Lorg/apache/commons/text/StrLookup;

    return-void
.end method

.method public setVariableSuffix(C)Lorg/apache/commons/text/StrSubstitutor;
    .registers 2

    invoke-static {p1}, Lorg/apache/commons/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/text/StrMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrSubstitutor;

    move-result-object p1

    return-object p1
.end method

.method public setVariableSuffix(Ljava/lang/String;)Lorg/apache/commons/text/StrSubstitutor;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Variable suffix must not be null!"

    invoke-static {v1, v2, v0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/apache/commons/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/text/StrMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrSubstitutor;

    move-result-object p1

    return-object p1
.end method

.method public setVariableSuffixMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrSubstitutor;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Variable suffix matcher must not be null!"

    invoke-static {v1, v2, v0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/commons/text/StrSubstitutor;->suffixMatcher:Lorg/apache/commons/text/StrMatcher;

    return-object p0
.end method

.method protected substitute(Lorg/apache/commons/text/StrBuilder;II)Z
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/text/StrSubstitutor;->substitute(Lorg/apache/commons/text/StrBuilder;IILjava/util/List;)I

    move-result p1

    if-lez p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method
