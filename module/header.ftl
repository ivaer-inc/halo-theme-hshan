<aside class="sidebar" id="sidebar">
    <div class="inner">
        <div class="widget-area">
            <!-- 菜单 -->
            <nav class="site-navigation">
                <ul class="menu">
                    <@menuTag method="tree">
                        <#list menus?sort_by('priority') as menu>
                            <li class="menu-item home current-menu-item">
                                <a href="${menu.url!}" target="${menu.target!}">${menu.name}</a>
                            </li>
                        </#list>
                    </@menuTag>
                    <#if settings.night_mode!true>
                        <li class="menu-item home current-menu-item">
                            <i class="fa night-mode" id="nightModeSmall" aria-hidden="true"></i>
                        </li>
                    </#if>
                    <#if settings.top_search!true>
                        <li class="menu-item home current-menu-item">
                            <i class="fa fa-search js-toggle-search iconsearch" aria-hidden="true"
                               style="font-size: 20px;"></i>
                        </li>
                    </#if>
                </ul>
            </nav>
        </div>
    </div>
</aside>

<header class="site-header" id="siteHeader">
    <div id="scrollMenu" class="scroll-menu header-inner">
        <div class="menu-items">
            <#if settings.header_logoimg?? && settings.header_logoimg!=''>
                <a href="${context!}" id="headerLogo" style="margin-right: 0; display: inline-block;height: 100%; line-height: 52px;" onfocus="this.blur();">
                    <img src="${settings.header_logoimg}" alt="${options.blog_title!}"
                            <#if settings.header_logo_height?? && settings.header_logo_height != ''>
                                style=" height: ${settings.header_logo_height} "
                            </#if>
                    />

                </a>
            </#if>
            <@menuTag method="tree">
                <#list menus?sort_by('priority') as menu>
                    <a href="${menu.url!}" target="${menu.target!}" onfocus="this.blur();" class="menu-scroll-item">${menu.name}</a>
                </#list>
            </@menuTag>
        </div>
        <div class="other-ctl" id="headerCtrl">
            <#if settings.top_search!true>
               <i class="fa fa-search js-toggle-search iconsearch" aria-hidden="true"></i>
            </#if>
            <#if settings.night_mode!true>
                <i class="fa night-mode" id="nightMode" aria-hidden="true"></i>
            </#if>
        </div>
    </div>
    <a class="sidebar-toggle" id="sidebarToggle">
        <span class='icon-menu cross'>
            <span class='middle' aria-hidden="true"> </span>
         </span>
    </a>
</header>
