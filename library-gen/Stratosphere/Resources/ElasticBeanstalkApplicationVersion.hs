{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-version.html

module Stratosphere.Resources.ElasticBeanstalkApplicationVersion where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ElasticBeanstalkApplicationVersionSourceBundle

-- | Full data type definition for ElasticBeanstalkApplicationVersion. See
-- 'elasticBeanstalkApplicationVersion' for a more convenient constructor.
data ElasticBeanstalkApplicationVersion =
  ElasticBeanstalkApplicationVersion
  { _elasticBeanstalkApplicationVersionApplicationName :: Val Text
  , _elasticBeanstalkApplicationVersionDescription :: Maybe (Val Text)
  , _elasticBeanstalkApplicationVersionSourceBundle :: ElasticBeanstalkApplicationVersionSourceBundle
  } deriving (Show, Eq)

instance ToResourceProperties ElasticBeanstalkApplicationVersion where
  toResourceProperties ElasticBeanstalkApplicationVersion{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ElasticBeanstalk::ApplicationVersion"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ (Just . ("ApplicationName",) . toJSON) _elasticBeanstalkApplicationVersionApplicationName
        , fmap (("Description",) . toJSON) _elasticBeanstalkApplicationVersionDescription
        , (Just . ("SourceBundle",) . toJSON) _elasticBeanstalkApplicationVersionSourceBundle
        ]
    }

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
