{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html

module Stratosphere.ResourceProperties.BatchComputeEnvironmentComputeResources where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for BatchComputeEnvironmentComputeResources.
-- See 'batchComputeEnvironmentComputeResources' for a more convenient
-- constructor.
data BatchComputeEnvironmentComputeResources =
  BatchComputeEnvironmentComputeResources
  { _batchComputeEnvironmentComputeResourcesBidPercentage :: Maybe (Val Integer)
  , _batchComputeEnvironmentComputeResourcesDesiredvCpus :: Maybe (Val Integer)
  , _batchComputeEnvironmentComputeResourcesEc2KeyPair :: Maybe (Val Text)
  , _batchComputeEnvironmentComputeResourcesImageId :: Maybe (Val Text)
  , _batchComputeEnvironmentComputeResourcesInstanceRole :: Val Text
  , _batchComputeEnvironmentComputeResourcesInstanceTypes :: ValList Text
  , _batchComputeEnvironmentComputeResourcesMaxvCpus :: Val Integer
  , _batchComputeEnvironmentComputeResourcesMinvCpus :: Val Integer
  , _batchComputeEnvironmentComputeResourcesSecurityGroupIds :: ValList Text
  , _batchComputeEnvironmentComputeResourcesSpotIamFleetRole :: Maybe (Val Text)
  , _batchComputeEnvironmentComputeResourcesSubnets :: ValList Text
  , _batchComputeEnvironmentComputeResourcesTags :: Maybe Object
  , _batchComputeEnvironmentComputeResourcesType :: Val Text
  } deriving (Show, Eq)

instance ToJSON BatchComputeEnvironmentComputeResources where
  toJSON BatchComputeEnvironmentComputeResources{..} =
    object $
    catMaybes
    [ fmap (("BidPercentage",) . toJSON . fmap Integer') _batchComputeEnvironmentComputeResourcesBidPercentage
    , fmap (("DesiredvCpus",) . toJSON . fmap Integer') _batchComputeEnvironmentComputeResourcesDesiredvCpus
    , fmap (("Ec2KeyPair",) . toJSON) _batchComputeEnvironmentComputeResourcesEc2KeyPair
    , fmap (("ImageId",) . toJSON) _batchComputeEnvironmentComputeResourcesImageId
    , (Just . ("InstanceRole",) . toJSON) _batchComputeEnvironmentComputeResourcesInstanceRole
    , (Just . ("InstanceTypes",) . toJSON) _batchComputeEnvironmentComputeResourcesInstanceTypes
    , (Just . ("MaxvCpus",) . toJSON . fmap Integer') _batchComputeEnvironmentComputeResourcesMaxvCpus
    , (Just . ("MinvCpus",) . toJSON . fmap Integer') _batchComputeEnvironmentComputeResourcesMinvCpus
    , (Just . ("SecurityGroupIds",) . toJSON) _batchComputeEnvironmentComputeResourcesSecurityGroupIds
    , fmap (("SpotIamFleetRole",) . toJSON) _batchComputeEnvironmentComputeResourcesSpotIamFleetRole
    , (Just . ("Subnets",) . toJSON) _batchComputeEnvironmentComputeResourcesSubnets
    , fmap (("Tags",) . toJSON) _batchComputeEnvironmentComputeResourcesTags
    , (Just . ("Type",) . toJSON) _batchComputeEnvironmentComputeResourcesType
    ]

instance FromJSON BatchComputeEnvironmentComputeResources where
  parseJSON (Object obj) =
    BatchComputeEnvironmentComputeResources <$>
      fmap (fmap (fmap unInteger')) (obj .:? "BidPercentage") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "DesiredvCpus") <*>
      (obj .:? "Ec2KeyPair") <*>
      (obj .:? "ImageId") <*>
      (obj .: "InstanceRole") <*>
      (obj .: "InstanceTypes") <*>
      fmap (fmap unInteger') (obj .: "MaxvCpus") <*>
      fmap (fmap unInteger') (obj .: "MinvCpus") <*>
      (obj .: "SecurityGroupIds") <*>
      (obj .:? "SpotIamFleetRole") <*>
      (obj .: "Subnets") <*>
      (obj .:? "Tags") <*>
      (obj .: "Type")
  parseJSON _ = mempty

-- | Constructor for 'BatchComputeEnvironmentComputeResources' containing
-- required fields as arguments.
batchComputeEnvironmentComputeResources
  :: Val Text -- ^ 'bcecrInstanceRole'
  -> ValList Text -- ^ 'bcecrInstanceTypes'
  -> Val Integer -- ^ 'bcecrMaxvCpus'
  -> Val Integer -- ^ 'bcecrMinvCpus'
  -> ValList Text -- ^ 'bcecrSecurityGroupIds'
  -> ValList Text -- ^ 'bcecrSubnets'
  -> Val Text -- ^ 'bcecrType'
  -> BatchComputeEnvironmentComputeResources
batchComputeEnvironmentComputeResources instanceRolearg instanceTypesarg maxvCpusarg minvCpusarg securityGroupIdsarg subnetsarg typearg =
  BatchComputeEnvironmentComputeResources
  { _batchComputeEnvironmentComputeResourcesBidPercentage = Nothing
  , _batchComputeEnvironmentComputeResourcesDesiredvCpus = Nothing
  , _batchComputeEnvironmentComputeResourcesEc2KeyPair = Nothing
  , _batchComputeEnvironmentComputeResourcesImageId = Nothing
  , _batchComputeEnvironmentComputeResourcesInstanceRole = instanceRolearg
  , _batchComputeEnvironmentComputeResourcesInstanceTypes = instanceTypesarg
  , _batchComputeEnvironmentComputeResourcesMaxvCpus = maxvCpusarg
  , _batchComputeEnvironmentComputeResourcesMinvCpus = minvCpusarg
  , _batchComputeEnvironmentComputeResourcesSecurityGroupIds = securityGroupIdsarg
  , _batchComputeEnvironmentComputeResourcesSpotIamFleetRole = Nothing
  , _batchComputeEnvironmentComputeResourcesSubnets = subnetsarg
  , _batchComputeEnvironmentComputeResourcesTags = Nothing
  , _batchComputeEnvironmentComputeResourcesType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-bidpercentage
bcecrBidPercentage :: Lens' BatchComputeEnvironmentComputeResources (Maybe (Val Integer))
bcecrBidPercentage = lens _batchComputeEnvironmentComputeResourcesBidPercentage (\s a -> s { _batchComputeEnvironmentComputeResourcesBidPercentage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-desiredvcpus
bcecrDesiredvCpus :: Lens' BatchComputeEnvironmentComputeResources (Maybe (Val Integer))
bcecrDesiredvCpus = lens _batchComputeEnvironmentComputeResourcesDesiredvCpus (\s a -> s { _batchComputeEnvironmentComputeResourcesDesiredvCpus = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-ec2keypair
bcecrEc2KeyPair :: Lens' BatchComputeEnvironmentComputeResources (Maybe (Val Text))
bcecrEc2KeyPair = lens _batchComputeEnvironmentComputeResourcesEc2KeyPair (\s a -> s { _batchComputeEnvironmentComputeResourcesEc2KeyPair = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-imageid
bcecrImageId :: Lens' BatchComputeEnvironmentComputeResources (Maybe (Val Text))
bcecrImageId = lens _batchComputeEnvironmentComputeResourcesImageId (\s a -> s { _batchComputeEnvironmentComputeResourcesImageId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-instancerole
bcecrInstanceRole :: Lens' BatchComputeEnvironmentComputeResources (Val Text)
bcecrInstanceRole = lens _batchComputeEnvironmentComputeResourcesInstanceRole (\s a -> s { _batchComputeEnvironmentComputeResourcesInstanceRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-instancetypes
bcecrInstanceTypes :: Lens' BatchComputeEnvironmentComputeResources (ValList Text)
bcecrInstanceTypes = lens _batchComputeEnvironmentComputeResourcesInstanceTypes (\s a -> s { _batchComputeEnvironmentComputeResourcesInstanceTypes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-maxvcpus
bcecrMaxvCpus :: Lens' BatchComputeEnvironmentComputeResources (Val Integer)
bcecrMaxvCpus = lens _batchComputeEnvironmentComputeResourcesMaxvCpus (\s a -> s { _batchComputeEnvironmentComputeResourcesMaxvCpus = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-minvcpus
bcecrMinvCpus :: Lens' BatchComputeEnvironmentComputeResources (Val Integer)
bcecrMinvCpus = lens _batchComputeEnvironmentComputeResourcesMinvCpus (\s a -> s { _batchComputeEnvironmentComputeResourcesMinvCpus = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-securitygroupids
bcecrSecurityGroupIds :: Lens' BatchComputeEnvironmentComputeResources (ValList Text)
bcecrSecurityGroupIds = lens _batchComputeEnvironmentComputeResourcesSecurityGroupIds (\s a -> s { _batchComputeEnvironmentComputeResourcesSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-spotiamfleetrole
bcecrSpotIamFleetRole :: Lens' BatchComputeEnvironmentComputeResources (Maybe (Val Text))
bcecrSpotIamFleetRole = lens _batchComputeEnvironmentComputeResourcesSpotIamFleetRole (\s a -> s { _batchComputeEnvironmentComputeResourcesSpotIamFleetRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-subnets
bcecrSubnets :: Lens' BatchComputeEnvironmentComputeResources (ValList Text)
bcecrSubnets = lens _batchComputeEnvironmentComputeResourcesSubnets (\s a -> s { _batchComputeEnvironmentComputeResourcesSubnets = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-tags
bcecrTags :: Lens' BatchComputeEnvironmentComputeResources (Maybe Object)
bcecrTags = lens _batchComputeEnvironmentComputeResourcesTags (\s a -> s { _batchComputeEnvironmentComputeResourcesTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-type
bcecrType :: Lens' BatchComputeEnvironmentComputeResources (Val Text)
bcecrType = lens _batchComputeEnvironmentComputeResourcesType (\s a -> s { _batchComputeEnvironmentComputeResourcesType = a })