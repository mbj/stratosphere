
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-componentconfiguration.html

module Stratosphere.ResourceProperties.ApplicationInsightsApplicationComponentConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ApplicationInsightsApplicationConfigurationDetails
import Stratosphere.ResourceProperties.ApplicationInsightsApplicationSubComponentTypeConfiguration

-- | Full data type definition for
-- ApplicationInsightsApplicationComponentConfiguration. See
-- 'applicationInsightsApplicationComponentConfiguration' for a more
-- convenient constructor.
data ApplicationInsightsApplicationComponentConfiguration =
  ApplicationInsightsApplicationComponentConfiguration
  { _applicationInsightsApplicationComponentConfigurationConfigurationDetails :: Maybe ApplicationInsightsApplicationConfigurationDetails
  , _applicationInsightsApplicationComponentConfigurationSubComponentTypeConfigurations :: Maybe [ApplicationInsightsApplicationSubComponentTypeConfiguration]
  } deriving (Show, Eq)

instance ToJSON ApplicationInsightsApplicationComponentConfiguration where
  toJSON ApplicationInsightsApplicationComponentConfiguration{..} =
    object $
    catMaybes
    [ fmap (("ConfigurationDetails",) . toJSON) _applicationInsightsApplicationComponentConfigurationConfigurationDetails
    , fmap (("SubComponentTypeConfigurations",) . toJSON) _applicationInsightsApplicationComponentConfigurationSubComponentTypeConfigurations
    ]

-- | Constructor for 'ApplicationInsightsApplicationComponentConfiguration'
-- containing required fields as arguments.
applicationInsightsApplicationComponentConfiguration
  :: ApplicationInsightsApplicationComponentConfiguration
applicationInsightsApplicationComponentConfiguration  =
  ApplicationInsightsApplicationComponentConfiguration
  { _applicationInsightsApplicationComponentConfigurationConfigurationDetails = Nothing
  , _applicationInsightsApplicationComponentConfigurationSubComponentTypeConfigurations = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-componentconfiguration.html#cfn-applicationinsights-application-componentconfiguration-configurationdetails
aiaccConfigurationDetails :: Lens' ApplicationInsightsApplicationComponentConfiguration (Maybe ApplicationInsightsApplicationConfigurationDetails)
aiaccConfigurationDetails = lens _applicationInsightsApplicationComponentConfigurationConfigurationDetails (\s a -> s { _applicationInsightsApplicationComponentConfigurationConfigurationDetails = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-componentconfiguration.html#cfn-applicationinsights-application-componentconfiguration-subcomponenttypeconfigurations
aiaccSubComponentTypeConfigurations :: Lens' ApplicationInsightsApplicationComponentConfiguration (Maybe [ApplicationInsightsApplicationSubComponentTypeConfiguration])
aiaccSubComponentTypeConfigurations = lens _applicationInsightsApplicationComponentConfigurationSubComponentTypeConfigurations (\s a -> s { _applicationInsightsApplicationComponentConfigurationSubComponentTypeConfigurations = a })
