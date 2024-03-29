.class public Lcom/facebook/react/modules/network/ProgressResponseBody;
.super Lokhttp3/ResponseBody;
.source "ProgressResponseBody.java"


# instance fields
.field private mBufferedSource:Lokio/BufferedSource;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mProgressListener:Lcom/facebook/react/modules/network/ProgressListener;

.field private final mResponseBody:Lokhttp3/ResponseBody;

.field private mTotalBytesRead:J


# direct methods
.method public constructor <init>(Lokhttp3/ResponseBody;Lcom/facebook/react/modules/network/ProgressListener;)V
    .locals 2
    .param p1, "responseBody"    # Lokhttp3/ResponseBody;
    .param p2, "progressListener"    # Lcom/facebook/react/modules/network/ProgressListener;

    .line 26
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/react/modules/network/ProgressResponseBody;->mResponseBody:Lokhttp3/ResponseBody;

    .line 28
    iput-object p2, p0, Lcom/facebook/react/modules/network/ProgressResponseBody;->mProgressListener:Lcom/facebook/react/modules/network/ProgressListener;

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/react/modules/network/ProgressResponseBody;->mTotalBytesRead:J

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/modules/network/ProgressResponseBody;)J
    .locals 2
    .param p0, "x0"    # Lcom/facebook/react/modules/network/ProgressResponseBody;

    .line 19
    iget-wide v0, p0, Lcom/facebook/react/modules/network/ProgressResponseBody;->mTotalBytesRead:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/facebook/react/modules/network/ProgressResponseBody;J)J
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/modules/network/ProgressResponseBody;
    .param p1, "x1"    # J

    .line 19
    iput-wide p1, p0, Lcom/facebook/react/modules/network/ProgressResponseBody;->mTotalBytesRead:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/facebook/react/modules/network/ProgressResponseBody;)Lokhttp3/ResponseBody;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/modules/network/ProgressResponseBody;

    .line 19
    iget-object v0, p0, Lcom/facebook/react/modules/network/ProgressResponseBody;->mResponseBody:Lokhttp3/ResponseBody;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/react/modules/network/ProgressResponseBody;)Lcom/facebook/react/modules/network/ProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/modules/network/ProgressResponseBody;

    .line 19
    iget-object v0, p0, Lcom/facebook/react/modules/network/ProgressResponseBody;->mProgressListener:Lcom/facebook/react/modules/network/ProgressListener;

    return-object v0
.end method

.method private source(Lokio/Source;)Lokio/Source;
    .locals 1
    .param p1, "source"    # Lokio/Source;

    .line 54
    new-instance v0, Lcom/facebook/react/modules/network/ProgressResponseBody$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/modules/network/ProgressResponseBody$1;-><init>(Lcom/facebook/react/modules/network/ProgressResponseBody;Lokio/Source;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/facebook/react/modules/network/ProgressResponseBody;->mResponseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/facebook/react/modules/network/ProgressResponseBody;->mResponseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/facebook/react/modules/network/ProgressResponseBody;->mBufferedSource:Lokio/BufferedSource;

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/facebook/react/modules/network/ProgressResponseBody;->mResponseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/react/modules/network/ProgressResponseBody;->source(Lokio/Source;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/modules/network/ProgressResponseBody;->mBufferedSource:Lokio/BufferedSource;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/modules/network/ProgressResponseBody;->mBufferedSource:Lokio/BufferedSource;

    return-object v0
.end method

.method public totalBytesRead()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/facebook/react/modules/network/ProgressResponseBody;->mTotalBytesRead:J

    return-wide v0
.end method
