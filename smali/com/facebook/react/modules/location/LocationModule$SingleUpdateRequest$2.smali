.class Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest$2;
.super Ljava/lang/Object;
.source "LocationModule.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;


# direct methods
.method constructor <init>(Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;

    .line 273
    iput-object p1, p0, Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest$2;->this$0:Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .line 276
    iget-object v0, p0, Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest$2;->this$0:Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;

    monitor-enter v0

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest$2;->this$0:Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;

    invoke-static {v1}, Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;->access$900(Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest$2;->this$0:Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;

    invoke-static {v1}, Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;->access$1300(Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;)Landroid/location/Location;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;->access$1400(Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;Landroid/location/Location;Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest$2;->this$0:Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;

    invoke-static {v1}, Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;->access$1500(Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;)Lcom/facebook/react/bridge/Callback;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/facebook/react/modules/location/LocationModule;->access$000(Landroid/location/Location;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 279
    iget-object v1, p0, Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest$2;->this$0:Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;

    invoke-static {v1}, Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;->access$1700(Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest$2;->this$0:Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;

    invoke-static {v3}, Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;->access$1600(Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 280
    iget-object v1, p0, Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest$2;->this$0:Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;

    invoke-static {v1, v2}, Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;->access$902(Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;Z)Z

    .line 281
    iget-object v1, p0, Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest$2;->this$0:Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;

    invoke-static {v1}, Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;->access$1200(Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;)Landroid/location/LocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest$2;->this$0:Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;

    invoke-static {v2}, Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;->access$1100(Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;)Landroid/location/LocationListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest$2;->this$0:Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;

    invoke-static {v1, p1}, Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;->access$1302(Lcom/facebook/react/modules/location/LocationModule$SingleUpdateRequest;Landroid/location/Location;)Landroid/location/Location;

    .line 285
    monitor-exit v0

    .line 286
    return-void

    .line 285
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 295
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 292
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 289
    return-void
.end method
