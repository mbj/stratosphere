{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-beanstalk-configurationtemplate.html

module Stratosphere.Resources.ElasticBeanstalkConfigurationTemplate where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting
import Stratosphere.ResourceProperties.ElasticBeanstalkConfigurationTemplateSourceConfiguration

-- | Full data type definition for ElasticBeanstalkConfigurationTemplate. See
-- | 'elasticBeanstalkConfigurationTemplate' for a more convenient
-- | constructor.
data ElasticBeanstalkConfigurationTemplate =
  ElasticBeanstalkConfigurationTemplate
  { _elasticBeanstalkConfigurationTemplateApplicationName :: Val Text
  , _elasticBeanstalkConfigurationTemplateDescription :: Maybe (Val Text)
  , _elasticBeanstalkConfigurationTemplateEnvironmentId :: Maybe (Val Text)
  , _elasticBeanstalkConfigurationTemplateOptionSettings :: Maybe [ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting]
  , _elasticBeanstalkConfigurationTemplateSolutionStackName :: Maybe (Val Text)
  , _elasticBeanstalkConfigurationTemplateSourceConfiguration :: Maybe ElasticBeanstalkConfigurationTemplateSourceConfiguration
  } deriving (Show, Eq)

instance ToJSON ElasticBeanstalkConfigurationTemplate where
  toJSON ElasticBeanstalkConfigurationTemplate{..} =
    object
    [ "ApplicationName" .= _elasticBeanstalkConfigurationTemplateApplicationName
    , "Description" .= _elasticBeanstalkConfigurationTemplateDescription
    , "EnvironmentId" .= _elasticBeanstalkConfigurationTemplateEnvironmentId
    , "OptionSettings" .= _elasticBeanstalkConfigurationTemplateOptionSettings
    , "SolutionStackName" .= _elasticBeanstalkConfigurationTemplateSolutionStackName
    , "SourceConfiguration" .= _elasticBeanstalkConfigurationTemplateSourceConfiguration
    ]

instance FromJSON ElasticBeanstalkConfigurationTemplate where
  parseJSON (Object obj) =
    ElasticBeanstalkConfigurationTemplate <$>
      obj .: "ApplicationName" <*>
      obj .: "Description" <*>
      obj .: "EnvironmentId" <*>
      obj .: "OptionSettings" <*>
      obj .: "SolutionStackName" <*>
      obj .: "SourceConfiguration"
  parseJSON _ = mempty

-- | Constructor for 'ElasticBeanstalkConfigurationTemplate' containing
-- | required fields as arguments.
elasticBeanstalkConfigurationTemplate
  :: Val Text -- ^ 'ebctApplicationName'
  -> ElasticBeanstalkConfigurationTemplate
elasticBeanstalkConfigurationTemplate applicationNamearg =
  ElasticBeanstalkConfigurationTemplate
  { _elasticBeanstalkConfigurationTemplateApplicationName = applicationNamearg
  , _elasticBeanstalkConfigurationTemplateDescription = Nothing
  , _elasticBeanstalkConfigurationTemplateEnvironmentId = Nothing
  , _elasticBeanstalkConfigurationTemplateOptionSettings = Nothing
  , _elasticBeanstalkConfigurationTemplateSolutionStackName = Nothing
  , _elasticBeanstalkConfigurationTemplateSourceConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-beanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-applicationname
ebctApplicationName :: Lens' ElasticBeanstalkConfigurationTemplate (Val Text)
ebctApplicationName = lens _elasticBeanstalkConfigurationTemplateApplicationName (\s a -> s { _elasticBeanstalkConfigurationTemplateApplicationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-beanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-description
ebctDescription :: Lens' ElasticBeanstalkConfigurationTemplate (Maybe (Val Text))
ebctDescription = lens _elasticBeanstalkConfigurationTemplateDescription (\s a -> s { _elasticBeanstalkConfigurationTemplateDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-beanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-environmentid
ebctEnvironmentId :: Lens' ElasticBeanstalkConfigurationTemplate (Maybe (Val Text))
ebctEnvironmentId = lens _elasticBeanstalkConfigurationTemplateEnvironmentId (\s a -> s { _elasticBeanstalkConfigurationTemplateEnvironmentId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-beanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-optionsettings
ebctOptionSettings :: Lens' ElasticBeanstalkConfigurationTemplate (Maybe [ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting])
ebctOptionSettings = lens _elasticBeanstalkConfigurationTemplateOptionSettings (\s a -> s { _elasticBeanstalkConfigurationTemplateOptionSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-beanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-solutionstackname
ebctSolutionStackName :: Lens' ElasticBeanstalkConfigurationTemplate (Maybe (Val Text))
ebctSolutionStackName = lens _elasticBeanstalkConfigurationTemplateSolutionStackName (\s a -> s { _elasticBeanstalkConfigurationTemplateSolutionStackName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-beanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-sourceconfiguration
ebctSourceConfiguration :: Lens' ElasticBeanstalkConfigurationTemplate (Maybe ElasticBeanstalkConfigurationTemplateSourceConfiguration)
ebctSourceConfiguration = lens _elasticBeanstalkConfigurationTemplateSourceConfiguration (\s a -> s { _elasticBeanstalkConfigurationTemplateSourceConfiguration = a })
