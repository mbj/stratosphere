{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbsubnetgroup.html

module Stratosphere.Resources.NeptuneDBSubnetGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for NeptuneDBSubnetGroup. See
-- 'neptuneDBSubnetGroup' for a more convenient constructor.
data NeptuneDBSubnetGroup =
  NeptuneDBSubnetGroup
  { _neptuneDBSubnetGroupDBSubnetGroupDescription :: Val Text
  , _neptuneDBSubnetGroupDBSubnetGroupName :: Maybe (Val Text)
  , _neptuneDBSubnetGroupSubnetIds :: ValList Text
  , _neptuneDBSubnetGroupTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties NeptuneDBSubnetGroup where
  toResourceProperties NeptuneDBSubnetGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Neptune::DBSubnetGroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("DBSubnetGroupDescription",) . toJSON) _neptuneDBSubnetGroupDBSubnetGroupDescription
        , fmap (("DBSubnetGroupName",) . toJSON) _neptuneDBSubnetGroupDBSubnetGroupName
        , (Just . ("SubnetIds",) . toJSON) _neptuneDBSubnetGroupSubnetIds
        , fmap (("Tags",) . toJSON) _neptuneDBSubnetGroupTags
        ]
    }

-- | Constructor for 'NeptuneDBSubnetGroup' containing required fields as
-- arguments.
neptuneDBSubnetGroup
  :: Val Text -- ^ 'ndbsgDBSubnetGroupDescription'
  -> ValList Text -- ^ 'ndbsgSubnetIds'
  -> NeptuneDBSubnetGroup
neptuneDBSubnetGroup dBSubnetGroupDescriptionarg subnetIdsarg =
  NeptuneDBSubnetGroup
  { _neptuneDBSubnetGroupDBSubnetGroupDescription = dBSubnetGroupDescriptionarg
  , _neptuneDBSubnetGroupDBSubnetGroupName = Nothing
  , _neptuneDBSubnetGroupSubnetIds = subnetIdsarg
  , _neptuneDBSubnetGroupTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbsubnetgroup.html#cfn-neptune-dbsubnetgroup-dbsubnetgroupdescription
ndbsgDBSubnetGroupDescription :: Lens' NeptuneDBSubnetGroup (Val Text)
ndbsgDBSubnetGroupDescription = lens _neptuneDBSubnetGroupDBSubnetGroupDescription (\s a -> s { _neptuneDBSubnetGroupDBSubnetGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbsubnetgroup.html#cfn-neptune-dbsubnetgroup-dbsubnetgroupname
ndbsgDBSubnetGroupName :: Lens' NeptuneDBSubnetGroup (Maybe (Val Text))
ndbsgDBSubnetGroupName = lens _neptuneDBSubnetGroupDBSubnetGroupName (\s a -> s { _neptuneDBSubnetGroupDBSubnetGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbsubnetgroup.html#cfn-neptune-dbsubnetgroup-subnetids
ndbsgSubnetIds :: Lens' NeptuneDBSubnetGroup (ValList Text)
ndbsgSubnetIds = lens _neptuneDBSubnetGroupSubnetIds (\s a -> s { _neptuneDBSubnetGroupSubnetIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbsubnetgroup.html#cfn-neptune-dbsubnetgroup-tags
ndbsgTags :: Lens' NeptuneDBSubnetGroup (Maybe [Tag])
ndbsgTags = lens _neptuneDBSubnetGroupTags (\s a -> s { _neptuneDBSubnetGroupTags = a })
