.class public Lcom/mokee/aegis/model/HibernateApps$HibernateApp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mokee/aegis/model/HibernateApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HibernateApp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/mokee/aegis/model/HibernateApps$HibernateApp;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAllowed:Z

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mInfo:Landroid/content/pm/ApplicationInfo;

.field private final mLabel:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLandroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "allowed"    # Z
    .param p5, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/mokee/aegis/model/HibernateApps$HibernateApp;->mPackageName:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/mokee/aegis/model/HibernateApps$HibernateApp;->mLabel:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/mokee/aegis/model/HibernateApps$HibernateApp;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 123
    iput-object p5, p0, Lcom/mokee/aegis/model/HibernateApps$HibernateApp;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 124
    iput-boolean p4, p0, Lcom/mokee/aegis/model/HibernateApps$HibernateApp;->mAllowed:Z

    .line 119
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/mokee/aegis/model/HibernateApps$HibernateApp;)I
    .locals 3
    .param p1, "another"    # Lcom/mokee/aegis/model/HibernateApps$HibernateApp;

    .prologue
    .line 153
    iget-object v1, p0, Lcom/mokee/aegis/model/HibernateApps$HibernateApp;->mLabel:Ljava/lang/String;

    iget-object v2, p1, Lcom/mokee/aegis/model/HibernateApps$HibernateApp;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 154
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/mokee/aegis/model/HibernateApps$HibernateApp;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mokee/aegis/model/HibernateApps$HibernateApp;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 158
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 152
    check-cast p1, Lcom/mokee/aegis/model/HibernateApps$HibernateApp;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mokee/aegis/model/HibernateApps$HibernateApp;->compareTo(Lcom/mokee/aegis/model/HibernateApps$HibernateApp;)I

    move-result v0

    return v0
.end method

.method public getAllowed()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/mokee/aegis/model/HibernateApps$HibernateApp;->mAllowed:Z

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/mokee/aegis/model/HibernateApps$HibernateApp;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mokee/aegis/model/HibernateApps$HibernateApp;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mokee/aegis/model/HibernateApps$HibernateApp;->mLabel:Ljava/lang/String;

    return-object v0
.end method
