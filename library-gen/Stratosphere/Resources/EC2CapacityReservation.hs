{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html

module Stratosphere.Resources.EC2CapacityReservation where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EC2CapacityReservationTagSpecification

-- | Full data type definition for EC2CapacityReservation. See
-- 'ec2CapacityReservation' for a more convenient constructor.
data EC2CapacityReservation =
  EC2CapacityReservation
  { _eC2CapacityReservationAvailabilityZone :: Val Text
  , _eC2CapacityReservationEbsOptimized :: Maybe (Val Bool)
  , _eC2CapacityReservationEndDate :: Maybe (Val Text)
  , _eC2CapacityReservationEndDateType :: Maybe (Val Text)
  , _eC2CapacityReservationEphemeralStorage :: Maybe (Val Bool)
  , _eC2CapacityReservationInstanceCount :: Val Integer
  , _eC2CapacityReservationInstanceMatchCriteria :: Maybe (Val Text)
  , _eC2CapacityReservationInstancePlatform :: Val Text
  , _eC2CapacityReservationInstanceType :: Val Text
  , _eC2CapacityReservationTagSpecifications :: Maybe [EC2CapacityReservationTagSpecification]
  , _eC2CapacityReservationTenancy :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties EC2CapacityReservation where
  toResourceProperties EC2CapacityReservation{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::CapacityReservation"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("AvailabilityZone",) . toJSON) _eC2CapacityReservationAvailabilityZone
        , fmap (("EbsOptimized",) . toJSON) _eC2CapacityReservationEbsOptimized
        , fmap (("EndDate",) . toJSON) _eC2CapacityReservationEndDate
        , fmap (("EndDateType",) . toJSON) _eC2CapacityReservationEndDateType
        , fmap (("EphemeralStorage",) . toJSON) _eC2CapacityReservationEphemeralStorage
        , (Just . ("InstanceCount",) . toJSON) _eC2CapacityReservationInstanceCount
        , fmap (("InstanceMatchCriteria",) . toJSON) _eC2CapacityReservationInstanceMatchCriteria
        , (Just . ("InstancePlatform",) . toJSON) _eC2CapacityReservationInstancePlatform
        , (Just . ("InstanceType",) . toJSON) _eC2CapacityReservationInstanceType
        , fmap (("TagSpecifications",) . toJSON) _eC2CapacityReservationTagSpecifications
        , fmap (("Tenancy",) . toJSON) _eC2CapacityReservationTenancy
        ]
    }

-- | Constructor for 'EC2CapacityReservation' containing required fields as
-- arguments.
ec2CapacityReservation
  :: Val Text -- ^ 'eccrAvailabilityZone'
  -> Val Integer -- ^ 'eccrInstanceCount'
  -> Val Text -- ^ 'eccrInstancePlatform'
  -> Val Text -- ^ 'eccrInstanceType'
  -> EC2CapacityReservation
ec2CapacityReservation availabilityZonearg instanceCountarg instancePlatformarg instanceTypearg =
  EC2CapacityReservation
  { _eC2CapacityReservationAvailabilityZone = availabilityZonearg
  , _eC2CapacityReservationEbsOptimized = Nothing
  , _eC2CapacityReservationEndDate = Nothing
  , _eC2CapacityReservationEndDateType = Nothing
  , _eC2CapacityReservationEphemeralStorage = Nothing
  , _eC2CapacityReservationInstanceCount = instanceCountarg
  , _eC2CapacityReservationInstanceMatchCriteria = Nothing
  , _eC2CapacityReservationInstancePlatform = instancePlatformarg
  , _eC2CapacityReservationInstanceType = instanceTypearg
  , _eC2CapacityReservationTagSpecifications = Nothing
  , _eC2CapacityReservationTenancy = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-availabilityzone
eccrAvailabilityZone :: Lens' EC2CapacityReservation (Val Text)
eccrAvailabilityZone = lens _eC2CapacityReservationAvailabilityZone (\s a -> s { _eC2CapacityReservationAvailabilityZone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-ebsoptimized
eccrEbsOptimized :: Lens' EC2CapacityReservation (Maybe (Val Bool))
eccrEbsOptimized = lens _eC2CapacityReservationEbsOptimized (\s a -> s { _eC2CapacityReservationEbsOptimized = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-enddate
eccrEndDate :: Lens' EC2CapacityReservation (Maybe (Val Text))
eccrEndDate = lens _eC2CapacityReservationEndDate (\s a -> s { _eC2CapacityReservationEndDate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-enddatetype
eccrEndDateType :: Lens' EC2CapacityReservation (Maybe (Val Text))
eccrEndDateType = lens _eC2CapacityReservationEndDateType (\s a -> s { _eC2CapacityReservationEndDateType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-ephemeralstorage
eccrEphemeralStorage :: Lens' EC2CapacityReservation (Maybe (Val Bool))
eccrEphemeralStorage = lens _eC2CapacityReservationEphemeralStorage (\s a -> s { _eC2CapacityReservationEphemeralStorage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-instancecount
eccrInstanceCount :: Lens' EC2CapacityReservation (Val Integer)
eccrInstanceCount = lens _eC2CapacityReservationInstanceCount (\s a -> s { _eC2CapacityReservationInstanceCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-instancematchcriteria
eccrInstanceMatchCriteria :: Lens' EC2CapacityReservation (Maybe (Val Text))
eccrInstanceMatchCriteria = lens _eC2CapacityReservationInstanceMatchCriteria (\s a -> s { _eC2CapacityReservationInstanceMatchCriteria = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-instanceplatform
eccrInstancePlatform :: Lens' EC2CapacityReservation (Val Text)
eccrInstancePlatform = lens _eC2CapacityReservationInstancePlatform (\s a -> s { _eC2CapacityReservationInstancePlatform = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-instancetype
eccrInstanceType :: Lens' EC2CapacityReservation (Val Text)
eccrInstanceType = lens _eC2CapacityReservationInstanceType (\s a -> s { _eC2CapacityReservationInstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-tagspecifications
eccrTagSpecifications :: Lens' EC2CapacityReservation (Maybe [EC2CapacityReservationTagSpecification])
eccrTagSpecifications = lens _eC2CapacityReservationTagSpecifications (\s a -> s { _eC2CapacityReservationTagSpecifications = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-tenancy
eccrTenancy :: Lens' EC2CapacityReservation (Maybe (Val Text))
eccrTenancy = lens _eC2CapacityReservationTenancy (\s a -> s { _eC2CapacityReservationTenancy = a })
