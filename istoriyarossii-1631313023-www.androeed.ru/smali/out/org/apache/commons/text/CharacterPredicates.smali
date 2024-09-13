.class public abstract enum Lorg/apache/commons/text/CharacterPredicates;
.super Ljava/lang/Enum;
.source "CharacterPredicates.java"

# interfaces
.implements Lorg/apache/commons/text/CharacterPredicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/text/CharacterPredicates;",
        ">;",
        "Lorg/apache/commons/text/CharacterPredicate;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/text/CharacterPredicates;

.field public static final enum DIGITS:Lorg/apache/commons/text/CharacterPredicates;

.field public static final enum LETTERS:Lorg/apache/commons/text/CharacterPredicates;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lorg/apache/commons/text/CharacterPredicates$1;

    const-string v1, "LETTERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/text/CharacterPredicates$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/text/CharacterPredicates;->LETTERS:Lorg/apache/commons/text/CharacterPredicates;

    new-instance v1, Lorg/apache/commons/text/CharacterPredicates$2;

    const-string v3, "DIGITS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/text/CharacterPredicates$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/text/CharacterPredicates;->DIGITS:Lorg/apache/commons/text/CharacterPredicates;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/commons/text/CharacterPredicates;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/apache/commons/text/CharacterPredicates;->$VALUES:[Lorg/apache/commons/text/CharacterPredicates;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/apache/commons/text/CharacterPredicates$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/text/CharacterPredicates;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/text/CharacterPredicates;
    .registers 2

    const-class v0, Lorg/apache/commons/text/CharacterPredicates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/text/CharacterPredicates;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/text/CharacterPredicates;
    .registers 1

    sget-object v0, Lorg/apache/commons/text/CharacterPredicates;->$VALUES:[Lorg/apache/commons/text/CharacterPredicates;

    invoke-virtual {v0}, [Lorg/apache/commons/text/CharacterPredicates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/text/CharacterPredicates;

    return-object v0
.end method
