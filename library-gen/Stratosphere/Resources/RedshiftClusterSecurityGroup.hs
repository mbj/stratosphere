{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersecuritygroup.html

module Stratosphere.Resources.RedshiftClusterSecurityGroup where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for RedshiftClusterSecurityGroup. See
-- | 'redshiftClusterSecurityGroup' for a more convenient constructor.
data RedshiftClusterSecurityGroup =
  RedshiftClusterSecurityGroup
  { _redshiftClusterSecurityGroupDescription :: Val Text
  } deriving (Show, Generic)

instance ToJSON RedshiftClusterSecurityGroup where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 29, omitNothingFields = True }

instance FromJSON RedshiftClusterSecurityGroup where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 29, omitNothingFields = True }

-- | Constructor for 'RedshiftClusterSecurityGroup' containing required fields
-- | as arguments.
redshiftClusterSecurityGroup
  :: Val Text -- ^ 'rcsegDescription'
  -> RedshiftClusterSecurityGroup
redshiftClusterSecurityGroup descriptionarg =
  RedshiftClusterSecurityGroup
  { _redshiftClusterSecurityGroupDescription = descriptionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersecuritygroup.html#cfn-redshift-clustersecuritygroup-description
rcsegDescription :: Lens' RedshiftClusterSecurityGroup (Val Text)
rcsegDescription = lens _redshiftClusterSecurityGroupDescription (\s a -> s { _redshiftClusterSecurityGroupDescription = a })
