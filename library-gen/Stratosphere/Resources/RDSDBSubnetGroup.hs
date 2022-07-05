{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbsubnet-group.html

module Stratosphere.Resources.RDSDBSubnetGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for RDSDBSubnetGroup. See 'rdsdbSubnetGroup'
-- for a more convenient constructor.
data RDSDBSubnetGroup =
  RDSDBSubnetGroup
  { _rDSDBSubnetGroupDBSubnetGroupDescription :: Val Text
  , _rDSDBSubnetGroupDBSubnetGroupName :: Maybe (Val Text)
  , _rDSDBSubnetGroupSubnetIds :: ValList Text
  , _rDSDBSubnetGroupTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties RDSDBSubnetGroup where
  toResourceProperties RDSDBSubnetGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::RDS::DBSubnetGroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("DBSubnetGroupDescription",) . toJSON) _rDSDBSubnetGroupDBSubnetGroupDescription
        , fmap (("DBSubnetGroupName",) . toJSON) _rDSDBSubnetGroupDBSubnetGroupName
        , (Just . ("SubnetIds",) . toJSON) _rDSDBSubnetGroupSubnetIds
        , fmap (("Tags",) . toJSON) _rDSDBSubnetGroupTags
        ]
    }

-- | Constructor for 'RDSDBSubnetGroup' containing required fields as
-- arguments.
rdsdbSubnetGroup
  :: Val Text -- ^ 'rdsdbsugDBSubnetGroupDescription'
  -> ValList Text -- ^ 'rdsdbsugSubnetIds'
  -> RDSDBSubnetGroup
rdsdbSubnetGroup dBSubnetGroupDescriptionarg subnetIdsarg =
  RDSDBSubnetGroup
  { _rDSDBSubnetGroupDBSubnetGroupDescription = dBSubnetGroupDescriptionarg
  , _rDSDBSubnetGroupDBSubnetGroupName = Nothing
  , _rDSDBSubnetGroupSubnetIds = subnetIdsarg
  , _rDSDBSubnetGroupTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbsubnet-group.html#cfn-rds-dbsubnetgroup-dbsubnetgroupdescription
rdsdbsugDBSubnetGroupDescription :: Lens' RDSDBSubnetGroup (Val Text)
rdsdbsugDBSubnetGroupDescription = lens _rDSDBSubnetGroupDBSubnetGroupDescription (\s a -> s { _rDSDBSubnetGroupDBSubnetGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbsubnet-group.html#cfn-rds-dbsubnetgroup-dbsubnetgroupname
rdsdbsugDBSubnetGroupName :: Lens' RDSDBSubnetGroup (Maybe (Val Text))
rdsdbsugDBSubnetGroupName = lens _rDSDBSubnetGroupDBSubnetGroupName (\s a -> s { _rDSDBSubnetGroupDBSubnetGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbsubnet-group.html#cfn-rds-dbsubnetgroup-subnetids
rdsdbsugSubnetIds :: Lens' RDSDBSubnetGroup (ValList Text)
rdsdbsugSubnetIds = lens _rDSDBSubnetGroupSubnetIds (\s a -> s { _rDSDBSubnetGroupSubnetIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbsubnet-group.html#cfn-rds-dbsubnetgroup-tags
rdsdbsugTags :: Lens' RDSDBSubnetGroup (Maybe [Tag])
rdsdbsugTags = lens _rDSDBSubnetGroupTags (\s a -> s { _rDSDBSubnetGroupTags = a })
