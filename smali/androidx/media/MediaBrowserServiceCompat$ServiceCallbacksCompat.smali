.class Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceCallbacksCompat"
.end annotation


# instance fields
.field final mCallbacks:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "callbacks"    # Landroid/os/Messenger;

    .line 1102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1103
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;->mCallbacks:Landroid/os/Messenger;

    .line 1104
    return-void
.end method

.method private sendRequest(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1145
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1146
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1147
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1148
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1149
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;->mCallbacks:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 1150
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1108
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;->mCallbacks:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onConnect(Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "root"    # Ljava/lang/String;
    .param p2, "session"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1114
    if-nez p3, :cond_0

    .line 1115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p3, v0

    .line 1117
    :cond_0
    const-string v0, "extra_service_version"

    const/4 v1, 0x2

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1119
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "data_media_item_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    const-string v1, "data_media_session_token"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1121
    const-string v1, "data_root_hints"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1122
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;->sendRequest(ILandroid/os/Bundle;)V

    .line 1123
    return-void
.end method

.method public onConnectFailed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1127
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;->sendRequest(ILandroid/os/Bundle;)V

    .line 1128
    return-void
.end method

.method public onLoadChildren(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "notifyChildrenChangedOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1133
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1134
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "data_media_item_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    const-string v1, "data_options"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1136
    const-string v1, "data_notify_children_changed_options"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1137
    if-eqz p2, :cond_1

    .line 1138
    instance-of v1, p2, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    const-string v2, "data_media_item_list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1141
    :cond_1
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;->sendRequest(ILandroid/os/Bundle;)V

    .line 1142
    return-void
.end method
