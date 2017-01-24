{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-option-settings.html

module Stratosphere.ResourceProperties.ElasticBeanstalkEnvironmentOptionSettings where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ElasticBeanstalkEnvironmentOptionSettings.
-- | See 'elasticBeanstalkEnvironmentOptionSettings' for a more convenient
-- | constructor.
data ElasticBeanstalkEnvironmentOptionSettings =
  ElasticBeanstalkEnvironmentOptionSettings
  { _elasticBeanstalkEnvironmentOptionSettingsNamespace :: Val Text
  , _elasticBeanstalkEnvironmentOptionSettingsOptionName :: Val Text
  , _elasticBeanstalkEnvironmentOptionSettingsValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON ElasticBeanstalkEnvironmentOptionSettings where
  toJSON ElasticBeanstalkEnvironmentOptionSettings{..} =
    object
    [ "Namespace" .= _elasticBeanstalkEnvironmentOptionSettingsNamespace
    , "OptionName" .= _elasticBeanstalkEnvironmentOptionSettingsOptionName
    , "Value" .= _elasticBeanstalkEnvironmentOptionSettingsValue
    ]

instance FromJSON ElasticBeanstalkEnvironmentOptionSettings where
  parseJSON (Object obj) =
    ElasticBeanstalkEnvironmentOptionSettings <$>
      obj .: "Namespace" <*>
      obj .: "OptionName" <*>
      obj .: "Value"
  parseJSON _ = mempty

-- | Constructor for 'ElasticBeanstalkEnvironmentOptionSettings' containing
-- | required fields as arguments.
elasticBeanstalkEnvironmentOptionSettings
  :: Val Text -- ^ 'ebeosNamespace'
  -> Val Text -- ^ 'ebeosOptionName'
  -> Val Text -- ^ 'ebeosValue'
  -> ElasticBeanstalkEnvironmentOptionSettings
elasticBeanstalkEnvironmentOptionSettings namespacearg optionNamearg valuearg =
  ElasticBeanstalkEnvironmentOptionSettings
  { _elasticBeanstalkEnvironmentOptionSettingsNamespace = namespacearg
  , _elasticBeanstalkEnvironmentOptionSettingsOptionName = optionNamearg
  , _elasticBeanstalkEnvironmentOptionSettingsValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-option-settings.html#cfn-beanstalk-optionsettings-namespace
ebeosNamespace :: Lens' ElasticBeanstalkEnvironmentOptionSettings (Val Text)
ebeosNamespace = lens _elasticBeanstalkEnvironmentOptionSettingsNamespace (\s a -> s { _elasticBeanstalkEnvironmentOptionSettingsNamespace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-option-settings.html#cfn-beanstalk-optionsettings-optionname
ebeosOptionName :: Lens' ElasticBeanstalkEnvironmentOptionSettings (Val Text)
ebeosOptionName = lens _elasticBeanstalkEnvironmentOptionSettingsOptionName (\s a -> s { _elasticBeanstalkEnvironmentOptionSettingsOptionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-option-settings.html#cfn-beanstalk-optionsettings-value
ebeosValue :: Lens' ElasticBeanstalkEnvironmentOptionSettings (Val Text)
ebeosValue = lens _elasticBeanstalkEnvironmentOptionSettingsValue (\s a -> s { _elasticBeanstalkEnvironmentOptionSettingsValue = a })
