{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-spotprovisioningspecification.html

module Stratosphere.ResourceProperties.EMRInstanceFleetConfigSpotProvisioningSpecification where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- EMRInstanceFleetConfigSpotProvisioningSpecification. See
-- 'emrInstanceFleetConfigSpotProvisioningSpecification' for a more
-- convenient constructor.
data EMRInstanceFleetConfigSpotProvisioningSpecification =
  EMRInstanceFleetConfigSpotProvisioningSpecification
  { _eMRInstanceFleetConfigSpotProvisioningSpecificationBlockDurationMinutes :: Maybe (Val Integer)
  , _eMRInstanceFleetConfigSpotProvisioningSpecificationTimeoutAction :: Val Text
  , _eMRInstanceFleetConfigSpotProvisioningSpecificationTimeoutDurationMinutes :: Val Integer
  } deriving (Show, Eq)

instance ToJSON EMRInstanceFleetConfigSpotProvisioningSpecification where
  toJSON EMRInstanceFleetConfigSpotProvisioningSpecification{..} =
    object $
    catMaybes
    [ fmap (("BlockDurationMinutes",) . toJSON . fmap Integer') _eMRInstanceFleetConfigSpotProvisioningSpecificationBlockDurationMinutes
    , (Just . ("TimeoutAction",) . toJSON) _eMRInstanceFleetConfigSpotProvisioningSpecificationTimeoutAction
    , (Just . ("TimeoutDurationMinutes",) . toJSON . fmap Integer') _eMRInstanceFleetConfigSpotProvisioningSpecificationTimeoutDurationMinutes
    ]

instance FromJSON EMRInstanceFleetConfigSpotProvisioningSpecification where
  parseJSON (Object obj) =
    EMRInstanceFleetConfigSpotProvisioningSpecification <$>
      fmap (fmap (fmap unInteger')) (obj .:? "BlockDurationMinutes") <*>
      (obj .: "TimeoutAction") <*>
      fmap (fmap unInteger') (obj .: "TimeoutDurationMinutes")
  parseJSON _ = mempty

-- | Constructor for 'EMRInstanceFleetConfigSpotProvisioningSpecification'
-- containing required fields as arguments.
emrInstanceFleetConfigSpotProvisioningSpecification
  :: Val Text -- ^ 'emrifcspsTimeoutAction'
  -> Val Integer -- ^ 'emrifcspsTimeoutDurationMinutes'
  -> EMRInstanceFleetConfigSpotProvisioningSpecification
emrInstanceFleetConfigSpotProvisioningSpecification timeoutActionarg timeoutDurationMinutesarg =
  EMRInstanceFleetConfigSpotProvisioningSpecification
  { _eMRInstanceFleetConfigSpotProvisioningSpecificationBlockDurationMinutes = Nothing
  , _eMRInstanceFleetConfigSpotProvisioningSpecificationTimeoutAction = timeoutActionarg
  , _eMRInstanceFleetConfigSpotProvisioningSpecificationTimeoutDurationMinutes = timeoutDurationMinutesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-spotprovisioningspecification.html#cfn-elasticmapreduce-instancefleetconfig-spotprovisioningspecification-blockdurationminutes
emrifcspsBlockDurationMinutes :: Lens' EMRInstanceFleetConfigSpotProvisioningSpecification (Maybe (Val Integer))
emrifcspsBlockDurationMinutes = lens _eMRInstanceFleetConfigSpotProvisioningSpecificationBlockDurationMinutes (\s a -> s { _eMRInstanceFleetConfigSpotProvisioningSpecificationBlockDurationMinutes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-spotprovisioningspecification.html#cfn-elasticmapreduce-instancefleetconfig-spotprovisioningspecification-timeoutaction
emrifcspsTimeoutAction :: Lens' EMRInstanceFleetConfigSpotProvisioningSpecification (Val Text)
emrifcspsTimeoutAction = lens _eMRInstanceFleetConfigSpotProvisioningSpecificationTimeoutAction (\s a -> s { _eMRInstanceFleetConfigSpotProvisioningSpecificationTimeoutAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-spotprovisioningspecification.html#cfn-elasticmapreduce-instancefleetconfig-spotprovisioningspecification-timeoutdurationminutes
emrifcspsTimeoutDurationMinutes :: Lens' EMRInstanceFleetConfigSpotProvisioningSpecification (Val Integer)
emrifcspsTimeoutDurationMinutes = lens _eMRInstanceFleetConfigSpotProvisioningSpecificationTimeoutDurationMinutes (\s a -> s { _eMRInstanceFleetConfigSpotProvisioningSpecificationTimeoutDurationMinutes = a })
