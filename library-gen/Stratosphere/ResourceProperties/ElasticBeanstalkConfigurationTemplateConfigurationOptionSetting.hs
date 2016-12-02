{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-option-settings.html

module Stratosphere.ResourceProperties.ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

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
  } deriving (Show, Generic)

instance ToJSON ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 64, omitNothingFields = True }

instance FromJSON ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 64, omitNothingFields = True }

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
