{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html

module Stratosphere.Resources.EC2EC2Fleet where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EC2EC2FleetFleetLaunchTemplateConfigRequest
import Stratosphere.ResourceProperties.EC2EC2FleetOnDemandOptionsRequest
import Stratosphere.ResourceProperties.EC2EC2FleetSpotOptionsRequest
import Stratosphere.ResourceProperties.EC2EC2FleetTagSpecification
import Stratosphere.ResourceProperties.EC2EC2FleetTargetCapacitySpecificationRequest

-- | Full data type definition for EC2EC2Fleet. See 'ec2EC2Fleet' for a more
-- convenient constructor.
data EC2EC2Fleet =
  EC2EC2Fleet
  { _eC2EC2FleetExcessCapacityTerminationPolicy :: Maybe (Val Text)
  , _eC2EC2FleetLaunchTemplateConfigs :: [EC2EC2FleetFleetLaunchTemplateConfigRequest]
  , _eC2EC2FleetOnDemandOptions :: Maybe EC2EC2FleetOnDemandOptionsRequest
  , _eC2EC2FleetReplaceUnhealthyInstances :: Maybe (Val Bool)
  , _eC2EC2FleetSpotOptions :: Maybe EC2EC2FleetSpotOptionsRequest
  , _eC2EC2FleetTagSpecifications :: Maybe [EC2EC2FleetTagSpecification]
  , _eC2EC2FleetTargetCapacitySpecification :: EC2EC2FleetTargetCapacitySpecificationRequest
  , _eC2EC2FleetTerminateInstancesWithExpiration :: Maybe (Val Bool)
  , _eC2EC2FleetType :: Maybe (Val Text)
  , _eC2EC2FleetValidFrom :: Maybe (Val Text)
  , _eC2EC2FleetValidUntil :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties EC2EC2Fleet where
  toResourceProperties EC2EC2Fleet{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::EC2Fleet"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("ExcessCapacityTerminationPolicy",) . toJSON) _eC2EC2FleetExcessCapacityTerminationPolicy
        , (Just . ("LaunchTemplateConfigs",) . toJSON) _eC2EC2FleetLaunchTemplateConfigs
        , fmap (("OnDemandOptions",) . toJSON) _eC2EC2FleetOnDemandOptions
        , fmap (("ReplaceUnhealthyInstances",) . toJSON) _eC2EC2FleetReplaceUnhealthyInstances
        , fmap (("SpotOptions",) . toJSON) _eC2EC2FleetSpotOptions
        , fmap (("TagSpecifications",) . toJSON) _eC2EC2FleetTagSpecifications
        , (Just . ("TargetCapacitySpecification",) . toJSON) _eC2EC2FleetTargetCapacitySpecification
        , fmap (("TerminateInstancesWithExpiration",) . toJSON) _eC2EC2FleetTerminateInstancesWithExpiration
        , fmap (("Type",) . toJSON) _eC2EC2FleetType
        , fmap (("ValidFrom",) . toJSON) _eC2EC2FleetValidFrom
        , fmap (("ValidUntil",) . toJSON) _eC2EC2FleetValidUntil
        ]
    }

-- | Constructor for 'EC2EC2Fleet' containing required fields as arguments.
ec2EC2Fleet
  :: [EC2EC2FleetFleetLaunchTemplateConfigRequest] -- ^ 'ececfLaunchTemplateConfigs'
  -> EC2EC2FleetTargetCapacitySpecificationRequest -- ^ 'ececfTargetCapacitySpecification'
  -> EC2EC2Fleet
ec2EC2Fleet launchTemplateConfigsarg targetCapacitySpecificationarg =
  EC2EC2Fleet
  { _eC2EC2FleetExcessCapacityTerminationPolicy = Nothing
  , _eC2EC2FleetLaunchTemplateConfigs = launchTemplateConfigsarg
  , _eC2EC2FleetOnDemandOptions = Nothing
  , _eC2EC2FleetReplaceUnhealthyInstances = Nothing
  , _eC2EC2FleetSpotOptions = Nothing
  , _eC2EC2FleetTagSpecifications = Nothing
  , _eC2EC2FleetTargetCapacitySpecification = targetCapacitySpecificationarg
  , _eC2EC2FleetTerminateInstancesWithExpiration = Nothing
  , _eC2EC2FleetType = Nothing
  , _eC2EC2FleetValidFrom = Nothing
  , _eC2EC2FleetValidUntil = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-excesscapacityterminationpolicy
ececfExcessCapacityTerminationPolicy :: Lens' EC2EC2Fleet (Maybe (Val Text))
ececfExcessCapacityTerminationPolicy = lens _eC2EC2FleetExcessCapacityTerminationPolicy (\s a -> s { _eC2EC2FleetExcessCapacityTerminationPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-launchtemplateconfigs
ececfLaunchTemplateConfigs :: Lens' EC2EC2Fleet [EC2EC2FleetFleetLaunchTemplateConfigRequest]
ececfLaunchTemplateConfigs = lens _eC2EC2FleetLaunchTemplateConfigs (\s a -> s { _eC2EC2FleetLaunchTemplateConfigs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-ondemandoptions
ececfOnDemandOptions :: Lens' EC2EC2Fleet (Maybe EC2EC2FleetOnDemandOptionsRequest)
ececfOnDemandOptions = lens _eC2EC2FleetOnDemandOptions (\s a -> s { _eC2EC2FleetOnDemandOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-replaceunhealthyinstances
ececfReplaceUnhealthyInstances :: Lens' EC2EC2Fleet (Maybe (Val Bool))
ececfReplaceUnhealthyInstances = lens _eC2EC2FleetReplaceUnhealthyInstances (\s a -> s { _eC2EC2FleetReplaceUnhealthyInstances = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-spotoptions
ececfSpotOptions :: Lens' EC2EC2Fleet (Maybe EC2EC2FleetSpotOptionsRequest)
ececfSpotOptions = lens _eC2EC2FleetSpotOptions (\s a -> s { _eC2EC2FleetSpotOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-tagspecifications
ececfTagSpecifications :: Lens' EC2EC2Fleet (Maybe [EC2EC2FleetTagSpecification])
ececfTagSpecifications = lens _eC2EC2FleetTagSpecifications (\s a -> s { _eC2EC2FleetTagSpecifications = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-targetcapacityspecification
ececfTargetCapacitySpecification :: Lens' EC2EC2Fleet EC2EC2FleetTargetCapacitySpecificationRequest
ececfTargetCapacitySpecification = lens _eC2EC2FleetTargetCapacitySpecification (\s a -> s { _eC2EC2FleetTargetCapacitySpecification = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-terminateinstanceswithexpiration
ececfTerminateInstancesWithExpiration :: Lens' EC2EC2Fleet (Maybe (Val Bool))
ececfTerminateInstancesWithExpiration = lens _eC2EC2FleetTerminateInstancesWithExpiration (\s a -> s { _eC2EC2FleetTerminateInstancesWithExpiration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-type
ececfType :: Lens' EC2EC2Fleet (Maybe (Val Text))
ececfType = lens _eC2EC2FleetType (\s a -> s { _eC2EC2FleetType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-validfrom
ececfValidFrom :: Lens' EC2EC2Fleet (Maybe (Val Text))
ececfValidFrom = lens _eC2EC2FleetValidFrom (\s a -> s { _eC2EC2FleetValidFrom = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-validuntil
ececfValidUntil :: Lens' EC2EC2Fleet (Maybe (Val Text))
ececfValidUntil = lens _eC2EC2FleetValidUntil (\s a -> s { _eC2EC2FleetValidUntil = a })
