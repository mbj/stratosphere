{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-option-settings.html

module Stratosphere.ResourceProperties.ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for
-- | ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting. See
-- | 'elasticBeanstalkConfigurationTemplateConfigurationOptionSetting' for a
-- | more convenient constructor.
data ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting =
  ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting
  { _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingNamespace :: Val Text
  , _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingOptionName :: Val Text
  , _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting where
  toJSON ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting{..} =
    object $
    catMaybes
    [ Just ("Namespace" .= _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingNamespace)
    , Just ("OptionName" .= _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingOptionName)
    , Just ("Value" .= _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingValue)
    ]

instance FromJSON ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting where
  parseJSON (Object obj) =
    ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting <$>
      obj .: "Namespace" <*>
      obj .: "OptionName" <*>
      obj .: "Value"
  parseJSON _ = mempty

-- | Constructor for
-- | 'ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting'
-- | containing required fields as arguments.
elasticBeanstalkConfigurationTemplateConfigurationOptionSetting
  :: Val Text -- ^ 'ebctcosNamespace'
  -> Val Text -- ^ 'ebctcosOptionName'
  -> Val Text -- ^ 'ebctcosValue'
  -> ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting
elasticBeanstalkConfigurationTemplateConfigurationOptionSetting namespacearg optionNamearg valuearg =
  ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting
  { _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingNamespace = namespacearg
  , _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingOptionName = optionNamearg
  , _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-option-settings.html#cfn-beanstalk-optionsettings-namespace
ebctcosNamespace :: Lens' ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting (Val Text)
ebctcosNamespace = lens _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingNamespace (\s a -> s { _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingNamespace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-option-settings.html#cfn-beanstalk-optionsettings-optionname
ebctcosOptionName :: Lens' ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting (Val Text)
ebctcosOptionName = lens _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingOptionName (\s a -> s { _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingOptionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-option-settings.html#cfn-beanstalk-optionsettings-value
ebctcosValue :: Lens' ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting (Val Text)
ebctcosValue = lens _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingValue (\s a -> s { _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingValue = a })
