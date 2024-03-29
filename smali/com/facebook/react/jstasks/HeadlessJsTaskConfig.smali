.class public Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;
.super Ljava/lang/Object;
.source "HeadlessJsTaskConfig.java"


# instance fields
.field private final mAllowedInForeground:Z

.field private final mData:Lcom/facebook/react/bridge/WritableMap;

.field private final mTaskKey:Ljava/lang/String;

.field private final mTimeout:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 6
    .param p1, "taskKey"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/facebook/react/bridge/WritableMap;

    .line 25
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;JZ)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;J)V
    .locals 6
    .param p1, "taskKey"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/facebook/react/bridge/WritableMap;
    .param p3, "timeout"    # J

    .line 34
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;JZ)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;JZ)V
    .locals 0
    .param p1, "taskKey"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/facebook/react/bridge/WritableMap;
    .param p3, "timeout"    # J
    .param p5, "allowedInForeground"    # Z

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mTaskKey:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mData:Lcom/facebook/react/bridge/WritableMap;

    .line 60
    iput-wide p3, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mTimeout:J

    .line 61
    iput-boolean p5, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mAllowedInForeground:Z

    .line 62
    return-void
.end method


# virtual methods
.method getData()Lcom/facebook/react/bridge/WritableMap;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mData:Lcom/facebook/react/bridge/WritableMap;

    return-object v0
.end method

.method getTaskKey()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mTaskKey:Ljava/lang/String;

    return-object v0
.end method

.method getTimeout()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mTimeout:J

    return-wide v0
.end method

.method isAllowedInForeground()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mAllowedInForeground:Z

    return v0
.end method
