.class Lcom/facebook/react/modules/network/NetworkingModule$1$1;
.super Ljava/lang/Object;
.source "NetworkingModule.java"

# interfaces
.implements Lcom/facebook/react/modules/network/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/modules/network/NetworkingModule$1;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field last:J

.field final synthetic this$1:Lcom/facebook/react/modules/network/NetworkingModule$1;


# direct methods
.method constructor <init>(Lcom/facebook/react/modules/network/NetworkingModule$1;)V
    .locals 2
    .param p1, "this$1"    # Lcom/facebook/react/modules/network/NetworkingModule$1;

    .line 317
    iput-object p1, p0, Lcom/facebook/react/modules/network/NetworkingModule$1$1;->this$1:Lcom/facebook/react/modules/network/NetworkingModule$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/modules/network/NetworkingModule$1$1;->last:J

    return-void
.end method


# virtual methods
.method public onProgress(JJZ)V
    .locals 9
    .param p1, "bytesWritten"    # J
    .param p3, "contentLength"    # J
    .param p5, "done"    # Z

    .line 322
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 323
    .local v0, "now":J
    if-nez p5, :cond_0

    iget-wide v2, p0, Lcom/facebook/react/modules/network/NetworkingModule$1$1;->last:J

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/react/modules/network/NetworkingModule;->access$000(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    return-void

    .line 326
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/modules/network/NetworkingModule$1$1;->this$1:Lcom/facebook/react/modules/network/NetworkingModule$1;

    iget-object v2, v2, Lcom/facebook/react/modules/network/NetworkingModule$1;->val$responseType:Ljava/lang/String;

    const-string v3, "text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    return-void

    .line 331
    :cond_1
    iget-object v2, p0, Lcom/facebook/react/modules/network/NetworkingModule$1$1;->this$1:Lcom/facebook/react/modules/network/NetworkingModule$1;

    iget-object v3, v2, Lcom/facebook/react/modules/network/NetworkingModule$1;->val$eventEmitter:Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    iget-object v2, p0, Lcom/facebook/react/modules/network/NetworkingModule$1$1;->this$1:Lcom/facebook/react/modules/network/NetworkingModule$1;

    iget v4, v2, Lcom/facebook/react/modules/network/NetworkingModule$1;->val$requestId:I

    move-wide v5, p1

    move-wide v7, p3

    invoke-static/range {v3 .. v8}, Lcom/facebook/react/modules/network/ResponseUtil;->onDataReceivedProgress(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;IJJ)V

    .line 336
    iput-wide v0, p0, Lcom/facebook/react/modules/network/NetworkingModule$1$1;->last:J

    .line 337
    return-void
.end method
