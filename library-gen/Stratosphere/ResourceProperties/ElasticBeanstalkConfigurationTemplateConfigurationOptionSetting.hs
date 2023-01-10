
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-configurationoptionsetting.html

module Stratosphere.ResourceProperties.ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting. See
-- 'elasticBeanstalkConfigurationTemplateConfigurationOptionSetting' for a
-- more convenient constructor.
data ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting =
  ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting
  { _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingNamespace :: Val Text
  , _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingOptionName :: Val Text
  , _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingResourceName :: Maybe (Val Text)
  , _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting where
  toJSON ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting{..} =
    object $
    catMaybes
    [ (Just . ("Namespace",) . toJSON) _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingNamespace
    , (Just . ("OptionName",) . toJSON) _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingOptionName
    , fmap (("ResourceName",) . toJSON) _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingResourceName
    , fmap (("Value",) . toJSON) _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingValue
    ]

-- | Constructor for
-- 'ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting'
-- containing required fields as arguments.
elasticBeanstalkConfigurationTemplateConfigurationOptionSetting
  :: Val Text -- ^ 'ebctcosNamespace'
  -> Val Text -- ^ 'ebctcosOptionName'
  -> ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting
elasticBeanstalkConfigurationTemplateConfigurationOptionSetting namespacearg optionNamearg =
  ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting
  { _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingNamespace = namespacearg
  , _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingOptionName = optionNamearg
  , _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingResourceName = Nothing
  , _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-configurationoptionsetting.html#cfn-elasticbeanstalk-configurationtemplate-configurationoptionsetting-namespace
ebctcosNamespace :: Lens' ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting (Val Text)
ebctcosNamespace = lens _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingNamespace (\s a -> s { _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingNamespace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-configurationoptionsetting.html#cfn-elasticbeanstalk-configurationtemplate-configurationoptionsetting-optionname
ebctcosOptionName :: Lens' ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting (Val Text)
ebctcosOptionName = lens _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingOptionName (\s a -> s { _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingOptionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-configurationoptionsetting.html#cfn-elasticbeanstalk-configurationtemplate-configurationoptionsetting-resourcename
ebctcosResourceName :: Lens' ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting (Maybe (Val Text))
ebctcosResourceName = lens _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingResourceName (\s a -> s { _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingResourceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-configurationoptionsetting.html#cfn-elasticbeanstalk-configurationtemplate-configurationoptionsetting-value
ebctcosValue :: Lens' ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting (Maybe (Val Text))
ebctcosValue = lens _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingValue (\s a -> s { _elasticBeanstalkConfigurationTemplateConfigurationOptionSettingValue = a })
