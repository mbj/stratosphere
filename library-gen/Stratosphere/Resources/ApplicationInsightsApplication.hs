{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationinsights-application.html

module Stratosphere.Resources.ApplicationInsightsApplication where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ApplicationInsightsApplicationComponentMonitoringSetting
import Stratosphere.ResourceProperties.ApplicationInsightsApplicationCustomComponent
import Stratosphere.ResourceProperties.ApplicationInsightsApplicationLogPatternSet
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for ApplicationInsightsApplication. See
-- 'applicationInsightsApplication' for a more convenient constructor.
data ApplicationInsightsApplication =
  ApplicationInsightsApplication
  { _applicationInsightsApplicationAutoConfigurationEnabled :: Maybe (Val Bool)
  , _applicationInsightsApplicationCWEMonitorEnabled :: Maybe (Val Bool)
  , _applicationInsightsApplicationComponentMonitoringSettings :: Maybe [ApplicationInsightsApplicationComponentMonitoringSetting]
  , _applicationInsightsApplicationCustomComponents :: Maybe [ApplicationInsightsApplicationCustomComponent]
  , _applicationInsightsApplicationLogPatternSets :: Maybe [ApplicationInsightsApplicationLogPatternSet]
  , _applicationInsightsApplicationOpsCenterEnabled :: Maybe (Val Bool)
  , _applicationInsightsApplicationOpsItemSNSTopicArn :: Maybe (Val Text)
  , _applicationInsightsApplicationResourceGroupName :: Val Text
  , _applicationInsightsApplicationTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties ApplicationInsightsApplication where
  toResourceProperties ApplicationInsightsApplication{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ApplicationInsights::Application"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AutoConfigurationEnabled",) . toJSON) _applicationInsightsApplicationAutoConfigurationEnabled
        , fmap (("CWEMonitorEnabled",) . toJSON) _applicationInsightsApplicationCWEMonitorEnabled
        , fmap (("ComponentMonitoringSettings",) . toJSON) _applicationInsightsApplicationComponentMonitoringSettings
        , fmap (("CustomComponents",) . toJSON) _applicationInsightsApplicationCustomComponents
        , fmap (("LogPatternSets",) . toJSON) _applicationInsightsApplicationLogPatternSets
        , fmap (("OpsCenterEnabled",) . toJSON) _applicationInsightsApplicationOpsCenterEnabled
        , fmap (("OpsItemSNSTopicArn",) . toJSON) _applicationInsightsApplicationOpsItemSNSTopicArn
        , (Just . ("ResourceGroupName",) . toJSON) _applicationInsightsApplicationResourceGroupName
        , fmap (("Tags",) . toJSON) _applicationInsightsApplicationTags
        ]
    }

-- | Constructor for 'ApplicationInsightsApplication' containing required
-- fields as arguments.
applicationInsightsApplication
  :: Val Text -- ^ 'aiaResourceGroupName'
  -> ApplicationInsightsApplication
applicationInsightsApplication resourceGroupNamearg =
  ApplicationInsightsApplication
  { _applicationInsightsApplicationAutoConfigurationEnabled = Nothing
  , _applicationInsightsApplicationCWEMonitorEnabled = Nothing
  , _applicationInsightsApplicationComponentMonitoringSettings = Nothing
  , _applicationInsightsApplicationCustomComponents = Nothing
  , _applicationInsightsApplicationLogPatternSets = Nothing
  , _applicationInsightsApplicationOpsCenterEnabled = Nothing
  , _applicationInsightsApplicationOpsItemSNSTopicArn = Nothing
  , _applicationInsightsApplicationResourceGroupName = resourceGroupNamearg
  , _applicationInsightsApplicationTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationinsights-application.html#cfn-applicationinsights-application-autoconfigurationenabled
aiaAutoConfigurationEnabled :: Lens' ApplicationInsightsApplication (Maybe (Val Bool))
aiaAutoConfigurationEnabled = lens _applicationInsightsApplicationAutoConfigurationEnabled (\s a -> s { _applicationInsightsApplicationAutoConfigurationEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationinsights-application.html#cfn-applicationinsights-application-cwemonitorenabled
aiaCWEMonitorEnabled :: Lens' ApplicationInsightsApplication (Maybe (Val Bool))
aiaCWEMonitorEnabled = lens _applicationInsightsApplicationCWEMonitorEnabled (\s a -> s { _applicationInsightsApplicationCWEMonitorEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationinsights-application.html#cfn-applicationinsights-application-componentmonitoringsettings
aiaComponentMonitoringSettings :: Lens' ApplicationInsightsApplication (Maybe [ApplicationInsightsApplicationComponentMonitoringSetting])
aiaComponentMonitoringSettings = lens _applicationInsightsApplicationComponentMonitoringSettings (\s a -> s { _applicationInsightsApplicationComponentMonitoringSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationinsights-application.html#cfn-applicationinsights-application-customcomponents
aiaCustomComponents :: Lens' ApplicationInsightsApplication (Maybe [ApplicationInsightsApplicationCustomComponent])
aiaCustomComponents = lens _applicationInsightsApplicationCustomComponents (\s a -> s { _applicationInsightsApplicationCustomComponents = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationinsights-application.html#cfn-applicationinsights-application-logpatternsets
aiaLogPatternSets :: Lens' ApplicationInsightsApplication (Maybe [ApplicationInsightsApplicationLogPatternSet])
aiaLogPatternSets = lens _applicationInsightsApplicationLogPatternSets (\s a -> s { _applicationInsightsApplicationLogPatternSets = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationinsights-application.html#cfn-applicationinsights-application-opscenterenabled
aiaOpsCenterEnabled :: Lens' ApplicationInsightsApplication (Maybe (Val Bool))
aiaOpsCenterEnabled = lens _applicationInsightsApplicationOpsCenterEnabled (\s a -> s { _applicationInsightsApplicationOpsCenterEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationinsights-application.html#cfn-applicationinsights-application-opsitemsnstopicarn
aiaOpsItemSNSTopicArn :: Lens' ApplicationInsightsApplication (Maybe (Val Text))
aiaOpsItemSNSTopicArn = lens _applicationInsightsApplicationOpsItemSNSTopicArn (\s a -> s { _applicationInsightsApplicationOpsItemSNSTopicArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationinsights-application.html#cfn-applicationinsights-application-resourcegroupname
aiaResourceGroupName :: Lens' ApplicationInsightsApplication (Val Text)
aiaResourceGroupName = lens _applicationInsightsApplicationResourceGroupName (\s a -> s { _applicationInsightsApplicationResourceGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationinsights-application.html#cfn-applicationinsights-application-tags
aiaTags :: Lens' ApplicationInsightsApplication (Maybe [Tag])
aiaTags = lens _applicationInsightsApplicationTags (\s a -> s { _applicationInsightsApplicationTags = a })
