<view class="search-page">
    <view class="search-wrap">
        <!-- 搜索 -->
        <view class="search">
            <image class="search-icon" src="/assets/icon/search.png" mode="" />
            <input class="search-input" value="{{keyword}}" bindinput="handleInput" bindconfirm="handleSearch" search auto-focus focus placeholder="搜索兵种、法术、建筑、英雄等" />
            <text bindtap="handleSearch" class="search-btn">搜索</text>
        </view>
    </view>
    <view style="height: 20rpx;"></view>
    <t-grid column="{{4}}" theme="card" wx:if="{{ searchResultList.length > 0 }}">
        <!-- <t-grid-item wx:for="{{ searchResultList}}" wx:key="index" text="{{ item.name }}" image="{{ 'http://119.96.189.81:7788/images/' + item.name + '.png' }}" bindtap="onDetail" data-content="{{item}}" /> -->
        <t-grid-item wx:for="{{ searchResultList }}" wx:key="{{index}}" text="{{ item.name }}" bindtap="onDetail" data-content="{{item}}">
            <image class="image-icon" src="{{ 'http://119.96.189.81:7788/images/' + item.name + '.png' }}" slot="image" mode="aspectFit" style="width: 80rpx; height: 80rpx;" />
        </t-grid-item>
    </t-grid>
    <!-- 搜索结果 -->
    <view wx:else class="result">
        <view class="result-empty">
            <image src="/assets/images/empty.png" mode="" />
            <text>无搜索结果</text>
        </view>
    </view>
</view>