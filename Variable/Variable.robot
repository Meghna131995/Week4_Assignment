*** Variables ***
${url}    https://www.amazon.in
${Browser}    chrome
${TodayDeals}    xpath://h2[contains(text(),'Today’s Deals')]
${Product}    xpath://*[@class='a-unordered-list a-nostyle a-horizontal feed-carousel-shelf _deals-shoveler-v2_style_list__pjYuB']/li[3]
${ProductsPage}    xpath://*[@class='a-unordered-list a-nostyle a-horizontal a-spacing-none']/li[2]
${ProductPrice}    xpath://*[@class='a-unordered-list a-nostyle a-horizontal a-spacing-none']/li[2]/span/div/div/div[4]/span[1]/span/span[2]
${ActualPrice}    xpath://body/div[@id='a-page']/div[@id='dp']/div[@id='dp-container']/div[@id='ppd']/div[@id='centerCol']/div[@id='apex_desktop']/div[@id='corePriceDisplay_desktop_feature_div']/div[1]/span[2]/span[2]/span[2]
${ProductDetails}    xpath://a[@id='seeMoreDetailsLink']
${TechnicalDetails}    xpath://h1[contains(text(),'Technical Details')]
${row}    xpath://*[@id="productDetails_techSpec_section_1"]/tbody/tr
${ActualKey}    Model_Name


