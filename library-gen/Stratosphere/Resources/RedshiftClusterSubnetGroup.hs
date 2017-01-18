{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersubnetgroup.html

module Stratosphere.Resources.RedshiftClusterSubnetGroup where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for RedshiftClusterSubnetGroup. See
-- | 'redshiftClusterSubnetGroup' for a more convenient constructor.
data RedshiftClusterSubnetGroup =
  RedshiftClusterSubnetGroup
  { _redshiftClusterSubnetGroupDescription :: Val Text
  , _redshiftClusterSubnetGroupSubnetIds :: [Val Text]
  } deriving (Show, Eq, Generic)

instance ToJSON RedshiftClusterSubnetGroup where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

instance FromJSON RedshiftClusterSubnetGroup where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

-- | Constructor for 'RedshiftClusterSubnetGroup' containing required fields
-- | as arguments.
redshiftClusterSubnetGroup
  :: Val Text -- ^ 'rcsugDescription'
  -> [Val Text] -- ^ 'rcsugSubnetIds'
  -> RedshiftClusterSubnetGroup
redshiftClusterSubnetGroup descriptionarg subnetIdsarg =
  RedshiftClusterSubnetGroup
  { _redshiftClusterSubnetGroupDescription = descriptionarg
  , _redshiftClusterSubnetGroupSubnetIds = subnetIdsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersubnetgroup.html#cfn-redshift-clustersubnetgroup-description
rcsugDescription :: Lens' RedshiftClusterSubnetGroup (Val Text)
rcsugDescription = lens _redshiftClusterSubnetGroupDescription (\s a -> s { _redshiftClusterSubnetGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersubnetgroup.html#cfn-redshift-clustersubnetgroup-subnetids
rcsugSubnetIds :: Lens' RedshiftClusterSubnetGroup [Val Text]
rcsugSubnetIds = lens _redshiftClusterSubnetGroupSubnetIds (\s a -> s { _redshiftClusterSubnetGroupSubnetIds = a })
