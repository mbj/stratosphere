{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk.html

module Stratosphere.Resources.ElasticBeanstalkApplication where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ElasticBeanstalkApplication. See
-- | 'elasticBeanstalkApplication' for a more convenient constructor.
data ElasticBeanstalkApplication =
  ElasticBeanstalkApplication
  { _elasticBeanstalkApplicationApplicationName :: Maybe (Val Text)
  , _elasticBeanstalkApplicationDescription :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ElasticBeanstalkApplication where
  toJSON ElasticBeanstalkApplication{..} =
    object
    [ "ApplicationName" .= _elasticBeanstalkApplicationApplicationName
    , "Description" .= _elasticBeanstalkApplicationDescription
    ]

instance FromJSON ElasticBeanstalkApplication where
  parseJSON (Object obj) =
    ElasticBeanstalkApplication <$>
      obj .: "ApplicationName" <*>
      obj .: "Description"
  parseJSON _ = mempty

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
