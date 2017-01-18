{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbsubnet-group.html

module Stratosphere.Resources.RDSDBSubnetGroup where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for RDSDBSubnetGroup. See 'rdsdbSubnetGroup'
-- | for a more convenient constructor.
data RDSDBSubnetGroup =
  RDSDBSubnetGroup
  { _rDSDBSubnetGroupDBSubnetGroupDescription :: Val Text
  , _rDSDBSubnetGroupSubnetIds :: [Val Text]
  , _rDSDBSubnetGroupTags :: Maybe [Tag]
  } deriving (Show, Eq, Generic)

instance ToJSON RDSDBSubnetGroup where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

instance FromJSON RDSDBSubnetGroup where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

-- | Constructor for 'RDSDBSubnetGroup' containing required fields as
-- | arguments.
rdsdbSubnetGroup
  :: Val Text -- ^ 'rdsdbsugDBSubnetGroupDescription'
  -> [Val Text] -- ^ 'rdsdbsugSubnetIds'
  -> RDSDBSubnetGroup
rdsdbSubnetGroup dBSubnetGroupDescriptionarg subnetIdsarg =
  RDSDBSubnetGroup
  { _rDSDBSubnetGroupDBSubnetGroupDescription = dBSubnetGroupDescriptionarg
  , _rDSDBSubnetGroupSubnetIds = subnetIdsarg
  , _rDSDBSubnetGroupTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbsubnet-group.html#cfn-rds-dbsubnetgroup-dbsubnetgroupdescription
rdsdbsugDBSubnetGroupDescription :: Lens' RDSDBSubnetGroup (Val Text)
rdsdbsugDBSubnetGroupDescription = lens _rDSDBSubnetGroupDBSubnetGroupDescription (\s a -> s { _rDSDBSubnetGroupDBSubnetGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbsubnet-group.html#cfn-rds-dbsubnetgroup-subnetids
rdsdbsugSubnetIds :: Lens' RDSDBSubnetGroup [Val Text]
rdsdbsugSubnetIds = lens _rDSDBSubnetGroupSubnetIds (\s a -> s { _rDSDBSubnetGroupSubnetIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbsubnet-group.html#cfn-rds-dbsubnetgroup-tags
rdsdbsugTags :: Lens' RDSDBSubnetGroup (Maybe [Tag])
rdsdbsugTags = lens _rDSDBSubnetGroupTags (\s a -> s { _rDSDBSubnetGroupTags = a })
