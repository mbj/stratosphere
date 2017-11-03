{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-elasticgpuspecification.html

module Stratosphere.ResourceProperties.EC2InstanceElasticGpuSpecification where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EC2InstanceElasticGpuSpecification. See
-- 'ec2InstanceElasticGpuSpecification' for a more convenient constructor.
data EC2InstanceElasticGpuSpecification =
  EC2InstanceElasticGpuSpecification
  { _eC2InstanceElasticGpuSpecificationType :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2InstanceElasticGpuSpecification where
  toJSON EC2InstanceElasticGpuSpecification{..} =
    object $
    catMaybes
    [ (Just . ("Type",) . toJSON) _eC2InstanceElasticGpuSpecificationType
    ]

instance FromJSON EC2InstanceElasticGpuSpecification where
  parseJSON (Object obj) =
    EC2InstanceElasticGpuSpecification <$>
      (obj .: "Type")
  parseJSON _ = mempty

-- | Constructor for 'EC2InstanceElasticGpuSpecification' containing required
-- fields as arguments.
ec2InstanceElasticGpuSpecification
  :: Val Text -- ^ 'eciegsType'
  -> EC2InstanceElasticGpuSpecification
ec2InstanceElasticGpuSpecification typearg =
  EC2InstanceElasticGpuSpecification
  { _eC2InstanceElasticGpuSpecificationType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-elasticgpuspecification.html#cfn-ec2-instance-elasticgpuspecification-type
eciegsType :: Lens' EC2InstanceElasticGpuSpecification (Val Text)
eciegsType = lens _eC2InstanceElasticGpuSpecificationType (\s a -> s { _eC2InstanceElasticGpuSpecificationType = a })
