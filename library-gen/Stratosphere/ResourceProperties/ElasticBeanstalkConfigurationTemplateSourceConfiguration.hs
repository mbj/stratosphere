{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-configurationtemplate-sourceconfiguration.html

module Stratosphere.ResourceProperties.ElasticBeanstalkConfigurationTemplateSourceConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for
-- | ElasticBeanstalkConfigurationTemplateSourceConfiguration. See
-- | 'elasticBeanstalkConfigurationTemplateSourceConfiguration' for a more
-- | convenient constructor.
data ElasticBeanstalkConfigurationTemplateSourceConfiguration =
  ElasticBeanstalkConfigurationTemplateSourceConfiguration
  { _elasticBeanstalkConfigurationTemplateSourceConfigurationApplicationName :: Val Text
  , _elasticBeanstalkConfigurationTemplateSourceConfigurationTemplateName :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON ElasticBeanstalkConfigurationTemplateSourceConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 57, omitNothingFields = True }

instance FromJSON ElasticBeanstalkConfigurationTemplateSourceConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 57, omitNothingFields = True }

-- | Constructor for
-- | 'ElasticBeanstalkConfigurationTemplateSourceConfiguration' containing
-- | required fields as arguments.
elasticBeanstalkConfigurationTemplateSourceConfiguration
  :: Val Text -- ^ 'ebctscApplicationName'
  -> Val Text -- ^ 'ebctscTemplateName'
  -> ElasticBeanstalkConfigurationTemplateSourceConfiguration
elasticBeanstalkConfigurationTemplateSourceConfiguration applicationNamearg templateNamearg =
  ElasticBeanstalkConfigurationTemplateSourceConfiguration
  { _elasticBeanstalkConfigurationTemplateSourceConfigurationApplicationName = applicationNamearg
  , _elasticBeanstalkConfigurationTemplateSourceConfigurationTemplateName = templateNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-configurationtemplate-sourceconfiguration.html#cfn-beanstalk-configurationtemplate-sourceconfiguration-applicationname
ebctscApplicationName :: Lens' ElasticBeanstalkConfigurationTemplateSourceConfiguration (Val Text)
ebctscApplicationName = lens _elasticBeanstalkConfigurationTemplateSourceConfigurationApplicationName (\s a -> s { _elasticBeanstalkConfigurationTemplateSourceConfigurationApplicationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-configurationtemplate-sourceconfiguration.html#cfn-beanstalk-configurationtemplate-sourceconfiguration-templatename
ebctscTemplateName :: Lens' ElasticBeanstalkConfigurationTemplateSourceConfiguration (Val Text)
ebctscTemplateName = lens _elasticBeanstalkConfigurationTemplateSourceConfigurationTemplateName (\s a -> s { _elasticBeanstalkConfigurationTemplateSourceConfigurationTemplateName = a })
