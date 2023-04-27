.class public Lcom/facebook/react/bridge/JsonWriter;
.super Ljava/lang/Object;
.source "JsonWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/bridge/JsonWriter$Scope;
    }
.end annotation


# instance fields
.field private final mScopes:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/facebook/react/bridge/JsonWriter$Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final mWriter:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/facebook/react/bridge/JsonWriter;->mWriter:Ljava/io/Writer;

    .line 25
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/bridge/JsonWriter;->mScopes:Ljava/util/Deque;

    .line 26
    return-void
.end method

.method private beforeName()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/facebook/react/bridge/JsonWriter;->mScopes:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/JsonWriter$Scope;

    .line 131
    .local v0, "scope":Lcom/facebook/react/bridge/JsonWriter$Scope;
    sget-object v1, Lcom/facebook/react/bridge/JsonWriter$1;->$SwitchMap$com$facebook$react$bridge$JsonWriter$Scope:[I

    invoke-virtual {v0}, Lcom/facebook/react/bridge/JsonWriter$Scope;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 142
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown scope: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :pswitch_0
    iget-object v1, p0, Lcom/facebook/react/bridge/JsonWriter;->mWriter:Ljava/io/Writer;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 140
    goto :goto_0

    .line 136
    :pswitch_1
    sget-object v1, Lcom/facebook/react/bridge/JsonWriter$Scope;->OBJECT:Lcom/facebook/react/bridge/JsonWriter$Scope;

    invoke-direct {p0, v1}, Lcom/facebook/react/bridge/JsonWriter;->replace(Lcom/facebook/react/bridge/JsonWriter$Scope;)V

    .line 137
    nop

    .line 144
    :goto_0
    return-void

    .line 134
    :pswitch_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "name not allowed in array"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private beforeValue()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/facebook/react/bridge/JsonWriter;->mScopes:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/JsonWriter$Scope;

    .line 113
    .local v0, "scope":Lcom/facebook/react/bridge/JsonWriter$Scope;
    sget-object v1, Lcom/facebook/react/bridge/JsonWriter$1;->$SwitchMap$com$facebook$react$bridge$JsonWriter$Scope:[I

    invoke-virtual {v0}, Lcom/facebook/react/bridge/JsonWriter$Scope;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 125
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown scope: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :pswitch_0
    goto :goto_0

    .line 120
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/react/bridge/JsonWriter;->mWriter:Ljava/io/Writer;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 121
    goto :goto_0

    .line 118
    :pswitch_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    sget-object v2, Lcom/facebook/react/bridge/JsonWriter$Scope;->EMPTY_OBJECT:Lcom/facebook/react/bridge/JsonWriter$Scope;

    invoke-virtual {v2}, Lcom/facebook/react/bridge/JsonWriter$Scope;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :pswitch_3
    sget-object v1, Lcom/facebook/react/bridge/JsonWriter$Scope;->ARRAY:Lcom/facebook/react/bridge/JsonWriter$Scope;

    invoke-direct {p0, v1}, Lcom/facebook/react/bridge/JsonWriter;->replace(Lcom/facebook/react/bridge/JsonWriter$Scope;)V

    .line 116
    nop

    .line 127
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private close(C)V
    .locals 1
    .param p1, "bracket"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/facebook/react/bridge/JsonWriter;->mScopes:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/facebook/react/bridge/JsonWriter;->mWriter:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 154
    return-void
.end method

.method private open(Lcom/facebook/react/bridge/JsonWriter$Scope;C)V
    .locals 1
    .param p1, "scope"    # Lcom/facebook/react/bridge/JsonWriter$Scope;
    .param p2, "bracket"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/facebook/react/bridge/JsonWriter;->mScopes:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/facebook/react/bridge/JsonWriter;->mWriter:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(I)V

    .line 149
    return-void
.end method

.method private replace(Lcom/facebook/react/bridge/JsonWriter$Scope;)V
    .locals 1
    .param p1, "scope"    # Lcom/facebook/react/bridge/JsonWriter$Scope;

    .line 206
    iget-object v0, p0, Lcom/facebook/react/bridge/JsonWriter;->mScopes:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lcom/facebook/react/bridge/JsonWriter;->mScopes:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method private string(Ljava/lang/String;)V
    .locals 9
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/facebook/react/bridge/JsonWriter;->mWriter:Ljava/io/Writer;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 158
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 160
    .local v3, "c":C
    const/4 v4, 0x0

    const-string v5, "\\u%04x"

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 193
    const/16 v7, 0x1f

    if-gt v3, v7, :cond_0

    .line 194
    iget-object v7, p0, Lcom/facebook/react/bridge/JsonWriter;->mWriter:Ljava/io/Writer;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 189
    :sswitch_0
    iget-object v7, p0, Lcom/facebook/react/bridge/JsonWriter;->mWriter:Ljava/io/Writer;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 190
    goto :goto_1

    .line 183
    :sswitch_1
    iget-object v4, p0, Lcom/facebook/react/bridge/JsonWriter;->mWriter:Ljava/io/Writer;

    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    .line 184
    iget-object v4, p0, Lcom/facebook/react/bridge/JsonWriter;->mWriter:Ljava/io/Writer;

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    .line 185
    goto :goto_1

    .line 174
    :sswitch_2
    iget-object v4, p0, Lcom/facebook/react/bridge/JsonWriter;->mWriter:Ljava/io/Writer;

    const-string v5, "\\r"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 175
    goto :goto_1

    .line 178
    :sswitch_3
    iget-object v4, p0, Lcom/facebook/react/bridge/JsonWriter;->mWriter:Ljava/io/Writer;

    const-string v5, "\\f"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 179
    goto :goto_1

    .line 170
    :sswitch_4
    iget-object v4, p0, Lcom/facebook/react/bridge/JsonWriter;->mWriter:Ljava/io/Writer;

    const-string v5, "\\n"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 171
    goto :goto_1

    .line 162
    :sswitch_5
    iget-object v4, p0, Lcom/facebook/react/bridge/JsonWriter;->mWriter:Ljava/io/Writer;

    const-string v5, "\\t"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 163
    goto :goto_1

    .line 166
    :sswitch_6
    iget-object v4, p0, Lcom/facebook/react/bridge/JsonWriter;->mWriter:Ljava/io/Writer;

    const-string v5, "\\b"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 167
    goto :goto_1

    .line 196
    :cond_0
    iget-object v4, p0, Lcom/facebook/react/bridge/JsonWriter;->mWriter:Ljava/io/Writer;

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    .line 158
    .end local v3    # "c":C
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    .end local v0    # "i":I
    .end local v2    # "length":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/bridge/JsonWriter;->mWriter:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 203
    return-void

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_6
        0x9 -> :sswitch_5
        0xa -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_2
        0x22 -> :sswitch_1
        0x5c -> :sswitch_1
        0x2028 -> :sswitch_0
        0x2029 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public beginArray()Lcom/facebook/react/bridge/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/facebook/react/bridge/JsonWriter$Scope;->EMPTY_ARRAY:Lcom/facebook/react/bridge/JsonWriter$Scope;

    const/16 v1, 0x5b

    invoke-direct {p0, v0, v1}, Lcom/facebook/react/bridge/JsonWriter;->open(Lcom/facebook/react/bridge/JsonWriter$Scope;C)V

    .line 30
    return-object p0
.end method

.method public beginObject()Lcom/facebook/react/bridge/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/facebook/react/bridge/JsonWriter$Scope;->EMPTY_OBJECT:Lcom/facebook/react/bridge/JsonWriter$Scope;

    const/16 v1, 0x7b

    invoke-direct {p0, v0, v1}, Lcom/facebook/react/bridge/JsonWriter;->open(Lcom/facebook/react/bridge/JsonWriter$Scope;C)V

    .line 40
    return-object p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/facebook/react/bridge/JsonWriter;->mWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 109
    return-void
.end method

.method public endArray()Lcom/facebook/react/bridge/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    const/16 v0, 0x5d

    invoke-direct {p0, v0}, Lcom/facebook/react/bridge/JsonWriter;->close(C)V

    .line 35
    return-object p0
.end method

.method public endObject()Lcom/facebook/react/bridge/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    const/16 v0, 0x7d

    invoke-direct {p0, v0}, Lcom/facebook/react/bridge/JsonWriter;->close(C)V

    .line 45
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/facebook/react/bridge/JsonWriter;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    if-eqz p1, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/facebook/react/bridge/JsonWriter;->beforeName()V

    .line 53
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/JsonWriter;->string(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/facebook/react/bridge/JsonWriter;->mWriter:Ljava/io/Writer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 55
    return-object p0

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nullValue()Lcom/facebook/react/bridge/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/facebook/react/bridge/JsonWriter;->beforeValue()V

    .line 69
    iget-object v0, p0, Lcom/facebook/react/bridge/JsonWriter;->mWriter:Ljava/io/Writer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 70
    return-object p0
.end method

.method public rawValue(Ljava/lang/String;)Lcom/facebook/react/bridge/JsonWriter;
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/facebook/react/bridge/JsonWriter;->beforeValue()V

    .line 75
    iget-object v0, p0, Lcom/facebook/react/bridge/JsonWriter;->mWriter:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 76
    return-object p0
.end method

.method public value(D)Lcom/facebook/react/bridge/JsonWriter;
    .locals 2
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Lcom/facebook/react/bridge/JsonWriter;->beforeValue()V

    .line 87
    iget-object v0, p0, Lcom/facebook/react/bridge/JsonWriter;->mWriter:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 88
    return-object p0
.end method

.method public value(J)Lcom/facebook/react/bridge/JsonWriter;
    .locals 2
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lcom/facebook/react/bridge/JsonWriter;->beforeValue()V

    .line 93
    iget-object v0, p0, Lcom/facebook/react/bridge/JsonWriter;->mWriter:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 94
    return-object p0
.end method

.method public value(Ljava/lang/Number;)Lcom/facebook/react/bridge/JsonWriter;
    .locals 2
    .param p1, "value"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    if-nez p1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/facebook/react/bridge/JsonWriter;->nullValue()Lcom/facebook/react/bridge/JsonWriter;

    move-result-object v0

    return-object v0

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/bridge/JsonWriter;->beforeValue()V

    .line 102
    iget-object v0, p0, Lcom/facebook/react/bridge/JsonWriter;->mWriter:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 103
    return-object p0
.end method

.method public value(Ljava/lang/String;)Lcom/facebook/react/bridge/JsonWriter;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    if-nez p1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/facebook/react/bridge/JsonWriter;->nullValue()Lcom/facebook/react/bridge/JsonWriter;

    move-result-object v0

    return-object v0

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/bridge/JsonWriter;->beforeValue()V

    .line 63
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/JsonWriter;->string(Ljava/lang/String;)V

    .line 64
    return-object p0
.end method

.method public value(Z)Lcom/facebook/react/bridge/JsonWriter;
    .locals 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/facebook/react/bridge/JsonWriter;->beforeValue()V

    .line 81
    iget-object v0, p0, Lcom/facebook/react/bridge/JsonWriter;->mWriter:Ljava/io/Writer;

    if-eqz p1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 82
    return-object p0
.end method
