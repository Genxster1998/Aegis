.class Lcom/mokee/aegis/model/WardenApps$WardenAppsLoader;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mokee/aegis/model/WardenApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WardenAppsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/mokee/aegis/model/WardenApps$WardenApp;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mokee/aegis/model/WardenApps;


# direct methods
.method private constructor <init>(Lcom/mokee/aegis/model/WardenApps;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mokee/aegis/model/WardenApps;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/mokee/aegis/model/WardenApps$WardenAppsLoader;->this$0:Lcom/mokee/aegis/model/WardenApps;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mokee/aegis/model/WardenApps;Lcom/mokee/aegis/model/WardenApps$WardenAppsLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mokee/aegis/model/WardenApps;

    .prologue
    invoke-direct {p0, p1}, Lcom/mokee/aegis/model/WardenApps$WardenAppsLoader;-><init>(Lcom/mokee/aegis/model/WardenApps;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 183
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mokee/aegis/model/WardenApps$WardenAppsLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mokee/aegis/model/WardenApps$WardenApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/mokee/aegis/model/WardenApps$WardenAppsLoader;->this$0:Lcom/mokee/aegis/model/WardenApps;

    invoke-static {v0}, Lcom/mokee/aegis/model/WardenApps;->-wrap0(Lcom/mokee/aegis/model/WardenApps;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 188
    check-cast p1, Ljava/util/List;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mokee/aegis/model/WardenApps$WardenAppsLoader;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mokee/aegis/model/WardenApps$WardenApp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mokee/aegis/model/WardenApps$WardenApp;>;"
    iget-object v0, p0, Lcom/mokee/aegis/model/WardenApps$WardenAppsLoader;->this$0:Lcom/mokee/aegis/model/WardenApps;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mokee/aegis/model/WardenApps;->-set0(Lcom/mokee/aegis/model/WardenApps;Z)Z

    .line 190
    iget-object v0, p0, Lcom/mokee/aegis/model/WardenApps$WardenAppsLoader;->this$0:Lcom/mokee/aegis/model/WardenApps;

    invoke-static {v0, p1}, Lcom/mokee/aegis/model/WardenApps;->-wrap1(Lcom/mokee/aegis/model/WardenApps;Ljava/util/List;)V

    .line 191
    iget-object v0, p0, Lcom/mokee/aegis/model/WardenApps$WardenAppsLoader;->this$0:Lcom/mokee/aegis/model/WardenApps;

    invoke-static {v0}, Lcom/mokee/aegis/model/WardenApps;->-get0(Lcom/mokee/aegis/model/WardenApps;)Lcom/mokee/aegis/model/WardenApps$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/mokee/aegis/model/WardenApps$WardenAppsLoader;->this$0:Lcom/mokee/aegis/model/WardenApps;

    invoke-static {v0}, Lcom/mokee/aegis/model/WardenApps;->-get0(Lcom/mokee/aegis/model/WardenApps;)Lcom/mokee/aegis/model/WardenApps$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/aegis/model/WardenApps$WardenAppsLoader;->this$0:Lcom/mokee/aegis/model/WardenApps;

    invoke-interface {v0, v1}, Lcom/mokee/aegis/model/WardenApps$Callback;->onWardenAppsLoaded(Lcom/mokee/aegis/model/WardenApps;)V

    .line 188
    :cond_0
    return-void
.end method
