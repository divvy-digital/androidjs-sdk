.class public final Lokhttp3/internal/http/BridgeInterceptor;
.super Ljava/lang/Object;
.source "BridgeInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private final cookieJar:Lokhttp3/CookieJar;


# direct methods
.method public constructor <init>(Lokhttp3/CookieJar;)V
    .locals 0
    .param p1, "cookieJar"    # Lokhttp3/CookieJar;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Lokhttp3/CookieJar;

    .line 45
    return-void
.end method

.method private cookieHeader(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 118
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v0, "cookieHeader":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 120
    if-lez v1, :cond_0

    .line 121
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/Cookie;

    .line 124
    .local v3, "cookie":Lokhttp3/Cookie;
    invoke-virtual {v3}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lokhttp3/Cookie;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .end local v3    # "cookie":Lokhttp3/Cookie;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 14
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 49
    .local v0, "userRequest":Lokhttp3/Request;
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v1

    .line 51
    .local v1, "requestBuilder":Lokhttp3/Request$Builder;
    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v2

    .line 52
    .local v2, "body":Lokhttp3/RequestBody;
    const-string v3, "Content-Type"

    const-wide/16 v4, -0x1

    const-string v6, "Content-Length"

    if-eqz v2, :cond_2

    .line 53
    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v7

    .line 54
    .local v7, "contentType":Lokhttp3/MediaType;
    if-eqz v7, :cond_0

    .line 55
    invoke-virtual {v7}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 58
    :cond_0
    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v8

    .line 59
    .local v8, "contentLength":J
    const-string v10, "Transfer-Encoding"

    cmp-long v11, v8, v4

    if-eqz v11, :cond_1

    .line 60
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v6, v11}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 61
    invoke-virtual {v1, v10}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 63
    :cond_1
    const-string v11, "chunked"

    invoke-virtual {v1, v10, v11}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 64
    invoke-virtual {v1, v6}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 68
    .end local v7    # "contentType":Lokhttp3/MediaType;
    .end local v8    # "contentLength":J
    :cond_2
    :goto_0
    const-string v7, "Host"

    invoke-virtual {v0, v7}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    .line 69
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 72
    :cond_3
    const-string v7, "Connection"

    invoke-virtual {v0, v7}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    .line 73
    const-string v8, "Keep-Alive"

    invoke-virtual {v1, v7, v8}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 78
    :cond_4
    const/4 v7, 0x0

    .line 79
    .local v7, "transparentGzip":Z
    const-string v8, "Accept-Encoding"

    invoke-virtual {v0, v8}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "gzip"

    if-nez v9, :cond_5

    const-string v9, "Range"

    invoke-virtual {v0, v9}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    .line 80
    const/4 v7, 0x1

    .line 81
    invoke-virtual {v1, v8, v10}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 84
    :cond_5
    iget-object v8, p0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Lokhttp3/CookieJar;

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v9

    invoke-interface {v8, v9}, Lokhttp3/CookieJar;->loadForRequest(Lokhttp3/HttpUrl;)Ljava/util/List;

    move-result-object v8

    .line 85
    .local v8, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 86
    const-string v9, "Cookie"

    invoke-direct {p0, v8}, Lokhttp3/internal/http/BridgeInterceptor;->cookieHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v9, v11}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 89
    :cond_6
    const-string v9, "User-Agent"

    invoke-virtual {v0, v9}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_7

    .line 90
    invoke-static {}, Lokhttp3/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v9, v11}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 93
    :cond_7
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v9

    invoke-interface {p1, v9}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v9

    .line 95
    .local v9, "networkResponse":Lokhttp3/Response;
    iget-object v11, p0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Lokhttp3/CookieJar;

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v12

    invoke-virtual {v9}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lokhttp3/internal/http/HttpHeaders;->receiveHeaders(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V

    .line 97
    invoke-virtual {v9}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v11

    .line 98
    invoke-virtual {v11, v0}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v11

    .line 100
    .local v11, "responseBuilder":Lokhttp3/Response$Builder;
    if-eqz v7, :cond_8

    .line 101
    const-string v12, "Content-Encoding"

    invoke-virtual {v9, v12}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 102
    invoke-static {v9}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 103
    new-instance v10, Lokio/GzipSource;

    invoke-virtual {v9}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v13

    invoke-virtual {v13}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v13

    invoke-direct {v10, v13}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    .line 104
    .local v10, "responseBody":Lokio/GzipSource;
    invoke-virtual {v9}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v13

    invoke-virtual {v13}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v13

    .line 105
    invoke-virtual {v13, v12}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v12

    .line 106
    invoke-virtual {v12, v6}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v6

    .line 107
    invoke-virtual {v6}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v6

    .line 108
    .local v6, "strippedHeaders":Lokhttp3/Headers;
    invoke-virtual {v11, v6}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    .line 109
    invoke-virtual {v9, v3}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "contentType":Ljava/lang/String;
    new-instance v12, Lokhttp3/internal/http/RealResponseBody;

    invoke-static {v10}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v13

    invoke-direct {v12, v3, v4, v5, v13}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    invoke-virtual {v11, v12}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    .line 113
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v6    # "strippedHeaders":Lokhttp3/Headers;
    .end local v10    # "responseBody":Lokio/GzipSource;
    :cond_8
    invoke-virtual {v11}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v3

    return-object v3
.end method
