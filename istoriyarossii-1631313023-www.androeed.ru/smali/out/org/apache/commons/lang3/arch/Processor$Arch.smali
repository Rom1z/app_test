.class public final enum Lorg/apache/commons/lang3/arch/Processor$Arch;
.super Ljava/lang/Enum;
.source "Processor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/arch/Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Arch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/lang3/arch/Processor$Arch;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/lang3/arch/Processor$Arch;

.field public static final enum BIT_32:Lorg/apache/commons/lang3/arch/Processor$Arch;

.field public static final enum BIT_64:Lorg/apache/commons/lang3/arch/Processor$Arch;

.field public static final enum UNKNOWN:Lorg/apache/commons/lang3/arch/Processor$Arch;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lorg/apache/commons/lang3/arch/Processor$Arch;

    const-string v1, "BIT_32"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor$Arch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_32:Lorg/apache/commons/lang3/arch/Processor$Arch;

    new-instance v1, Lorg/apache/commons/lang3/arch/Processor$Arch;

    const-string v3, "BIT_64"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/lang3/arch/Processor$Arch;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_64:Lorg/apache/commons/lang3/arch/Processor$Arch;

    new-instance v3, Lorg/apache/commons/lang3/arch/Processor$Arch;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/commons/lang3/arch/Processor$Arch;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/lang3/arch/Processor$Arch;->UNKNOWN:Lorg/apache/commons/lang3/arch/Processor$Arch;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/commons/lang3/arch/Processor$Arch;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/apache/commons/lang3/arch/Processor$Arch;->$VALUES:[Lorg/apache/commons/lang3/arch/Processor$Arch;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/lang3/arch/Processor$Arch;
    .registers 2

    const-class v0, Lorg/apache/commons/lang3/arch/Processor$Arch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/lang3/arch/Processor$Arch;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/lang3/arch/Processor$Arch;
    .registers 1

    sget-object v0, Lorg/apache/commons/lang3/arch/Processor$Arch;->$VALUES:[Lorg/apache/commons/lang3/arch/Processor$Arch;

    invoke-virtual {v0}, [Lorg/apache/commons/lang3/arch/Processor$Arch;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/lang3/arch/Processor$Arch;

    return-object v0
.end method
