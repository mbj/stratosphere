
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-volumespecification.html

module Stratosphere.ResourceProperties.EMRClusterVolumeSpecification where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for EMRClusterVolumeSpecification. See
-- 'emrClusterVolumeSpecification' for a more convenient constructor.
data EMRClusterVolumeSpecification =
  EMRClusterVolumeSpecification
  { _eMRClusterVolumeSpecificationIops :: Maybe (Val Integer)
  , _eMRClusterVolumeSpecificationSizeInGB :: Val Integer
  , _eMRClusterVolumeSpecificationVolumeType :: Val Text
  } deriving (Show, Eq)

instance ToJSON EMRClusterVolumeSpecification where
  toJSON EMRClusterVolumeSpecification{..} =
    object $
    catMaybes
    [ fmap (("Iops",) . toJSON) _eMRClusterVolumeSpecificationIops
    , (Just . ("SizeInGB",) . toJSON) _eMRClusterVolumeSpecificationSizeInGB
    , (Just . ("VolumeType",) . toJSON) _eMRClusterVolumeSpecificationVolumeType
    ]

-- | Constructor for 'EMRClusterVolumeSpecification' containing required
-- fields as arguments.
emrClusterVolumeSpecification
  :: Val Integer -- ^ 'emrcvsSizeInGB'
  -> Val Text -- ^ 'emrcvsVolumeType'
  -> EMRClusterVolumeSpecification
emrClusterVolumeSpecification sizeInGBarg volumeTypearg =
  EMRClusterVolumeSpecification
  { _eMRClusterVolumeSpecificationIops = Nothing
  , _eMRClusterVolumeSpecificationSizeInGB = sizeInGBarg
  , _eMRClusterVolumeSpecificationVolumeType = volumeTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-volumespecification.html#cfn-elasticmapreduce-cluster-volumespecification-iops
emrcvsIops :: Lens' EMRClusterVolumeSpecification (Maybe (Val Integer))
emrcvsIops = lens _eMRClusterVolumeSpecificationIops (\s a -> s { _eMRClusterVolumeSpecificationIops = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-volumespecification.html#cfn-elasticmapreduce-cluster-volumespecification-sizeingb
emrcvsSizeInGB :: Lens' EMRClusterVolumeSpecification (Val Integer)
emrcvsSizeInGB = lens _eMRClusterVolumeSpecificationSizeInGB (\s a -> s { _eMRClusterVolumeSpecificationSizeInGB = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-volumespecification.html#cfn-elasticmapreduce-cluster-volumespecification-volumetype
emrcvsVolumeType :: Lens' EMRClusterVolumeSpecification (Val Text)
emrcvsVolumeType = lens _eMRClusterVolumeSpecificationVolumeType (\s a -> s { _eMRClusterVolumeSpecificationVolumeType = a })
