.class public Lcom/mokee/aegis/model/PacifierApps$PacifierApp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mokee/aegis/model/PacifierApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PacifierApp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/mokee/aegis/model/PacifierApps$PacifierApp;",
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
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;->mPackageName:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;->mLabel:Ljava/lang/String;

    .line 129
    iput-object p3, p0, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 130
    iput-object p5, p0, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 131
    iput-boolean p4, p0, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;->mAllowed:Z

    .line 126
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/mokee/aegis/model/PacifierApps$PacifierApp;)I
    .locals 3
    .param p1, "another"    # Lcom/mokee/aegis/model/PacifierApps$PacifierApp;

    .prologue
    .line 160
    iget-object v1, p0, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;->mLabel:Ljava/lang/String;

    iget-object v2, p1, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 161
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 165
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 159
    check-cast p1, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;->compareTo(Lcom/mokee/aegis/model/PacifierApps$PacifierApp;)I

    move-result v0

    return v0
.end method

.method public getAllowed()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;->mAllowed:Z

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
