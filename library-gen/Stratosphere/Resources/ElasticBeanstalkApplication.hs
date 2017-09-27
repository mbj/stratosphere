{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk.html

module Stratosphere.Resources.ElasticBeanstalkApplication where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.ElasticBeanstalkApplicationApplicationResourceLifecycleConfig

-- | Full data type definition for ElasticBeanstalkApplication. See
-- 'elasticBeanstalkApplication' for a more convenient constructor.
data ElasticBeanstalkApplication =
  ElasticBeanstalkApplication
  { _elasticBeanstalkApplicationApplicationName :: Maybe (Val Text)
  , _elasticBeanstalkApplicationDescription :: Maybe (Val Text)
  , _elasticBeanstalkApplicationResourceLifecycleConfig :: Maybe ElasticBeanstalkApplicationApplicationResourceLifecycleConfig
  } deriving (Show, Eq)

instance ToJSON ElasticBeanstalkApplication where
  toJSON ElasticBeanstalkApplication{..} =
    object $
    catMaybes
    [ fmap (("ApplicationName",) . toJSON) _elasticBeanstalkApplicationApplicationName
    , fmap (("Description",) . toJSON) _elasticBeanstalkApplicationDescription
    , fmap (("ResourceLifecycleConfig",) . toJSON) _elasticBeanstalkApplicationResourceLifecycleConfig
    ]

instance FromJSON ElasticBeanstalkApplication where
  parseJSON (Object obj) =
    ElasticBeanstalkApplication <$>
      (obj .:? "ApplicationName") <*>
      (obj .:? "Description") <*>
      (obj .:? "ResourceLifecycleConfig")
  parseJSON _ = mempty

-- | Constructor for 'ElasticBeanstalkApplication' containing required fields
-- as arguments.
elasticBeanstalkApplication
  :: ElasticBeanstalkApplication
elasticBeanstalkApplication  =
  ElasticBeanstalkApplication
  { _elasticBeanstalkApplicationApplicationName = Nothing
  , _elasticBeanstalkApplicationDescription = Nothing
  , _elasticBeanstalkApplicationResourceLifecycleConfig = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk.html#cfn-elasticbeanstalk-application-name
ebaApplicationName :: Lens' ElasticBeanstalkApplication (Maybe (Val Text))
ebaApplicationName = lens _elasticBeanstalkApplicationApplicationName (\s a -> s { _elasticBeanstalkApplicationApplicationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk.html#cfn-elasticbeanstalk-application-description
ebaDescription :: Lens' ElasticBeanstalkApplication (Maybe (Val Text))
ebaDescription = lens _elasticBeanstalkApplicationDescription (\s a -> s { _elasticBeanstalkApplicationDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk.html#cfn-elasticbeanstalk-application-resourcelifecycleconfig
ebaResourceLifecycleConfig :: Lens' ElasticBeanstalkApplication (Maybe ElasticBeanstalkApplicationApplicationResourceLifecycleConfig)
ebaResourceLifecycleConfig = lens _elasticBeanstalkApplicationResourceLifecycleConfig (\s a -> s { _elasticBeanstalkApplicationResourceLifecycleConfig = a })
