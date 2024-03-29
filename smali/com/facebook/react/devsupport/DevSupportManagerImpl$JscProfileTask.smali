.class Lcom/facebook/react/devsupport/DevSupportManagerImpl$JscProfileTask;
.super Landroid/os/AsyncTask;
.source "DevSupportManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/devsupport/DevSupportManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JscProfileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final JSON:Lokhttp3/MediaType;


# instance fields
.field private final mSourceUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 154
    nop

    .line 155
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$JscProfileTask;->JSON:Lokhttp3/MediaType;

    .line 154
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceUrl"    # Ljava/lang/String;

    .line 159
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$JscProfileTask;->mSourceUrl:Ljava/lang/String;

    .line 161
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/facebook/react/devsupport/DevSupportManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/facebook/react/devsupport/DevSupportManagerImpl$1;

    .line 153
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$JscProfileTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 153
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$JscProfileTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 9
    .param p1, "jsonData"    # [Ljava/lang/String;

    .line 166
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$JscProfileTask;->mSourceUrl:Ljava/lang/String;

    .line 167
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "/jsc-profile"

    .line 168
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 169
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "jscProfileUrl":Ljava/lang/String;
    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    .line 173
    .local v2, "client":Lokhttp3/OkHttpClient;
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, p1, v4

    .line 174
    .local v5, "json":Ljava/lang/String;
    sget-object v6, Lcom/facebook/react/devsupport/DevSupportManagerImpl$JscProfileTask;->JSON:Lokhttp3/MediaType;

    invoke-static {v6, v5}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v6

    .line 175
    .local v6, "body":Lokhttp3/RequestBody;
    new-instance v7, Lokhttp3/Request$Builder;

    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    .line 176
    invoke-virtual {v7, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v7

    .line 177
    .local v7, "request":Lokhttp3/Request;
    invoke-virtual {v2, v7}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v8

    invoke-interface {v8}, Lokhttp3/Call;->execute()Lokhttp3/Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    nop

    .end local v5    # "json":Ljava/lang/String;
    .end local v6    # "body":Lokhttp3/RequestBody;
    .end local v7    # "request":Lokhttp3/Request;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 181
    .end local v1    # "jscProfileUrl":Ljava/lang/String;
    .end local v2    # "client":Lokhttp3/OkHttpClient;
    :cond_0
    goto :goto_1

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "ReactNative"

    const-string v3, "Failed not talk to server"

    invoke-static {v2, v3, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-object v0
.end method
