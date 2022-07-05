{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbsubnetgroup.html

module Stratosphere.Resources.DocDBDBSubnetGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for DocDBDBSubnetGroup. See
-- 'docDBDBSubnetGroup' for a more convenient constructor.
data DocDBDBSubnetGroup =
  DocDBDBSubnetGroup
  { _docDBDBSubnetGroupDBSubnetGroupDescription :: Val Text
  , _docDBDBSubnetGroupDBSubnetGroupName :: Maybe (Val Text)
  , _docDBDBSubnetGroupSubnetIds :: ValList Text
  , _docDBDBSubnetGroupTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties DocDBDBSubnetGroup where
  toResourceProperties DocDBDBSubnetGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::DocDB::DBSubnetGroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("DBSubnetGroupDescription",) . toJSON) _docDBDBSubnetGroupDBSubnetGroupDescription
        , fmap (("DBSubnetGroupName",) . toJSON) _docDBDBSubnetGroupDBSubnetGroupName
        , (Just . ("SubnetIds",) . toJSON) _docDBDBSubnetGroupSubnetIds
        , fmap (("Tags",) . toJSON) _docDBDBSubnetGroupTags
        ]
    }

-- | Constructor for 'DocDBDBSubnetGroup' containing required fields as
-- arguments.
docDBDBSubnetGroup
  :: Val Text -- ^ 'ddbdbsgDBSubnetGroupDescription'
  -> ValList Text -- ^ 'ddbdbsgSubnetIds'
  -> DocDBDBSubnetGroup
docDBDBSubnetGroup dBSubnetGroupDescriptionarg subnetIdsarg =
  DocDBDBSubnetGroup
  { _docDBDBSubnetGroupDBSubnetGroupDescription = dBSubnetGroupDescriptionarg
  , _docDBDBSubnetGroupDBSubnetGroupName = Nothing
  , _docDBDBSubnetGroupSubnetIds = subnetIdsarg
  , _docDBDBSubnetGroupTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbsubnetgroup.html#cfn-docdb-dbsubnetgroup-dbsubnetgroupdescription
ddbdbsgDBSubnetGroupDescription :: Lens' DocDBDBSubnetGroup (Val Text)
ddbdbsgDBSubnetGroupDescription = lens _docDBDBSubnetGroupDBSubnetGroupDescription (\s a -> s { _docDBDBSubnetGroupDBSubnetGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbsubnetgroup.html#cfn-docdb-dbsubnetgroup-dbsubnetgroupname
ddbdbsgDBSubnetGroupName :: Lens' DocDBDBSubnetGroup (Maybe (Val Text))
ddbdbsgDBSubnetGroupName = lens _docDBDBSubnetGroupDBSubnetGroupName (\s a -> s { _docDBDBSubnetGroupDBSubnetGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbsubnetgroup.html#cfn-docdb-dbsubnetgroup-subnetids
ddbdbsgSubnetIds :: Lens' DocDBDBSubnetGroup (ValList Text)
ddbdbsgSubnetIds = lens _docDBDBSubnetGroupSubnetIds (\s a -> s { _docDBDBSubnetGroupSubnetIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbsubnetgroup.html#cfn-docdb-dbsubnetgroup-tags
ddbdbsgTags :: Lens' DocDBDBSubnetGroup (Maybe [Tag])
ddbdbsgTags = lens _docDBDBSubnetGroupTags (\s a -> s { _docDBDBSubnetGroupTags = a })
