{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-option-settings.html

module Stratosphere.ResourceProperties.ElasticBeanstalkEnvironmentOptionSetting where

import Stratosphere.ResourceImports


-- | Full data type definition for ElasticBeanstalkEnvironmentOptionSetting.
-- See 'elasticBeanstalkEnvironmentOptionSetting' for a more convenient
-- constructor.
data ElasticBeanstalkEnvironmentOptionSetting =
  ElasticBeanstalkEnvironmentOptionSetting
  { _elasticBeanstalkEnvironmentOptionSettingNamespace :: Val Text
  , _elasticBeanstalkEnvironmentOptionSettingOptionName :: Val Text
  , _elasticBeanstalkEnvironmentOptionSettingResourceName :: Maybe (Val Text)
  , _elasticBeanstalkEnvironmentOptionSettingValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ElasticBeanstalkEnvironmentOptionSetting where
  toJSON ElasticBeanstalkEnvironmentOptionSetting{..} =
    object $
    catMaybes
    [ (Just . ("Namespace",) . toJSON) _elasticBeanstalkEnvironmentOptionSettingNamespace
    , (Just . ("OptionName",) . toJSON) _elasticBeanstalkEnvironmentOptionSettingOptionName
    , fmap (("ResourceName",) . toJSON) _elasticBeanstalkEnvironmentOptionSettingResourceName
    , fmap (("Value",) . toJSON) _elasticBeanstalkEnvironmentOptionSettingValue
    ]

-- | Constructor for 'ElasticBeanstalkEnvironmentOptionSetting' containing
-- required fields as arguments.
elasticBeanstalkEnvironmentOptionSetting
  :: Val Text -- ^ 'ebeosNamespace'
  -> Val Text -- ^ 'ebeosOptionName'
  -> ElasticBeanstalkEnvironmentOptionSetting
elasticBeanstalkEnvironmentOptionSetting namespacearg optionNamearg =
  ElasticBeanstalkEnvironmentOptionSetting
  { _elasticBeanstalkEnvironmentOptionSettingNamespace = namespacearg
  , _elasticBeanstalkEnvironmentOptionSettingOptionName = optionNamearg
  , _elasticBeanstalkEnvironmentOptionSettingResourceName = Nothing
  , _elasticBeanstalkEnvironmentOptionSettingValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-option-settings.html#cfn-beanstalk-optionsettings-namespace
ebeosNamespace :: Lens' ElasticBeanstalkEnvironmentOptionSetting (Val Text)
ebeosNamespace = lens _elasticBeanstalkEnvironmentOptionSettingNamespace (\s a -> s { _elasticBeanstalkEnvironmentOptionSettingNamespace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-option-settings.html#cfn-beanstalk-optionsettings-optionname
ebeosOptionName :: Lens' ElasticBeanstalkEnvironmentOptionSetting (Val Text)
ebeosOptionName = lens _elasticBeanstalkEnvironmentOptionSettingOptionName (\s a -> s { _elasticBeanstalkEnvironmentOptionSettingOptionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-option-settings.html#cfn-elasticbeanstalk-environment-optionsetting-resourcename
ebeosResourceName :: Lens' ElasticBeanstalkEnvironmentOptionSetting (Maybe (Val Text))
ebeosResourceName = lens _elasticBeanstalkEnvironmentOptionSettingResourceName (\s a -> s { _elasticBeanstalkEnvironmentOptionSettingResourceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-option-settings.html#cfn-beanstalk-optionsettings-value
ebeosValue :: Lens' ElasticBeanstalkEnvironmentOptionSetting (Maybe (Val Text))
ebeosValue = lens _elasticBeanstalkEnvironmentOptionSettingValue (\s a -> s { _elasticBeanstalkEnvironmentOptionSettingValue = a })
