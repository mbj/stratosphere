{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-version.html

module Stratosphere.Resources.ElasticBeanstalkApplicationVersion where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ElasticBeanstalkApplicationVersionSourceBundle

-- | Full data type definition for ElasticBeanstalkApplicationVersion. See
-- | 'elasticBeanstalkApplicationVersion' for a more convenient constructor.
data ElasticBeanstalkApplicationVersion =
  ElasticBeanstalkApplicationVersion
  { _elasticBeanstalkApplicationVersionApplicationName :: Val Text
  , _elasticBeanstalkApplicationVersionDescription :: Maybe (Val Text)
  , _elasticBeanstalkApplicationVersionSourceBundle :: ElasticBeanstalkApplicationVersionSourceBundle
  } deriving (Show, Eq, Generic)

instance ToJSON ElasticBeanstalkApplicationVersion where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 35, omitNothingFields = True }

instance FromJSON ElasticBeanstalkApplicationVersion where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 35, omitNothingFields = True }

-- | Constructor for 'ElasticBeanstalkApplicationVersion' containing required
-- | fields as arguments.
elasticBeanstalkApplicationVersion
  :: Val Text -- ^ 'ebavApplicationName'
  -> ElasticBeanstalkApplicationVersionSourceBundle -- ^ 'ebavSourceBundle'
  -> ElasticBeanstalkApplicationVersion
elasticBeanstalkApplicationVersion applicationNamearg sourceBundlearg =
  ElasticBeanstalkApplicationVersion
  { _elasticBeanstalkApplicationVersionApplicationName = applicationNamearg
  , _elasticBeanstalkApplicationVersionDescription = Nothing
  , _elasticBeanstalkApplicationVersionSourceBundle = sourceBundlearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-version.html#cfn-elasticbeanstalk-applicationversion-applicationname
ebavApplicationName :: Lens' ElasticBeanstalkApplicationVersion (Val Text)
ebavApplicationName = lens _elasticBeanstalkApplicationVersionApplicationName (\s a -> s { _elasticBeanstalkApplicationVersionApplicationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-version.html#cfn-elasticbeanstalk-applicationversion-description
ebavDescription :: Lens' ElasticBeanstalkApplicationVersion (Maybe (Val Text))
ebavDescription = lens _elasticBeanstalkApplicationVersionDescription (\s a -> s { _elasticBeanstalkApplicationVersionDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-version.html#cfn-elasticbeanstalk-applicationversion-sourcebundle
ebavSourceBundle :: Lens' ElasticBeanstalkApplicationVersion ElasticBeanstalkApplicationVersionSourceBundle
ebavSourceBundle = lens _elasticBeanstalkApplicationVersionSourceBundle (\s a -> s { _elasticBeanstalkApplicationVersionSourceBundle = a })
