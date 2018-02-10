{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trunkinterfaceassociation.html

module Stratosphere.Resources.EC2TrunkInterfaceAssociation where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2TrunkInterfaceAssociation. See
-- 'ec2TrunkInterfaceAssociation' for a more convenient constructor.
data EC2TrunkInterfaceAssociation =
  EC2TrunkInterfaceAssociation
  { _eC2TrunkInterfaceAssociationBranchInterfaceId :: Val Text
  , _eC2TrunkInterfaceAssociationGREKey :: Maybe (Val Integer)
  , _eC2TrunkInterfaceAssociationTrunkInterfaceId :: Val Text
  , _eC2TrunkInterfaceAssociationVLANId :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON EC2TrunkInterfaceAssociation where
  toJSON EC2TrunkInterfaceAssociation{..} =
    object $
    catMaybes
    [ (Just . ("BranchInterfaceId",) . toJSON) _eC2TrunkInterfaceAssociationBranchInterfaceId
    , fmap (("GREKey",) . toJSON . fmap Integer') _eC2TrunkInterfaceAssociationGREKey
    , (Just . ("TrunkInterfaceId",) . toJSON) _eC2TrunkInterfaceAssociationTrunkInterfaceId
    , fmap (("VLANId",) . toJSON . fmap Integer') _eC2TrunkInterfaceAssociationVLANId
    ]

instance FromJSON EC2TrunkInterfaceAssociation where
  parseJSON (Object obj) =
    EC2TrunkInterfaceAssociation <$>
      (obj .: "BranchInterfaceId") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "GREKey") <*>
      (obj .: "TrunkInterfaceId") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "VLANId")
  parseJSON _ = mempty

-- | Constructor for 'EC2TrunkInterfaceAssociation' containing required fields
-- as arguments.
ec2TrunkInterfaceAssociation
  :: Val Text -- ^ 'ectiaBranchInterfaceId'
  -> Val Text -- ^ 'ectiaTrunkInterfaceId'
  -> EC2TrunkInterfaceAssociation
ec2TrunkInterfaceAssociation branchInterfaceIdarg trunkInterfaceIdarg =
  EC2TrunkInterfaceAssociation
  { _eC2TrunkInterfaceAssociationBranchInterfaceId = branchInterfaceIdarg
  , _eC2TrunkInterfaceAssociationGREKey = Nothing
  , _eC2TrunkInterfaceAssociationTrunkInterfaceId = trunkInterfaceIdarg
  , _eC2TrunkInterfaceAssociationVLANId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trunkinterfaceassociation.html#cfn-ec2-trunkinterfaceassociation-branchinterfaceid
ectiaBranchInterfaceId :: Lens' EC2TrunkInterfaceAssociation (Val Text)
ectiaBranchInterfaceId = lens _eC2TrunkInterfaceAssociationBranchInterfaceId (\s a -> s { _eC2TrunkInterfaceAssociationBranchInterfaceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trunkinterfaceassociation.html#cfn-ec2-trunkinterfaceassociation-grekey
ectiaGREKey :: Lens' EC2TrunkInterfaceAssociation (Maybe (Val Integer))
ectiaGREKey = lens _eC2TrunkInterfaceAssociationGREKey (\s a -> s { _eC2TrunkInterfaceAssociationGREKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trunkinterfaceassociation.html#cfn-ec2-trunkinterfaceassociation-trunkinterfaceid
ectiaTrunkInterfaceId :: Lens' EC2TrunkInterfaceAssociation (Val Text)
ectiaTrunkInterfaceId = lens _eC2TrunkInterfaceAssociationTrunkInterfaceId (\s a -> s { _eC2TrunkInterfaceAssociationTrunkInterfaceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trunkinterfaceassociation.html#cfn-ec2-trunkinterfaceassociation-vlanid
ectiaVLANId :: Lens' EC2TrunkInterfaceAssociation (Maybe (Val Integer))
ectiaVLANId = lens _eC2TrunkInterfaceAssociationVLANId (\s a -> s { _eC2TrunkInterfaceAssociationVLANId = a })
