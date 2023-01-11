
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-componentmonitoringsetting.html

module Stratosphere.ResourceProperties.ApplicationInsightsApplicationComponentMonitoringSetting where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ApplicationInsightsApplicationComponentConfiguration

-- | Full data type definition for
-- ApplicationInsightsApplicationComponentMonitoringSetting. See
-- 'applicationInsightsApplicationComponentMonitoringSetting' for a more
-- convenient constructor.
data ApplicationInsightsApplicationComponentMonitoringSetting =
  ApplicationInsightsApplicationComponentMonitoringSetting
  { _applicationInsightsApplicationComponentMonitoringSettingComponentARN :: Maybe (Val Text)
  , _applicationInsightsApplicationComponentMonitoringSettingComponentConfigurationMode :: Maybe (Val Text)
  , _applicationInsightsApplicationComponentMonitoringSettingComponentName :: Maybe (Val Text)
  , _applicationInsightsApplicationComponentMonitoringSettingCustomComponentConfiguration :: Maybe ApplicationInsightsApplicationComponentConfiguration
  , _applicationInsightsApplicationComponentMonitoringSettingDefaultOverwriteComponentConfiguration :: Maybe ApplicationInsightsApplicationComponentConfiguration
  , _applicationInsightsApplicationComponentMonitoringSettingTier :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApplicationInsightsApplicationComponentMonitoringSetting where
  toJSON ApplicationInsightsApplicationComponentMonitoringSetting{..} =
    object $
    catMaybes
    [ fmap (("ComponentARN",) . toJSON) _applicationInsightsApplicationComponentMonitoringSettingComponentARN
    , fmap (("ComponentConfigurationMode",) . toJSON) _applicationInsightsApplicationComponentMonitoringSettingComponentConfigurationMode
    , fmap (("ComponentName",) . toJSON) _applicationInsightsApplicationComponentMonitoringSettingComponentName
    , fmap (("CustomComponentConfiguration",) . toJSON) _applicationInsightsApplicationComponentMonitoringSettingCustomComponentConfiguration
    , fmap (("DefaultOverwriteComponentConfiguration",) . toJSON) _applicationInsightsApplicationComponentMonitoringSettingDefaultOverwriteComponentConfiguration
    , fmap (("Tier",) . toJSON) _applicationInsightsApplicationComponentMonitoringSettingTier
    ]

-- | Constructor for
-- 'ApplicationInsightsApplicationComponentMonitoringSetting' containing
-- required fields as arguments.
applicationInsightsApplicationComponentMonitoringSetting
  :: ApplicationInsightsApplicationComponentMonitoringSetting
applicationInsightsApplicationComponentMonitoringSetting  =
  ApplicationInsightsApplicationComponentMonitoringSetting
  { _applicationInsightsApplicationComponentMonitoringSettingComponentARN = Nothing
  , _applicationInsightsApplicationComponentMonitoringSettingComponentConfigurationMode = Nothing
  , _applicationInsightsApplicationComponentMonitoringSettingComponentName = Nothing
  , _applicationInsightsApplicationComponentMonitoringSettingCustomComponentConfiguration = Nothing
  , _applicationInsightsApplicationComponentMonitoringSettingDefaultOverwriteComponentConfiguration = Nothing
  , _applicationInsightsApplicationComponentMonitoringSettingTier = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-componentmonitoringsetting.html#cfn-applicationinsights-application-componentmonitoringsetting-componentarn
aiacmsComponentARN :: Lens' ApplicationInsightsApplicationComponentMonitoringSetting (Maybe (Val Text))
aiacmsComponentARN = lens _applicationInsightsApplicationComponentMonitoringSettingComponentARN (\s a -> s { _applicationInsightsApplicationComponentMonitoringSettingComponentARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-componentmonitoringsetting.html#cfn-applicationinsights-application-componentmonitoringsetting-componentconfigurationmode
aiacmsComponentConfigurationMode :: Lens' ApplicationInsightsApplicationComponentMonitoringSetting (Maybe (Val Text))
aiacmsComponentConfigurationMode = lens _applicationInsightsApplicationComponentMonitoringSettingComponentConfigurationMode (\s a -> s { _applicationInsightsApplicationComponentMonitoringSettingComponentConfigurationMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-componentmonitoringsetting.html#cfn-applicationinsights-application-componentmonitoringsetting-componentname
aiacmsComponentName :: Lens' ApplicationInsightsApplicationComponentMonitoringSetting (Maybe (Val Text))
aiacmsComponentName = lens _applicationInsightsApplicationComponentMonitoringSettingComponentName (\s a -> s { _applicationInsightsApplicationComponentMonitoringSettingComponentName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-componentmonitoringsetting.html#cfn-applicationinsights-application-componentmonitoringsetting-customcomponentconfiguration
aiacmsCustomComponentConfiguration :: Lens' ApplicationInsightsApplicationComponentMonitoringSetting (Maybe ApplicationInsightsApplicationComponentConfiguration)
aiacmsCustomComponentConfiguration = lens _applicationInsightsApplicationComponentMonitoringSettingCustomComponentConfiguration (\s a -> s { _applicationInsightsApplicationComponentMonitoringSettingCustomComponentConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-componentmonitoringsetting.html#cfn-applicationinsights-application-componentmonitoringsetting-defaultoverwritecomponentconfiguration
aiacmsDefaultOverwriteComponentConfiguration :: Lens' ApplicationInsightsApplicationComponentMonitoringSetting (Maybe ApplicationInsightsApplicationComponentConfiguration)
aiacmsDefaultOverwriteComponentConfiguration = lens _applicationInsightsApplicationComponentMonitoringSettingDefaultOverwriteComponentConfiguration (\s a -> s { _applicationInsightsApplicationComponentMonitoringSettingDefaultOverwriteComponentConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-componentmonitoringsetting.html#cfn-applicationinsights-application-componentmonitoringsetting-tier
aiacmsTier :: Lens' ApplicationInsightsApplicationComponentMonitoringSetting (Maybe (Val Text))
aiacmsTier = lens _applicationInsightsApplicationComponentMonitoringSettingTier (\s a -> s { _applicationInsightsApplicationComponentMonitoringSettingTier = a })
