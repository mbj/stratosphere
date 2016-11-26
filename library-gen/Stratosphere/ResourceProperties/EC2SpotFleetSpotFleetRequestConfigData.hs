{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html

module Stratosphere.ResourceProperties.EC2SpotFleetSpotFleetRequestConfigData where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EC2SpotFleetSpotFleetRequestConfigData. See
-- | 'ec2SpotFleetSpotFleetRequestConfigData' for a more convenient
-- | constructor.
data EC2SpotFleetSpotFleetRequestConfigData =
  EC2SpotFleetSpotFleetRequestConfigData
  { _eC2SpotFleetSpotFleetRequestConfigDataAllocationStrategy :: Maybe (Val Text)
  , _eC2SpotFleetSpotFleetRequestConfigDataExcessCapacityTerminationPolicy :: Maybe (Val Text)
  , _eC2SpotFleetSpotFleetRequestConfigDataIamFleetRole :: Val Text
  , _eC2SpotFleetSpotFleetRequestConfigDataSpotPrice :: Val Text
  , _eC2SpotFleetSpotFleetRequestConfigDataTargetCapacity :: Val Integer'
  , _eC2SpotFleetSpotFleetRequestConfigDataTerminateInstancesWithExpiration :: Maybe (Val Bool')
  , _eC2SpotFleetSpotFleetRequestConfigDataValidFrom :: Maybe (Val Text)
  , _eC2SpotFleetSpotFleetRequestConfigDataValidUntil :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON EC2SpotFleetSpotFleetRequestConfigData where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 39, omitNothingFields = True }

instance FromJSON EC2SpotFleetSpotFleetRequestConfigData where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 39, omitNothingFields = True }

-- | Constructor for 'EC2SpotFleetSpotFleetRequestConfigData' containing
-- | required fields as arguments.
ec2SpotFleetSpotFleetRequestConfigData
  :: Val Text -- ^ 'ecsfsfrcdIamFleetRole'
  -> Val Text -- ^ 'ecsfsfrcdSpotPrice'
  -> Val Integer' -- ^ 'ecsfsfrcdTargetCapacity'
  -> EC2SpotFleetSpotFleetRequestConfigData
ec2SpotFleetSpotFleetRequestConfigData iamFleetRolearg spotPricearg targetCapacityarg =
  EC2SpotFleetSpotFleetRequestConfigData
  { _eC2SpotFleetSpotFleetRequestConfigDataAllocationStrategy = Nothing
  , _eC2SpotFleetSpotFleetRequestConfigDataExcessCapacityTerminationPolicy = Nothing
  , _eC2SpotFleetSpotFleetRequestConfigDataIamFleetRole = iamFleetRolearg
  , _eC2SpotFleetSpotFleetRequestConfigDataSpotPrice = spotPricearg
  , _eC2SpotFleetSpotFleetRequestConfigDataTargetCapacity = targetCapacityarg
  , _eC2SpotFleetSpotFleetRequestConfigDataTerminateInstancesWithExpiration = Nothing
  , _eC2SpotFleetSpotFleetRequestConfigDataValidFrom = Nothing
  , _eC2SpotFleetSpotFleetRequestConfigDataValidUntil = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-allocationstrategy
ecsfsfrcdAllocationStrategy :: Lens' EC2SpotFleetSpotFleetRequestConfigData (Maybe (Val Text))
ecsfsfrcdAllocationStrategy = lens _eC2SpotFleetSpotFleetRequestConfigDataAllocationStrategy (\s a -> s { _eC2SpotFleetSpotFleetRequestConfigDataAllocationStrategy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-excesscapacityterminationpolicy
ecsfsfrcdExcessCapacityTerminationPolicy :: Lens' EC2SpotFleetSpotFleetRequestConfigData (Maybe (Val Text))
ecsfsfrcdExcessCapacityTerminationPolicy = lens _eC2SpotFleetSpotFleetRequestConfigDataExcessCapacityTerminationPolicy (\s a -> s { _eC2SpotFleetSpotFleetRequestConfigDataExcessCapacityTerminationPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-iamfleetrole
ecsfsfrcdIamFleetRole :: Lens' EC2SpotFleetSpotFleetRequestConfigData (Val Text)
ecsfsfrcdIamFleetRole = lens _eC2SpotFleetSpotFleetRequestConfigDataIamFleetRole (\s a -> s { _eC2SpotFleetSpotFleetRequestConfigDataIamFleetRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-spotprice
ecsfsfrcdSpotPrice :: Lens' EC2SpotFleetSpotFleetRequestConfigData (Val Text)
ecsfsfrcdSpotPrice = lens _eC2SpotFleetSpotFleetRequestConfigDataSpotPrice (\s a -> s { _eC2SpotFleetSpotFleetRequestConfigDataSpotPrice = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-targetcapacity
ecsfsfrcdTargetCapacity :: Lens' EC2SpotFleetSpotFleetRequestConfigData (Val Integer')
ecsfsfrcdTargetCapacity = lens _eC2SpotFleetSpotFleetRequestConfigDataTargetCapacity (\s a -> s { _eC2SpotFleetSpotFleetRequestConfigDataTargetCapacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-terminateinstanceswithexpiration
ecsfsfrcdTerminateInstancesWithExpiration :: Lens' EC2SpotFleetSpotFleetRequestConfigData (Maybe (Val Bool'))
ecsfsfrcdTerminateInstancesWithExpiration = lens _eC2SpotFleetSpotFleetRequestConfigDataTerminateInstancesWithExpiration (\s a -> s { _eC2SpotFleetSpotFleetRequestConfigDataTerminateInstancesWithExpiration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-validfrom
ecsfsfrcdValidFrom :: Lens' EC2SpotFleetSpotFleetRequestConfigData (Maybe (Val Text))
ecsfsfrcdValidFrom = lens _eC2SpotFleetSpotFleetRequestConfigDataValidFrom (\s a -> s { _eC2SpotFleetSpotFleetRequestConfigDataValidFrom = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-validuntil
ecsfsfrcdValidUntil :: Lens' EC2SpotFleetSpotFleetRequestConfigData (Maybe (Val Text))
ecsfsfrcdValidUntil = lens _eC2SpotFleetSpotFleetRequestConfigDataValidUntil (\s a -> s { _eC2SpotFleetSpotFleetRequestConfigDataValidUntil = a })
