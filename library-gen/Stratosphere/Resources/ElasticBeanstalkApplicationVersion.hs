{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-version.html

module Stratosphere.Resources.ElasticBeanstalkApplicationVersion where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.ElasticBeanstalkApplicationVersionSourceBundle

-- | Full data type definition for ElasticBeanstalkApplicationVersion. See
-- 'elasticBeanstalkApplicationVersion' for a more convenient constructor.
data ElasticBeanstalkApplicationVersion =
  ElasticBeanstalkApplicationVersion
  { _elasticBeanstalkApplicationVersionApplicationName :: Val Text
  , _elasticBeanstalkApplicationVersionDescription :: Maybe (Val Text)
  , _elasticBeanstalkApplicationVersionSourceBundle :: ElasticBeanstalkApplicationVersionSourceBundle
  } deriving (Show, Eq)

instance ToJSON ElasticBeanstalkApplicationVersion where
  toJSON ElasticBeanstalkApplicationVersion{..} =
    object $
    catMaybes
    [ (Just . ("ApplicationName",) . toJSON) _elasticBeanstalkApplicationVersionApplicationName
    , fmap (("Description",) . toJSON) _elasticBeanstalkApplicationVersionDescription
    , (Just . ("SourceBundle",) . toJSON) _elasticBeanstalkApplicationVersionSourceBundle
    ]

instance FromJSON ElasticBeanstalkApplicationVersion where
  parseJSON (Object obj) =
    ElasticBeanstalkApplicationVersion <$>
      (obj .: "ApplicationName") <*>
      (obj .:? "Description") <*>
      (obj .: "SourceBundle")
  parseJSON _ = mempty

-- | Constructor for 'ElasticBeanstalkApplicationVersion' containing required
-- fields as arguments.
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
