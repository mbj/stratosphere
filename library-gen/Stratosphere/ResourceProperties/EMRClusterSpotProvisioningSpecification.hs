
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-spotprovisioningspecification.html

module Stratosphere.ResourceProperties.EMRClusterSpotProvisioningSpecification where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for EMRClusterSpotProvisioningSpecification.
-- See 'emrClusterSpotProvisioningSpecification' for a more convenient
-- constructor.
data EMRClusterSpotProvisioningSpecification =
  EMRClusterSpotProvisioningSpecification
  { _eMRClusterSpotProvisioningSpecificationBlockDurationMinutes :: Maybe (Val Integer)
  , _eMRClusterSpotProvisioningSpecificationTimeoutAction :: Val Text
  , _eMRClusterSpotProvisioningSpecificationTimeoutDurationMinutes :: Val Integer
  } deriving (Show, Eq)

instance ToJSON EMRClusterSpotProvisioningSpecification where
  toJSON EMRClusterSpotProvisioningSpecification{..} =
    object $
    catMaybes
    [ fmap (("BlockDurationMinutes",) . toJSON) _eMRClusterSpotProvisioningSpecificationBlockDurationMinutes
    , (Just . ("TimeoutAction",) . toJSON) _eMRClusterSpotProvisioningSpecificationTimeoutAction
    , (Just . ("TimeoutDurationMinutes",) . toJSON) _eMRClusterSpotProvisioningSpecificationTimeoutDurationMinutes
    ]

-- | Constructor for 'EMRClusterSpotProvisioningSpecification' containing
-- required fields as arguments.
emrClusterSpotProvisioningSpecification
  :: Val Text -- ^ 'emrcspsTimeoutAction'
  -> Val Integer -- ^ 'emrcspsTimeoutDurationMinutes'
  -> EMRClusterSpotProvisioningSpecification
emrClusterSpotProvisioningSpecification timeoutActionarg timeoutDurationMinutesarg =
  EMRClusterSpotProvisioningSpecification
  { _eMRClusterSpotProvisioningSpecificationBlockDurationMinutes = Nothing
  , _eMRClusterSpotProvisioningSpecificationTimeoutAction = timeoutActionarg
  , _eMRClusterSpotProvisioningSpecificationTimeoutDurationMinutes = timeoutDurationMinutesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-spotprovisioningspecification.html#cfn-elasticmapreduce-cluster-spotprovisioningspecification-blockdurationminutes
emrcspsBlockDurationMinutes :: Lens' EMRClusterSpotProvisioningSpecification (Maybe (Val Integer))
emrcspsBlockDurationMinutes = lens _eMRClusterSpotProvisioningSpecificationBlockDurationMinutes (\s a -> s { _eMRClusterSpotProvisioningSpecificationBlockDurationMinutes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-spotprovisioningspecification.html#cfn-elasticmapreduce-cluster-spotprovisioningspecification-timeoutaction
emrcspsTimeoutAction :: Lens' EMRClusterSpotProvisioningSpecification (Val Text)
emrcspsTimeoutAction = lens _eMRClusterSpotProvisioningSpecificationTimeoutAction (\s a -> s { _eMRClusterSpotProvisioningSpecificationTimeoutAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-spotprovisioningspecification.html#cfn-elasticmapreduce-cluster-spotprovisioningspecification-timeoutdurationminutes
emrcspsTimeoutDurationMinutes :: Lens' EMRClusterSpotProvisioningSpecification (Val Integer)
emrcspsTimeoutDurationMinutes = lens _eMRClusterSpotProvisioningSpecificationTimeoutDurationMinutes (\s a -> s { _eMRClusterSpotProvisioningSpecificationTimeoutDurationMinutes = a })
