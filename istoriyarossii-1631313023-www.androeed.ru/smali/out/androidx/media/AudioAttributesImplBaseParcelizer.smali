.class public final Landroidx/media/AudioAttributesImplBaseParcelizer;
.super Ljava/lang/Object;
.source "AudioAttributesImplBaseParcelizer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media/AudioAttributesImplBase;
    .registers 4

    new-instance v0, Landroidx/media/AudioAttributesImplBase;

    invoke-direct {v0}, Landroidx/media/AudioAttributesImplBase;-><init>()V

    iget v1, v0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v1

    iput v1, v0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    iget v1, v0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v1

    iput v1, v0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    iget v1, v0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v1

    iput v1, v0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    iget v1, v0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result p0

    iput p0, v0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    return-object v0
.end method

.method public static write(Landroidx/media/AudioAttributesImplBase;Landroidx/versionedparcelable/VersionedParcel;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    iget p0, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    return-void
.end method
