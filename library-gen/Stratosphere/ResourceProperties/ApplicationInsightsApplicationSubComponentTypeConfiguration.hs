{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-subcomponenttypeconfiguration.html

module Stratosphere.ResourceProperties.ApplicationInsightsApplicationSubComponentTypeConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ApplicationInsightsApplicationSubComponentConfigurationDetails

-- | Full data type definition for
-- ApplicationInsightsApplicationSubComponentTypeConfiguration. See
-- 'applicationInsightsApplicationSubComponentTypeConfiguration' for a more
-- convenient constructor.
data ApplicationInsightsApplicationSubComponentTypeConfiguration =
  ApplicationInsightsApplicationSubComponentTypeConfiguration
  { _applicationInsightsApplicationSubComponentTypeConfigurationSubComponentConfigurationDetails :: ApplicationInsightsApplicationSubComponentConfigurationDetails
  , _applicationInsightsApplicationSubComponentTypeConfigurationSubComponentType :: Val Text
  } deriving (Show, Eq)

instance ToJSON ApplicationInsightsApplicationSubComponentTypeConfiguration where
  toJSON ApplicationInsightsApplicationSubComponentTypeConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("SubComponentConfigurationDetails",) . toJSON) _applicationInsightsApplicationSubComponentTypeConfigurationSubComponentConfigurationDetails
    , (Just . ("SubComponentType",) . toJSON) _applicationInsightsApplicationSubComponentTypeConfigurationSubComponentType
    ]

-- | Constructor for
-- 'ApplicationInsightsApplicationSubComponentTypeConfiguration' containing
-- required fields as arguments.
applicationInsightsApplicationSubComponentTypeConfiguration
  :: ApplicationInsightsApplicationSubComponentConfigurationDetails -- ^ 'aiasctcSubComponentConfigurationDetails'
  -> Val Text -- ^ 'aiasctcSubComponentType'
  -> ApplicationInsightsApplicationSubComponentTypeConfiguration
applicationInsightsApplicationSubComponentTypeConfiguration subComponentConfigurationDetailsarg subComponentTypearg =
  ApplicationInsightsApplicationSubComponentTypeConfiguration
  { _applicationInsightsApplicationSubComponentTypeConfigurationSubComponentConfigurationDetails = subComponentConfigurationDetailsarg
  , _applicationInsightsApplicationSubComponentTypeConfigurationSubComponentType = subComponentTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-subcomponenttypeconfiguration.html#cfn-applicationinsights-application-subcomponenttypeconfiguration-subcomponentconfigurationdetails
aiasctcSubComponentConfigurationDetails :: Lens' ApplicationInsightsApplicationSubComponentTypeConfiguration ApplicationInsightsApplicationSubComponentConfigurationDetails
aiasctcSubComponentConfigurationDetails = lens _applicationInsightsApplicationSubComponentTypeConfigurationSubComponentConfigurationDetails (\s a -> s { _applicationInsightsApplicationSubComponentTypeConfigurationSubComponentConfigurationDetails = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-subcomponenttypeconfiguration.html#cfn-applicationinsights-application-subcomponenttypeconfiguration-subcomponenttype
aiasctcSubComponentType :: Lens' ApplicationInsightsApplicationSubComponentTypeConfiguration (Val Text)
aiasctcSubComponentType = lens _applicationInsightsApplicationSubComponentTypeConfigurationSubComponentType (\s a -> s { _applicationInsightsApplicationSubComponentTypeConfigurationSubComponentType = a })
