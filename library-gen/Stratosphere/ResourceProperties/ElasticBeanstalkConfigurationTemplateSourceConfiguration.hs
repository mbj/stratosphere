{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-sourceconfiguration.html

module Stratosphere.ResourceProperties.ElasticBeanstalkConfigurationTemplateSourceConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticBeanstalkConfigurationTemplateSourceConfiguration. See
-- 'elasticBeanstalkConfigurationTemplateSourceConfiguration' for a more
-- convenient constructor.
data ElasticBeanstalkConfigurationTemplateSourceConfiguration =
  ElasticBeanstalkConfigurationTemplateSourceConfiguration
  { _elasticBeanstalkConfigurationTemplateSourceConfigurationApplicationName :: Val Text
  , _elasticBeanstalkConfigurationTemplateSourceConfigurationTemplateName :: Val Text
  } deriving (Show, Eq)

instance ToJSON ElasticBeanstalkConfigurationTemplateSourceConfiguration where
  toJSON ElasticBeanstalkConfigurationTemplateSourceConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("ApplicationName",) . toJSON) _elasticBeanstalkConfigurationTemplateSourceConfigurationApplicationName
    , (Just . ("TemplateName",) . toJSON) _elasticBeanstalkConfigurationTemplateSourceConfigurationTemplateName
    ]

instance FromJSON ElasticBeanstalkConfigurationTemplateSourceConfiguration where
  parseJSON (Object obj) =
    ElasticBeanstalkConfigurationTemplateSourceConfiguration <$>
      (obj .: "ApplicationName") <*>
      (obj .: "TemplateName")
  parseJSON _ = mempty

-- | Constructor for
-- 'ElasticBeanstalkConfigurationTemplateSourceConfiguration' containing
-- required fields as arguments.
elasticBeanstalkConfigurationTemplateSourceConfiguration
  :: Val Text -- ^ 'ebctscApplicationName'
  -> Val Text -- ^ 'ebctscTemplateName'
  -> ElasticBeanstalkConfigurationTemplateSourceConfiguration
elasticBeanstalkConfigurationTemplateSourceConfiguration applicationNamearg templateNamearg =
  ElasticBeanstalkConfigurationTemplateSourceConfiguration
  { _elasticBeanstalkConfigurationTemplateSourceConfigurationApplicationName = applicationNamearg
  , _elasticBeanstalkConfigurationTemplateSourceConfigurationTemplateName = templateNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-sourceconfiguration.html#cfn-elasticbeanstalk-configurationtemplate-sourceconfiguration-applicationname
ebctscApplicationName :: Lens' ElasticBeanstalkConfigurationTemplateSourceConfiguration (Val Text)
ebctscApplicationName = lens _elasticBeanstalkConfigurationTemplateSourceConfigurationApplicationName (\s a -> s { _elasticBeanstalkConfigurationTemplateSourceConfigurationApplicationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-sourceconfiguration.html#cfn-elasticbeanstalk-configurationtemplate-sourceconfiguration-templatename
ebctscTemplateName :: Lens' ElasticBeanstalkConfigurationTemplateSourceConfiguration (Val Text)
ebctscTemplateName = lens _elasticBeanstalkConfigurationTemplateSourceConfigurationTemplateName (\s a -> s { _elasticBeanstalkConfigurationTemplateSourceConfigurationTemplateName = a })
