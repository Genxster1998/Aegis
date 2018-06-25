.class Lcom/mokee/aegis/model/PacifierApps$PacifierAppsLoader;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mokee/aegis/model/PacifierApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PacifierAppsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/mokee/aegis/model/PacifierApps$PacifierApp;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mokee/aegis/model/PacifierApps;


# direct methods
.method private constructor <init>(Lcom/mokee/aegis/model/PacifierApps;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mokee/aegis/model/PacifierApps;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/mokee/aegis/model/PacifierApps$PacifierAppsLoader;->this$0:Lcom/mokee/aegis/model/PacifierApps;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mokee/aegis/model/PacifierApps;Lcom/mokee/aegis/model/PacifierApps$PacifierAppsLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mokee/aegis/model/PacifierApps;

    .prologue
    invoke-direct {p0, p1}, Lcom/mokee/aegis/model/PacifierApps$PacifierAppsLoader;-><init>(Lcom/mokee/aegis/model/PacifierApps;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 176
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mokee/aegis/model/PacifierApps$PacifierAppsLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

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
            "Lcom/mokee/aegis/model/PacifierApps$PacifierApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/mokee/aegis/model/PacifierApps$PacifierAppsLoader;->this$0:Lcom/mokee/aegis/model/PacifierApps;

    invoke-static {v0}, Lcom/mokee/aegis/model/PacifierApps;->-wrap0(Lcom/mokee/aegis/model/PacifierApps;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 181
    check-cast p1, Ljava/util/List;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mokee/aegis/model/PacifierApps$PacifierAppsLoader;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mokee/aegis/model/PacifierApps$PacifierApp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mokee/aegis/model/PacifierApps$PacifierApp;>;"
    iget-object v0, p0, Lcom/mokee/aegis/model/PacifierApps$PacifierAppsLoader;->this$0:Lcom/mokee/aegis/model/PacifierApps;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mokee/aegis/model/PacifierApps;->-set0(Lcom/mokee/aegis/model/PacifierApps;Z)Z

    .line 183
    iget-object v0, p0, Lcom/mokee/aegis/model/PacifierApps$PacifierAppsLoader;->this$0:Lcom/mokee/aegis/model/PacifierApps;

    invoke-static {v0, p1}, Lcom/mokee/aegis/model/PacifierApps;->-wrap1(Lcom/mokee/aegis/model/PacifierApps;Ljava/util/List;)V

    .line 184
    iget-object v0, p0, Lcom/mokee/aegis/model/PacifierApps$PacifierAppsLoader;->this$0:Lcom/mokee/aegis/model/PacifierApps;

    invoke-static {v0}, Lcom/mokee/aegis/model/PacifierApps;->-get0(Lcom/mokee/aegis/model/PacifierApps;)Lcom/mokee/aegis/model/PacifierApps$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/mokee/aegis/model/PacifierApps$PacifierAppsLoader;->this$0:Lcom/mokee/aegis/model/PacifierApps;

    invoke-static {v0}, Lcom/mokee/aegis/model/PacifierApps;->-get0(Lcom/mokee/aegis/model/PacifierApps;)Lcom/mokee/aegis/model/PacifierApps$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/aegis/model/PacifierApps$PacifierAppsLoader;->this$0:Lcom/mokee/aegis/model/PacifierApps;

    invoke-interface {v0, v1}, Lcom/mokee/aegis/model/PacifierApps$Callback;->onPacifierAppsLoaded(Lcom/mokee/aegis/model/PacifierApps;)V

    .line 181
    :cond_0
    return-void
.end method
