{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk.html

module Stratosphere.Resources.ElasticBeanstalkApplication where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ElasticBeanstalkApplication. See
-- | 'elasticBeanstalkApplication' for a more convenient constructor.
data ElasticBeanstalkApplication =
  ElasticBeanstalkApplication
  { _elasticBeanstalkApplicationApplicationName :: Maybe (Val Text)
  , _elasticBeanstalkApplicationDescription :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON ElasticBeanstalkApplication where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

instance FromJSON ElasticBeanstalkApplication where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

-- | Constructor for 'ElasticBeanstalkApplication' containing required fields
-- | as arguments.
elasticBeanstalkApplication
  :: ElasticBeanstalkApplication
elasticBeanstalkApplication  =
  ElasticBeanstalkApplication
  { _elasticBeanstalkApplicationApplicationName = Nothing
  , _elasticBeanstalkApplicationDescription = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk.html#cfn-elasticbeanstalk-application-name
ebaApplicationName :: Lens' ElasticBeanstalkApplication (Maybe (Val Text))
ebaApplicationName = lens _elasticBeanstalkApplicationApplicationName (\s a -> s { _elasticBeanstalkApplicationApplicationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk.html#cfn-elasticbeanstalk-application-description
ebaDescription :: Lens' ElasticBeanstalkApplication (Maybe (Val Text))
ebaDescription = lens _elasticBeanstalkApplicationDescription (\s a -> s { _elasticBeanstalkApplicationDescription = a })
