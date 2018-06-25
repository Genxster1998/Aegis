.class Lcom/mokee/aegis/model/HibernateApps$HibernateAppsLoader;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mokee/aegis/model/HibernateApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HibernateAppsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/mokee/aegis/model/HibernateApps$HibernateApp;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mokee/aegis/model/HibernateApps;


# direct methods
.method private constructor <init>(Lcom/mokee/aegis/model/HibernateApps;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mokee/aegis/model/HibernateApps;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/mokee/aegis/model/HibernateApps$HibernateAppsLoader;->this$0:Lcom/mokee/aegis/model/HibernateApps;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mokee/aegis/model/HibernateApps;Lcom/mokee/aegis/model/HibernateApps$HibernateAppsLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mokee/aegis/model/HibernateApps;

    .prologue
    invoke-direct {p0, p1}, Lcom/mokee/aegis/model/HibernateApps$HibernateAppsLoader;-><init>(Lcom/mokee/aegis/model/HibernateApps;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 169
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mokee/aegis/model/HibernateApps$HibernateAppsLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

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
            "Lcom/mokee/aegis/model/HibernateApps$HibernateApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mokee/aegis/model/HibernateApps$HibernateAppsLoader;->this$0:Lcom/mokee/aegis/model/HibernateApps;

    invoke-static {v0}, Lcom/mokee/aegis/model/HibernateApps;->-wrap0(Lcom/mokee/aegis/model/HibernateApps;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 174
    check-cast p1, Ljava/util/List;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mokee/aegis/model/HibernateApps$HibernateAppsLoader;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mokee/aegis/model/HibernateApps$HibernateApp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mokee/aegis/model/HibernateApps$HibernateApp;>;"
    iget-object v0, p0, Lcom/mokee/aegis/model/HibernateApps$HibernateAppsLoader;->this$0:Lcom/mokee/aegis/model/HibernateApps;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mokee/aegis/model/HibernateApps;->-set0(Lcom/mokee/aegis/model/HibernateApps;Z)Z

    .line 176
    iget-object v0, p0, Lcom/mokee/aegis/model/HibernateApps$HibernateAppsLoader;->this$0:Lcom/mokee/aegis/model/HibernateApps;

    invoke-static {v0, p1}, Lcom/mokee/aegis/model/HibernateApps;->-wrap1(Lcom/mokee/aegis/model/HibernateApps;Ljava/util/List;)V

    .line 177
    iget-object v0, p0, Lcom/mokee/aegis/model/HibernateApps$HibernateAppsLoader;->this$0:Lcom/mokee/aegis/model/HibernateApps;

    invoke-static {v0}, Lcom/mokee/aegis/model/HibernateApps;->-get0(Lcom/mokee/aegis/model/HibernateApps;)Lcom/mokee/aegis/model/HibernateApps$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/mokee/aegis/model/HibernateApps$HibernateAppsLoader;->this$0:Lcom/mokee/aegis/model/HibernateApps;

    invoke-static {v0}, Lcom/mokee/aegis/model/HibernateApps;->-get0(Lcom/mokee/aegis/model/HibernateApps;)Lcom/mokee/aegis/model/HibernateApps$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/aegis/model/HibernateApps$HibernateAppsLoader;->this$0:Lcom/mokee/aegis/model/HibernateApps;

    invoke-interface {v0, v1}, Lcom/mokee/aegis/model/HibernateApps$Callback;->onHibernateAppsLoaded(Lcom/mokee/aegis/model/HibernateApps;)V

    .line 174
    :cond_0
    return-void
.end method
