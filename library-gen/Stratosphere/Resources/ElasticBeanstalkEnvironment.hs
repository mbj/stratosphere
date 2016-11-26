{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html

module Stratosphere.Resources.ElasticBeanstalkEnvironment where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ElasticBeanstalkEnvironmentOptionSettings
import Stratosphere.ResourceProperties.ElasticBeanstalkEnvironmentTier

-- | Full data type definition for ElasticBeanstalkEnvironment. See
-- | 'elasticBeanstalkEnvironment' for a more convenient constructor.
data ElasticBeanstalkEnvironment =
  ElasticBeanstalkEnvironment
  { _elasticBeanstalkEnvironmentApplicationName :: Val Text
  , _elasticBeanstalkEnvironmentCNAMEPrefix :: Maybe (Val Text)
  , _elasticBeanstalkEnvironmentDescription :: Maybe (Val Text)
  , _elasticBeanstalkEnvironmentEnvironmentName :: Maybe (Val Text)
  , _elasticBeanstalkEnvironmentOptionSettings :: Maybe [ElasticBeanstalkEnvironmentOptionSettings]
  , _elasticBeanstalkEnvironmentSolutionStackName :: Maybe (Val Text)
  , _elasticBeanstalkEnvironmentTemplateName :: Maybe (Val Text)
  , _elasticBeanstalkEnvironmentTier :: Maybe ElasticBeanstalkEnvironmentTier
  , _elasticBeanstalkEnvironmentVersionLabel :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON ElasticBeanstalkEnvironment where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

instance FromJSON ElasticBeanstalkEnvironment where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

-- | Constructor for 'ElasticBeanstalkEnvironment' containing required fields
-- | as arguments.
elasticBeanstalkEnvironment
  :: Val Text -- ^ 'ebeApplicationName'
  -> ElasticBeanstalkEnvironment
elasticBeanstalkEnvironment applicationNamearg =
  ElasticBeanstalkEnvironment
  { _elasticBeanstalkEnvironmentApplicationName = applicationNamearg
  , _elasticBeanstalkEnvironmentCNAMEPrefix = Nothing
  , _elasticBeanstalkEnvironmentDescription = Nothing
  , _elasticBeanstalkEnvironmentEnvironmentName = Nothing
  , _elasticBeanstalkEnvironmentOptionSettings = Nothing
  , _elasticBeanstalkEnvironmentSolutionStackName = Nothing
  , _elasticBeanstalkEnvironmentTemplateName = Nothing
  , _elasticBeanstalkEnvironmentTier = Nothing
  , _elasticBeanstalkEnvironmentVersionLabel = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-applicationname
ebeApplicationName :: Lens' ElasticBeanstalkEnvironment (Val Text)
ebeApplicationName = lens _elasticBeanstalkEnvironmentApplicationName (\s a -> s { _elasticBeanstalkEnvironmentApplicationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-cnameprefix
ebeCNAMEPrefix :: Lens' ElasticBeanstalkEnvironment (Maybe (Val Text))
ebeCNAMEPrefix = lens _elasticBeanstalkEnvironmentCNAMEPrefix (\s a -> s { _elasticBeanstalkEnvironmentCNAMEPrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-description
ebeDescription :: Lens' ElasticBeanstalkEnvironment (Maybe (Val Text))
ebeDescription = lens _elasticBeanstalkEnvironmentDescription (\s a -> s { _elasticBeanstalkEnvironmentDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-name
ebeEnvironmentName :: Lens' ElasticBeanstalkEnvironment (Maybe (Val Text))
ebeEnvironmentName = lens _elasticBeanstalkEnvironmentEnvironmentName (\s a -> s { _elasticBeanstalkEnvironmentEnvironmentName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-optionsettings
ebeOptionSettings :: Lens' ElasticBeanstalkEnvironment (Maybe [ElasticBeanstalkEnvironmentOptionSettings])
ebeOptionSettings = lens _elasticBeanstalkEnvironmentOptionSettings (\s a -> s { _elasticBeanstalkEnvironmentOptionSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-solutionstackname
ebeSolutionStackName :: Lens' ElasticBeanstalkEnvironment (Maybe (Val Text))
ebeSolutionStackName = lens _elasticBeanstalkEnvironmentSolutionStackName (\s a -> s { _elasticBeanstalkEnvironmentSolutionStackName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-templatename
ebeTemplateName :: Lens' ElasticBeanstalkEnvironment (Maybe (Val Text))
ebeTemplateName = lens _elasticBeanstalkEnvironmentTemplateName (\s a -> s { _elasticBeanstalkEnvironmentTemplateName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-tier
ebeTier :: Lens' ElasticBeanstalkEnvironment (Maybe ElasticBeanstalkEnvironmentTier)
ebeTier = lens _elasticBeanstalkEnvironmentTier (\s a -> s { _elasticBeanstalkEnvironmentTier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-versionlabel
ebeVersionLabel :: Lens' ElasticBeanstalkEnvironment (Maybe (Val Text))
ebeVersionLabel = lens _elasticBeanstalkEnvironmentVersionLabel (\s a -> s { _elasticBeanstalkEnvironmentVersionLabel = a })
