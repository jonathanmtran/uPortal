<%--

    Licensed to Apereo under one or more contributor license
    agreements. See the NOTICE file distributed with this work
    for additional information regarding copyright ownership.
    Apereo licenses this file to you under the Apache License,
    Version 2.0 (the "License"); you may not use this file
    except in compliance with the License.  You may obtain a
    copy of the License at the following location:

      http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.

--%>
<%@page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/jsp/include.jsp"%>
<c:set var="n"><portlet:namespace/></c:set>
<c:set var="rootContext">${pageContext.request.contextPath}</c:set>
<style>

    #${n}{
        min-height:250px;
    }
    #${n} .marketplace_portlet_title{
        font-family: 'Arial Bold', 'Arial';
        font-weight:700;
        font-size:18px;
        color:#26507D;
        text-align:left;
    }
    #${n} .marketplace_description_body{
        font-family:'Arial';
        font-weight:400;
        font-size:12px;
        color:#000000;
        text-align:left;
    }
    #${n} .marketplace_dropdown_menu li a{
        font-size:14px;
        text-align:left;
        color:#000000;
    }
    #${n} .marketplace_dropdown_button{
        background-color:#666666;
        color:#FFFFFF
    }
    <%--#${n} .marketplace_dropdown_button:first-child{--%>
        <%--color:#FFFFFF--%>
    <%--}--%>
    #${n} .marketplace_button_group>.btn-group:last-child>.btn:first-child{
        border-bottom-left-radius:5px;
        border-top-left-radius:5px;
    }
    #${n} .marketplace_button_group>.btn-group:first-child>.dropdown-toggle{
        border-top-right-radius:5px;
        border-bottom-right-radius:5px;
    }
    #${n} .marketplace_carousel_inner div img{
        margin:auto;
    }
    #${n} .marketplace_section_header{
        font-family:'Arial Bold', 'Arial';
        font-weight:700;
        font-size: 16px;
        color:#000000;
        text-align:left;
        font-style: normal;
        text-transform:uppercase;
    }
    #${n} .marketplace_release_date{
        font-family:'Arial';
        font-weight:400;
        font-size:14px;
        color: #000000;
        text-align:left;
        font-style:normal;
        padding-left:5px;
    }
    #${n} .marketplace_release_notes{
        padding-left:0px;
    }

    #${n} .marketplace_release_note{
        display:none;
    }

    #${n} li{
        font-family:'Arial';
        font-weight:400;
        font-size:14px;
        color:#000000;
        text-align:left;
        font-style:normal;
        list-style:none;
        padding-left:20px;
    }

    #${n} .marketplace_show{
        display:block;
    }

    #${n} #marketplace_show_more_less_link{
        font-family: 'Arial';
        font-weight: 400;
        font-size: 14px;
        color: #26507D;
        float: right;
        cursor: pointer;
    }

    #${n} .marketplace_average_rating .rating-input{
       padding: 0;
    }

    #${n} .marketplace_user_rating {
        border-radius: 8px;
        border: 1px solid #ddd;
        padding: 10px;
        margin: 10px;
    }

    #${n} .carousel-container {
        margin: 0 auto;
    }

    #${n} .marketplace_carousel_inner .carousel-caption {
        background-color: rgba(32, 32, 32, 0.2);
        border-radius: 25px;
        -moz-border-radius: 25px;
        -webkit-border-radius: 25px;
    }

    #${n} .marketplace_carousel_inner img {
        max-height : 20em;
        position:absolute;
        top:0;
        bottom:0;
        right:0;
        left:0;
    }

    #${n} .marketplace_carousel_inner .item{
        height: 20em;
    }

    #${n} #${n}marketplace_user_review_input, #${n}marketplace_user_rating_submit_button{
        margin-top: 1em;
        margin-bottom: 1em;
    }

    #${n} .marketplace_dropdown_menu {
        margin: 0;
        padding: 0;
    }

    #${n} .marketplace_dropdown_menu li {
        margin: 0;
        padding: 0;
    }

    #${n} .marketplace_dropdown_menu li a[disabled] {
        color: #DDDDDD;
        background-color: #333333;
    }

    #${n} .btn.btn-default.disabled {
        background-color: #E0E0E0;
        opacity: 1;
    }

    #${n} .marketplace_section.row {
        margin-right: 15px;
        padding: 20px 0;
    }

    #${n} .marketplace_section .panel {
        border: none;
        border-radius: 0;
        -webkit-border-radius: 0;
        -moz-border-radius: 0;
        box-shadow: none;
        -webkit-box-shadow: none;
        -moz-box-shadoe: none;
    }

    #${n} .marketplace_section .panel .portlet-box {
        height: 112px;
        max-height: 112px;
        margin: 0;
        padding: 10px;
        border-radius: 8px;
        border: 1px solid #dddddd;
        -webkit-border-radius: 8px;
        -moz-border-radius: 8px;
        box-shadow: 1px 1px 6px rgba(0, 0, 0, 0.25);
        -webkit-box-shadow: 1px 1px 6px rgba(0, 0, 0, 0.25);
        -moz-box-shadow: 1px 1px 6px rgba(0, 0, 0, 0.25);
        overflow: hidden;
    }

    #${n} .marketplace_section .panel .portlet-box:hover {
        background-color: #eee;
        cursor: pointer;
    }

    #${n} .marketplace_section .panel .portlet-box a {
        width: 100%;
        display: block;
    }

    #${n} .marketplace_section .panel .portlet-box a:hover {
        text-decoration: none;
        color: #000000;
    }

    #${n} .marketplace_section .panel .portlet-box .portlet-icon {
        width: 92px;
        height: 92px;
        max-height: 92px;
        background-color: #eee;
        margin-right: 15px;
        float: left;
        border:3px solid #999;
        text-align: center;
    }

    #${n} .marketplace_section .panel .portlet-box .portlet-icon img {
        width: 72px;
        height: 72px;
        margin-top: 7px;
    }

    #${n} .marketplace_section .panel .portlet-box .portlet-details {
        text-align: left;
        color: #000;
        margin-right: 0;
    }

    #${n} .marketplace_section .panel .portlet-box .portlet-details h5 {
        font-size: 16px;
        margin: 0 0 3px 0;
    }


    #${n} .marketplace_section .panel .portlet-box .portlet-details p {
        font-size: 11px;
        margin: 0;
    }

    #${n} .header-info-wrapper {
        margin-top: 20px;
    }

    #${n} .header-info-wrapper .header-img {
        padding-right: 0;
    }

    #${n} .header-info-wrapper img {
        margin-top: 20px;
        float: right;
    }

    #${n} .spacer {
        display: block;
        margin-top: 20px;
    }
</style>

<script type="text/template" id="${n}options-menu">
    <li role="menuitem">
        <a href="#" title='<spring:message code="link.to" text="Link to ..." />' data-toggle="modal" data-target="#${n}copy-modal" id="${n}linkto">
            <spring:message code="link.to" text="Link to ..."/>
        </a>
    </li>
    <li aria-hidden="true" class="divider"></li>
    {% if (canFavorite) { %}
    <li role="menuitem">
        <spring:message code="add.this.portlet.to.my.favorite" text="Add this Portlet to My Favorites" var="atptmfTitle"/>
        <a href="#" title="${atptmfTitle}"
                class="{% if (isFavorite) { print('marketplace_remove_favorite'); } else { print('marketplace_add_favorite'); } %}">
            {% if (isFavorite) { %}
                <i class="fa fa-star"></i>
            {% } else { %}
                <i class="fa fa-star-o"></i>
            {% } %}
            <span>
                <spring:message code="my.favorites" text="My Favorites"/>
            </span>
        </a>
    </li>
    {% } %}
    <li role="menuitem">
        <a href="javascript://" aria-disabled="true" disabled>
                <span>
                    <spring:message code="marketplace.add.to.tab" text="Add portlet to tab:"/>
                </span>
        </a>
    </li>
    {% _.each(tabs, function(tab) { %}
        <li role="menuitem">
            <a href="#" class="marketplace_add_to_tab_link" data-tab-id="{%= tab.id %}">
                <span>
                    {%- tab.name %}
                </span>
            </a>
        </li>
    {% }); %}
</script>

<script type="text/template" id="${n}screen-shots">
    {% if (screenShots.length > 0) { %}
        <div class="row">
            <div class="col-md-12">
                <h1>
                    <spring:message code="screenshots.cap" text="Screenshots/Videos"/>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-offset-3 col-xs-6">
                <div class="carousel-container">
                    <div id="${n}marketplace_screenshots_and_videos" class="carousel slide" data-ride="carousel" data-interval="9000" data-wrap="true">
                        <div class="carousel-inner marketplace_carousel_inner" role="listbox">
                            {% _(screenShots).each(function(screen, idx) { %}
                                <div class="item marketplace_screen_shots {% if (idx === 0) { %} active {% } %}">
                                    <img src="{%= screen.url %}" alt="screenshot for portlet">
                                        {% _(screen.captions).each(function(caption) { %}
                                            <div class="carousel-caption">
                                                <h3>{%- caption %}</h3>
                                            </div>
                                        {% }); %}
                                    </img>
                                </div>
                            {% }); %}
                        </div>
                        {% if (screenShots.length > 1) { %}
                            <ol class="carousel-indicators marketplace_carousel_indicators">
                                {% _(screenShots).each(function(screen, idx) { %}
                                    <li data-target="#${n}marketplace_screenshots_and_videos" data-slide-to="{%= idx %}"></li>
                                {% }); %}
                            </ol>
                            <a class="left carousel-control carousel-marketplace-control" href="#${n}marketplace_screenshots_and_videos" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control carousel-marketplace-control" href="#${n}marketplace_screenshots_and_videos" role="button" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        {% } %}
                    </div>
                </div>
            </div>
        </div>
    {% } %}
</script>

<div id="${n}">
    <div class="col-xs-12">
        <div class="row">
            <div class="col-xs-6">
                <portlet:renderURL var="initialViewURL" windowState="MAXIMIZED"/>
                <a class="btn btn-default" href="${initialViewURL}"><i class="fa fa-arrow-left"></i> <spring:message code="back.to.list" text="Back to List"/></a>
            </div>
            <div class="col-xs-6" class="${n}go_button">
                <div class="btn-group marketplace_button_group" style="float:right">
                    <a href="${marketplaceEntry.renderUrl}" id="marketplace_go_button"
                       class="btn btn-default marketplace_dropdown_button" role="button">
                        <spring:message code="go" text="Go"/>
                    </a>
                    <button type="button" class="btn btn-default dropdown-toggle marketplace_dropdown_button" data-toggle="dropdown">
                        <spring:message code="options" text="Options"/>
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu marketplace_dropdown_menu" role="menu" style="right: 0; left: auto;">
                    </ul>
                </div>
            </div>
        </div>
        <div class="row header-info-wrapper">
            <div class="col-sm-1 col-xs-4 header-img">
                <c:url value="/media/skins/icons/mobile/default.png" var="defaultIcon"/>
                    <c:choose>
                        <c:when test="${empty marketplaceEntry.getParameter('mobileIconUrl')}">
                            <img src="${defaultIcon}" alt="">
                        </c:when>
                        <c:otherwise>
                            <img src="${marketplaceEntry.getParameter('mobileIconUrl').value}" alt="">
                        </c:otherwise>
                </c:choose>
            </div>
            <div class="col-sm-11 col-xs-8">
                <div class="marketplace_description_title">
                    <h1>${marketplaceEntry.title}</h1>
                </div>
                <div class="marketplace_description_body">
                    <p>${marketplaceEntry.description}</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 screen-shot-section"></div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <h1>
                    <spring:message code="rating.and.review.cap" text="Ratings &amp; Reviews"/>
                </h1>
                <div class="col-xs-3 marketplace_average_rating">
                    <fieldset class="rating-readonly">
                        <input
                            name="overallrating"
                            type="radio"
                            id="overallrating5"
                            value="5"
                            aria-label="5 stars"
                            readonly
                            ${marketplaceEntry.rating gt 4.5 ? "checked" : ""}>
                        <label
                            for="overallrating5"
                            title="5 stars">
                            ☆
                        </label>

                        <input
                            name="overallrating"
                            type="radio"
                            id="overallrating4"
                            value="4"
                            aria-label="4 stars"
                            readonly
                            ${(marketplaceEntry.rating gt 3.5 && marketplaceEntry.rating le 4.5) ? "checked" : ""}>
                        <label
                            for="rating4"
                            title="4 stars">
                            ☆
                        </label>

                        <input
                            name="overallrating"
                            type="radio"
                            id="overallrating3"
                            value="3"
                            aria-label="3 stars"
                            readonly
                            ${(marketplaceEntry.rating gt 2.5 && marketplaceEntry.rating le 3.5) ? "checked" : ""}>
                        <label
                            for="rating3"
                            title="3 stars">
                            ☆
                        </label>

                        <input
                            name="overallrating"
                            type="radio"
                            id="overallrating2"
                            value="2"
                            aria-label="2 stars"
                            readonly
                            ${(marketplaceEntry.rating gt 1.5 && marketplaceEntry.rating le 2.5) ? "checked" : ""}>
                        <label
                            for="overallrating"
                            title="2 stars">
                            ☆
                        </label>

                        <!-- NOTE:  An unrated portlet will have a rating of zero;  display no stars. -->
                        <input
                            name="overallrating"
                            type="radio"
                            id="overallrating1"
                            value="1"
                            aria-label="1 star"
                            readonly
                            ${(marketplaceEntry.rating gt 0.5 && marketplaceEntry.rating le 1.5) ? "checked" : ""}>
                        <label
                            for="rating1"
                            title="1 star">
                            ☆
                        </label>
                    </fieldset>
                </div>
                <div id="col-xs-9 marketplace_users_rated">
                    <span id="marketplace_average_rating_description">
                        (${marketplaceEntry.userRated} reviews)
                    </span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <div class="marketplace_user_rating">
                    <h4><spring:message code="rate.this.portlet" text="Rate this portlet"/></h4>
                    <div id="${n}marketplace_rating_instructions" class="help-block"></div>
                    <form id="${n}save_rating_form">
                        <fieldset class="rating">
                            <input
                                name="rating"
                                type="radio"
                                id="rating5"
                                value="5"
                                aria-label="5 stars"
                                ${marketplaceRating.rating == 5 ? "checked" : ""}>
                            <label
                                for="rating5"
                                title="5 stars">
                                ☆
                            </label>

                            <input
                                name="rating"
                                type="radio"
                                id="rating4"
                                value="4"
                                aria-label="4 stars"
                                ${marketplaceRating.rating == 4 ? "checked" : ""}>
                            <label
                                for="rating4"
                                title="4 stars">
                                ☆
                            </label>

                            <input
                                name="rating"
                                type="radio"
                                id="rating3"
                                value="3"
                                aria-label="3 stars"
                                ${marketplaceRating.rating == 3 ? "checked" : ""}>
                            <label
                                for="rating3"
                                title="3 stars">
                                ☆
                            </label>

                            <input
                                name="rating"
                                type="radio"
                                id="rating2"
                                value="2"
                                aria-label="2 stars"
                                ${marketplaceRating.rating == 2 ? "checked" : ""}>
                            <label
                                for="rating2"
                                title="2 stars">
                                ☆
                            </label>

                            <input
                                name="rating"
                                type="radio"
                                id="rating1"
                                value="1"
                                aria-label="1 star"
                                ${marketplaceRating.rating == 1 ? "checked" : ""}>
                            <label
                                for="rating1"
                                title="1 star">
                                ☆
                            </label>
                        </fieldset>
                        <c:if test="${enableReviews}">
                        <div class="form-group">
                            <label for="${n}marketplace_user_review_input" id="review-label"><spring:message code="rating.leave.review"/></label>
                            <textarea id="${n}marketplace_user_review_input" aria-labelledby="review-label" name="review" class="form-control col-xs-12 col-med-6" rows="3"></textarea>
                            <div id="${n}input_chars_remaining"></div>
                        </div>
                        </c:if>
                        <div class="form-group">
                            <button id="${n}marketplace_user_rating_submit_button" type="submit" class="btn btn-default">
                                <spring:message code="submit" text="Submit"/>
                            </button>
                        </div>
                    </form>
                    <div class="clearfix"></div>
                </div>

            </div>
        </div>
        <c:if test="${not empty  marketplaceEntry.portletReleaseNotes.releaseNotes}">
            <div class="row clearfix">
                <div class = "col-xs-12 col-md-4">
                    <br>
                    <p>
                        <span class="marketplace_section_header"><spring:message code="whats.new" text="What's New"/></span>
                        <c:if test="${not empty marketplaceEntry.portletReleaseNotes.releaseDate}">
                            <span class="marketplace_release_date"> (Released <joda:format value="${marketplaceEntry.portletReleaseNotes.releaseDate}" pattern="dd-MM-yyyy" />)</span>
                        </c:if>

                    </p>
                    <p>
                        <c:if test="${not empty marketplaceEntry.portletReleaseNotes.releaseNotes}">
                            <ul class="marketplace_release_notes">
                                <c:forEach var="releaseNote"
                                           items="${marketplaceEntry.portletReleaseNotes.releaseNotes}">
                                    <li class="marketplace_release_note">- ${releaseNote}</li>
                                </c:forEach>
                            </ul>
                        </c:if>
                    </p>
                    <c:if test="${fn:length(marketplaceEntry.portletReleaseNotes.releaseNotes) gt
                    3}">
                        <span><a id="marketplace_show_more_less_link"><spring:message code="more" text="More"/></a></span>
                    </c:if>
                </div>
            </div>
        </c:if>

        <div class="spacer clearfix"></div>

        <c:set var="relatedPortlets" value="${marketplaceEntry.relatedPortlets}"/>
        <c:if test="${not empty relatedPortlets}">
            <h1><spring:message code="related.portlets" text="Related Portlets"/></h1>
            <div class="marketplace_section row clearfix">
                <c:url value="/media/skins/icons/mobile/default.png" var="defaultIcon"/>
                <c:forEach var="relatedPortlet" items="${relatedPortlets}" varStatus="status">
                    <portlet:renderURL var="entryURL" windowState="MAXIMIZED" >
                        <portlet:param name="action" value="view"/>
                        <portlet:param name="fName" value="${relatedPortlet.fname}"/>
                    </portlet:renderURL>
                    <div class="col-sm-6 col-lg-3">
                        <div class="panel panel-default">
                            <div class="row portlet-box">
                                <a href="${entryURL}">
                                    <div class="portlet-icon">
                                        <c:choose>
                                            <c:when test="${empty relatedPortlet.getParameter('mobileIconUrl')}">
                                                <img src="${defaultIcon}" alt="">
                                            </c:when>
                                            <c:otherwise>
                                                <img src="${relatedPortlet.getParameter('mobileIconUrl').value}" alt="">
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                    <div class="portlet-details">
                                        <h5><c:out value="${relatedPortlet.title}"/></h5>
                                        <p><c:out value="${relatedPortlet.description}"/></p>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <c:if test="${(status.index + 1) mod 4 == 0}">
                        <div class="clearfix"></div>
                    </c:if>
                </c:forEach>
            </div>
        </c:if>
        <c:set var="portletCategories" value="${marketplaceEntry.categories}"/>
        <c:if test="${not empty portletCategories}">
            <div class="row">
            <div class = "col-xs-12 col-md-4">
                <span class="marketplace_section_header"><spring:message code="categories" text="CATEGORIES" /></span>
                <ul>
                    <c:forEach var="portletCategory" items="${portletCategories}">
                        <portlet:renderURL var="initialViewWithFilterURL" windowState="MAXIMIZED">
                            <portlet:param name="initialFilter" value="${portletCategory}"/>
                        </portlet:renderURL>
                        <li>- <a href="${initialViewWithFilterURL}">${portletCategory}</a></li>
                    </c:forEach>
                </ul>
                </div>
            </div>
            <br>
        </c:if>
        <div class="row col-xs-12" style="clear:both;">
            <div class="col-xs-4">
            </div>
            <div class="col-xs-4">
            </div>
            <div class="col-xs-4" style="float:left">

            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="${n}copy-modal" tabindex="-1" role="dialog" aria-labelledby="LinkToModal" aria-modal="true">
    <div class="modal-dialog" style="text-align:center">
        <div class="modal-content" style="white-space: nowrap">
            <h4 id="LinkToModal" class="modal-title">
                <strong>
                    <spring:message code="link.to.this" text="Link to This"/>
                </strong>
            </h4>
            <div class="modal-body">
                <form class="form-horizontal" role="form">
                <div class="form-group">
                    <label for="inputDeep" class="col-sm-2 control-label"><spring:message code="link" text="Link"/></label>
                    <div class="col-sm-10">
                        <input tabindex="0" type="text" class="form-control" id="inputDeep"
                               value="${marketplaceEntry.renderUrl}"></input>
                    </div>
                </div>
                <c:if test="${not empty shortURL }">
                    <div class="form-group">
                        <label for="smallLink" class="col-sm-2 control-label"><spring:message code="shortLink" text="Short Link"/></label>
                        <div class="col-sm-10">
                            <input tabindex="0" type="text" class="form-control" id="smallLink" value="${shortURL}"></input>
                        </div>
                    </div>
                </c:if>
                </form>
            </div>
            <div class="modal-footer">
                <button tabindex="0" role="button" type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="close" text="Close"/></button>
            </div>
        </div>
    </div>
</div>
<portlet:resourceURL id="saveRating" var="saveRatingUrl" />
<portlet:resourceURL id="layoutInfo" var="portletInfoUrl">
    <portlet:param name="portletFName" value="${marketplaceEntry.fname}"/>
</portlet:resourceURL>

<script type="text/javascript">
(function($, Backbone, _) {
    $(document).ready( function () {
        // IMPORTANT: The tabs object is not a true model so it won't do
        // notifications on change.  If tabs needs to change, replace the
        // entire object, don't modify the one in this model.
        var MenuModel = Backbone.Model.extend({
            defaults: {
                loading: true,
                canFavorite: ${canFavorite},
                isFavorite: false,
                fname: null,
                tabs: []
            },
            update: function(data) {
                this.set({
                    isFavorite: data.favorite,
                    tabs: data.tabs
                });
            }
        });

        var templateSettings = {
            evaluate: /{%([\s\S]+?)%}/g,
            interpolate: /{%=([\s\S]+?)%}/g,
            escape: /{%-([\s\S]+?)%}/g
        };

        var MenuController = Backbone.View.extend({
            events: {
                'click .marketplace_add_to_tab_link': 'addPortlet',
                'click .marketplace_add_favorite': 'addFavorite',
                'click .marketplace_remove_favorite': 'removeFavorite'
            },
            template: _.template($('#${n}options-menu').text(), null, templateSettings),
            options: {
                portletChannelId: '${marketplaceEntry.id}'
            },

            initialize: function(options) {
                this.listenTo(this.model, 'change', this.render);
            },

            render: function() {
                var html;

                html = this.template(this.model.toJSON());
                this.$el.html(html);

                return this.$el;
            },

            addPortlet: function(evt) {
                var tabId, url, promise, tabName;

                evt.preventDefault();

                tabId = $(evt.currentTarget).data('tabId');
                tabName = this._getTabNameById(tabId);

                url = '<c:url value="/api/layout"/>';
                promise = $.ajax({
                    url: url,
                    data: {
                        action: 'addPortlet',
                        channelID: this.options.portletChannelId,
                        elementID: tabId,
                        position: ''
                    },
                    type: 'POST',
                    dataType: 'json'
                });

                promise.success(function() {
                    <spring:message code="success" text="Success" var="success"/>
                    <spring:message code="marketplace.add.portlet.success"
                            text="{0} Portlet has been added to tab {1}"
                            htmlEscape="false"
                            arguments="<strong>${success}!</strong>, <span class=\"tab-name\"></span>"
                            var="addPortletSuccessMsg"/>
                    var content = $('<div>${addPortletSuccessMsg}</div>');
                    content.find('.tab-name').text(tabName);

                    $('#up-notification').noty({
                        text: content.html(),
                        type: 'success'
                    });
                });

                promise.error(function() {
                    <spring:message code="marketplace.add.portlet.error"
                            text="Portlet could not be added to tab {0}"
                            htmlEscape="false"
                            arguments="<span class=\"tab-name\"></span>"
                            var="addPortletErrorMsg"/>
                    var content = $('<div>${addPortletErrorMsg}</div>');
                    content.find('.tab-name').text(tabName);
                    $('#up-notification').noty({
                        text: content.html(),
                        type: 'error'
                    });
                });

                promise.done(function() {
                    updateOptionsMenu();
                });
            },


            addFavorite: function(evt) {
                var promise;

                evt.preventDefault();

                evt.data = {
                    context: '${rootContext}',
                    portletId: this.options.portletChannelId
                };

                promise = up.addToFavorite(evt);
                promise.done(function() {
                    updateOptionsMenu();
                });
            },

            removeFavorite: function(evt) {
                var promise;

                evt.data = {
                    context: '${rootContext}',
                    portletId: this.options.portletChannelId
                };

                promise = up.removeFromFavorite(evt);
                promise.done(function() {
                    updateOptionsMenu();
                });
            },

            _getTabNameById: function(id) {
                var tabsArray, first;

                tabsArray = _.where(this.model.get('tabs'), {id: id});
                if (!tabsArray) {
                    return '';
                }

                first = _.first(tabsArray);
                if (!first) {
                    return '';
                }

                return first.name;
            }
        });

        var defaults = {
            textReviewCharLimit : 160,
            textReviewRemainingWarning: 10,
            visibleReleaseNoteCount: 3
        };
        var remainingCharsAvailable = defaults.textReviewCharLimit;
        var optionsMenuModel = new MenuModel();
        var optionsMenuController = new MenuController({
            el: $('#${n} ul.marketplace_dropdown_menu'),
            model: optionsMenuModel
        });

        var updateOptionsMenu = function() {
            var promise;

            promise = $.ajax({
                url: '${portletInfoUrl}'
            });

            promise.then(function(data) {
                optionsMenuModel.update(data);
            }, function() {
                <spring:message code="marketplace.tablist.error"
                        text="An error occurred while loading the tab list"
                        htmlEscape="false"
                        var="tabListErrorMsg"/>
                $('#up-notification').noty({
                    text: '${tabListErrorMsg}',
                    type: 'error'
                });
            });
        };

        updateOptionsMenu();

        var screenShots = [
            <c:forEach var="screenShot" items="${marketplaceEntry.marketplaceScreenshots}">
            {
                url: '${screenShot.url}',
                captions: [
                    <c:forEach var="caption" items="${screenShot.captions}">
                        '${caption}',
                    </c:forEach>
                ]
            },
            </c:forEach>
        ];

        var ScreenShotModel = Backbone.Model.extend({
            defaults: {
                url: null,
                captions: []
            }
        });
        var screenShotCollection = new Backbone.Collection(screenShots, { model: ScreenShotModel });

        var ScreenShotController = Backbone.View.extend({
            template: _.template($('#${n}screen-shots').text(), null, templateSettings),
            selectors: {
                firstIndicator: '.marketplace_carousel_indicators > li:first-child'
            },
            collection: undefined,

            initialize: function(options) {
                var self, promises, allResolved;

                self = this;

                // kick off validation of each screen shot...
                promises = self.collection.map(function(screenShot) {
                    return self._validateScreenShot(screenShot);
                });

                // after all image URL have been checked, update the collection
                // with just the valid screenshots...
                allResolved = $.when.apply($, promises);
                allResolved.then(function() {
                    var valid;

                    valid = _.filter(arguments, function(screenShot) {
                        return screenShot != null;
                    });

                    // update the collection...
                    self.collection.reset(valid);
                });

                // after the model updates, re-render...
                self.listenTo(self.collection, 'reset', self.render);
            },

            render: function() {
                var self = this;

                this.$el.html(this.template({
                    screenShots: self.collection.toJSON()
                }));
                this.$(self.selectors.firstIndicator).addClass("active");

                return this.$el;
            },

            _validateScreenShot: function(screenShot) {
                var image, defer;

                defer = $.Deferred();
                image = new Image();
                image.onload = function() {
                    defer.resolve(screenShot);
                };
                image.onerror = function() {
                    defer.resolve(null);
                };
                image.src = screenShot.get('url');

                // return a deferred that always resolves successfully and
                // resolves to a screenshot object or null
                return defer.promise();
            }
        });

        // instantiate the actual screenshot controller.
        var screenShotController = new ScreenShotController({
            el: $('.screen-shot-section'),
            collection: screenShotCollection
        });

        var updateRatingInstructions = function(messageText) {
            $("#${n}marketplace_rating_instructions").text(messageText);
        };
        $(".marketplace_screen_shots:first").addClass("active");
        $(".marketplace_release_notes>li:nth-child(-n+"+
                defaults.visibleReleaseNoteCount+")").addClass("marketplace_show");
        $('#${n}copy-modal').modal('hide');
        var lengthLink = $('#marketplace_show_more_less_link');
        if(lengthLink.length>0) {
            lengthLink = lengthLink[0];
            lengthLink.onclick = toggleNotesDisplayLength;
            function toggleNotesDisplayLength() {
                var currentText = lengthLink.innerHTML;
                if($.trim(currentText) == 'More') {
                    $(".marketplace_release_notes>li").addClass("marketplace_show");
                    lengthLink.innerHTML="Less";
                }else{
                    $(".marketplace_release_notes>li:not(:nth-child(-n+"+
                            defaults.visibleReleaseNoteCount+"))").removeClass("marketplace_show");
                    lengthLink.innerHTML="More";
                }
            }
        }
        var htmlDecode = function(input) {
            var e = document.createElement('div');
            e.innerHTML = input;
            return e.childNodes.length === 0 ? "" : e.childNodes[0].nodeValue;
        };
        if($("input[name=rating][type=radio]:checked").size() > 0) {
            updateRatingInstructions('<spring:message code="rating.instructions.rated"
            text='You have already rated "{0}"; adjust your rating if you wish.'
            arguments="${marketplaceEntry.title}"
            htmlEscape="true" />');
            $("#${n}marketplace_user_review_input").val(htmlDecode("<c:out value="${marketplaceRating.review}"/>"));
        } else {
            updateRatingInstructions('<spring:message code="rating.instructions.unrated"
            text='You have not yet rated "{0}".'
            arguments="${marketplaceEntry.title}"
            htmlEscape="true" />');
        }

        <c:if test="${enableReviews}">
        // Optional Reviews feature...
        var updateCharactersRemaining = function() {
            var textArea = $('#${n}marketplace_user_review_input');
            var remainingIndicator = $('#${n}input_chars_remaining');

            // Set limit to default
            textArea.attr('maxlength', defaults.textReviewCharLimit);

            // update remaining characters text
            var remainingCharsAvailable = defaults.textReviewCharLimit - textArea.val().length;
            remainingIndicator.html('<spring:message code="characters.remaining" text="Characters Remaining: "/> &nbsp' + remainingCharsAvailable);

            // visual and audio feedback on limit
            if (remainingCharsAvailable <= defaults.textReviewRemainingWarning) {
                remainingIndicator
                    .css('color', 'red')
                    .attr('aria-live', 'assertive');
            } else {
                remainingIndicator
                    .css('color', 'black')
                    .attr('aria-live', 'polite');
            }
        };
        updateCharactersRemaining();
        $("#${n}marketplace_user_review_input").keyup(function() {
            updateCharactersRemaining();
        });
        </c:if>

        // Submit function
        $("#${n}save_rating_form").submit(function (e) {
            var reviewText = $("#${n}marketplace_user_review_input").val();
            $.ajax({
                url: '${saveRatingUrl}',
                data: {
                    rating: $("input[name=rating][type=radio]:checked").val(),
                    portletFName: "${marketplaceEntry.fname}",
                    review: reviewText ? reviewText.trim() : ''
                },
                type: 'POST',
                success: function() {
                    $('#up-notification').noty({
                        text: '<spring:message code="rating.saved.successfully" text="Success"/>',
                        layout: 'TopCenter',
                        type: 'success'
                    });
                    updateRatingInstructions('<spring:message code="rating.instructions.rated.now"
                     text='You have now rated "{0}"; update your rating if you wish.'
                     arguments="${marketplaceEntry.title}"
                     htmlEscape="false"
                 />');
                },
                error: function() {
                    $('#up-notification').noty({
                        text: '<spring:message code="rating.saved.unsuccessfully" text="Failure"/>',
                        layout: 'TopCenter',
                        type: 'error'
                    });
                }
            });
            e.preventDefault();
        });
    });

} (up.jQuery, up.Backbone, up._));

</script>
