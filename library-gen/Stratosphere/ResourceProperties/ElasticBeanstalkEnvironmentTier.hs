{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment-tier.html

module Stratosphere.ResourceProperties.ElasticBeanstalkEnvironmentTier where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ElasticBeanstalkEnvironmentTier. See
-- | 'elasticBeanstalkEnvironmentTier' for a more convenient constructor.
data ElasticBeanstalkEnvironmentTier =
  ElasticBeanstalkEnvironmentTier
  { _elasticBeanstalkEnvironmentTierName :: Maybe (Val Text)
  , _elasticBeanstalkEnvironmentTierType :: Maybe (Val Text)
  , _elasticBeanstalkEnvironmentTierVersion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ElasticBeanstalkEnvironmentTier where
  toJSON ElasticBeanstalkEnvironmentTier{..} =
    object $
    catMaybes
    [ ("Name" .=) <$> _elasticBeanstalkEnvironmentTierName
    , ("Type" .=) <$> _elasticBeanstalkEnvironmentTierType
    , ("Version" .=) <$> _elasticBeanstalkEnvironmentTierVersion
    ]

instance FromJSON ElasticBeanstalkEnvironmentTier where
  parseJSON (Object obj) =
    ElasticBeanstalkEnvironmentTier <$>
      obj .:? "Name" <*>
      obj .:? "Type" <*>
      obj .:? "Version"
  parseJSON _ = mempty

-- | Constructor for 'ElasticBeanstalkEnvironmentTier' containing required
-- | fields as arguments.
elasticBeanstalkEnvironmentTier
  :: ElasticBeanstalkEnvironmentTier
elasticBeanstalkEnvironmentTier  =
  ElasticBeanstalkEnvironmentTier
  { _elasticBeanstalkEnvironmentTierName = Nothing
  , _elasticBeanstalkEnvironmentTierType = Nothing
  , _elasticBeanstalkEnvironmentTierVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment-tier.html#cfn-beanstalk-env-tier-name
ebetName :: Lens' ElasticBeanstalkEnvironmentTier (Maybe (Val Text))
ebetName = lens _elasticBeanstalkEnvironmentTierName (\s a -> s { _elasticBeanstalkEnvironmentTierName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment-tier.html#cfn-beanstalk-env-tier-type
ebetType :: Lens' ElasticBeanstalkEnvironmentTier (Maybe (Val Text))
ebetType = lens _elasticBeanstalkEnvironmentTierType (\s a -> s { _elasticBeanstalkEnvironmentTierType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment-tier.html#cfn-beanstalk-env-tier-version
ebetVersion :: Lens' ElasticBeanstalkEnvironmentTier (Maybe (Val Text))
ebetVersion = lens _elasticBeanstalkEnvironmentTierVersion (\s a -> s { _elasticBeanstalkEnvironmentTierVersion = a })
