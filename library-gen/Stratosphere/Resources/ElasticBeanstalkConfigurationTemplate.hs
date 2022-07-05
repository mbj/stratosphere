{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-configurationtemplate.html

module Stratosphere.Resources.ElasticBeanstalkConfigurationTemplate where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting
import Stratosphere.ResourceProperties.ElasticBeanstalkConfigurationTemplateSourceConfiguration

-- | Full data type definition for ElasticBeanstalkConfigurationTemplate. See
-- 'elasticBeanstalkConfigurationTemplate' for a more convenient
-- constructor.
data ElasticBeanstalkConfigurationTemplate =
  ElasticBeanstalkConfigurationTemplate
  { _elasticBeanstalkConfigurationTemplateApplicationName :: Val Text
  , _elasticBeanstalkConfigurationTemplateDescription :: Maybe (Val Text)
  , _elasticBeanstalkConfigurationTemplateEnvironmentId :: Maybe (Val Text)
  , _elasticBeanstalkConfigurationTemplateOptionSettings :: Maybe [ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting]
  , _elasticBeanstalkConfigurationTemplatePlatformArn :: Maybe (Val Text)
  , _elasticBeanstalkConfigurationTemplateSolutionStackName :: Maybe (Val Text)
  , _elasticBeanstalkConfigurationTemplateSourceConfiguration :: Maybe ElasticBeanstalkConfigurationTemplateSourceConfiguration
  } deriving (Show, Eq)

instance ToResourceProperties ElasticBeanstalkConfigurationTemplate where
  toResourceProperties ElasticBeanstalkConfigurationTemplate{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ElasticBeanstalk::ConfigurationTemplate"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ApplicationName",) . toJSON) _elasticBeanstalkConfigurationTemplateApplicationName
        , fmap (("Description",) . toJSON) _elasticBeanstalkConfigurationTemplateDescription
        , fmap (("EnvironmentId",) . toJSON) _elasticBeanstalkConfigurationTemplateEnvironmentId
        , fmap (("OptionSettings",) . toJSON) _elasticBeanstalkConfigurationTemplateOptionSettings
        , fmap (("PlatformArn",) . toJSON) _elasticBeanstalkConfigurationTemplatePlatformArn
        , fmap (("SolutionStackName",) . toJSON) _elasticBeanstalkConfigurationTemplateSolutionStackName
        , fmap (("SourceConfiguration",) . toJSON) _elasticBeanstalkConfigurationTemplateSourceConfiguration
        ]
    }

-- | Constructor for 'ElasticBeanstalkConfigurationTemplate' containing
-- required fields as arguments.
elasticBeanstalkConfigurationTemplate
  :: Val Text -- ^ 'ebctApplicationName'
  -> ElasticBeanstalkConfigurationTemplate
elasticBeanstalkConfigurationTemplate applicationNamearg =
  ElasticBeanstalkConfigurationTemplate
  { _elasticBeanstalkConfigurationTemplateApplicationName = applicationNamearg
  , _elasticBeanstalkConfigurationTemplateDescription = Nothing
  , _elasticBeanstalkConfigurationTemplateEnvironmentId = Nothing
  , _elasticBeanstalkConfigurationTemplateOptionSettings = Nothing
  , _elasticBeanstalkConfigurationTemplatePlatformArn = Nothing
  , _elasticBeanstalkConfigurationTemplateSolutionStackName = Nothing
  , _elasticBeanstalkConfigurationTemplateSourceConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-applicationname
ebctApplicationName :: Lens' ElasticBeanstalkConfigurationTemplate (Val Text)
ebctApplicationName = lens _elasticBeanstalkConfigurationTemplateApplicationName (\s a -> s { _elasticBeanstalkConfigurationTemplateApplicationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-description
ebctDescription :: Lens' ElasticBeanstalkConfigurationTemplate (Maybe (Val Text))
ebctDescription = lens _elasticBeanstalkConfigurationTemplateDescription (\s a -> s { _elasticBeanstalkConfigurationTemplateDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-environmentid
ebctEnvironmentId :: Lens' ElasticBeanstalkConfigurationTemplate (Maybe (Val Text))
ebctEnvironmentId = lens _elasticBeanstalkConfigurationTemplateEnvironmentId (\s a -> s { _elasticBeanstalkConfigurationTemplateEnvironmentId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-optionsettings
ebctOptionSettings :: Lens' ElasticBeanstalkConfigurationTemplate (Maybe [ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting])
ebctOptionSettings = lens _elasticBeanstalkConfigurationTemplateOptionSettings (\s a -> s { _elasticBeanstalkConfigurationTemplateOptionSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-platformarn
ebctPlatformArn :: Lens' ElasticBeanstalkConfigurationTemplate (Maybe (Val Text))
ebctPlatformArn = lens _elasticBeanstalkConfigurationTemplatePlatformArn (\s a -> s { _elasticBeanstalkConfigurationTemplatePlatformArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-solutionstackname
ebctSolutionStackName :: Lens' ElasticBeanstalkConfigurationTemplate (Maybe (Val Text))
ebctSolutionStackName = lens _elasticBeanstalkConfigurationTemplateSolutionStackName (\s a -> s { _elasticBeanstalkConfigurationTemplateSolutionStackName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-sourceconfiguration
ebctSourceConfiguration :: Lens' ElasticBeanstalkConfigurationTemplate (Maybe ElasticBeanstalkConfigurationTemplateSourceConfiguration)
ebctSourceConfiguration = lens _elasticBeanstalkConfigurationTemplateSourceConfiguration (\s a -> s { _elasticBeanstalkConfigurationTemplateSourceConfiguration = a })
