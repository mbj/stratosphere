{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersecuritygroup.html

module Stratosphere.Resources.RedshiftClusterSecurityGroup where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for RedshiftClusterSecurityGroup. See
-- | 'redshiftClusterSecurityGroup' for a more convenient constructor.
data RedshiftClusterSecurityGroup =
  RedshiftClusterSecurityGroup
  { _redshiftClusterSecurityGroupDescription :: Val Text
  } deriving (Show, Eq)

instance ToJSON RedshiftClusterSecurityGroup where
  toJSON RedshiftClusterSecurityGroup{..} =
    object
    [ "Description" .= _redshiftClusterSecurityGroupDescription
    ]

instance FromJSON RedshiftClusterSecurityGroup where
  parseJSON (Object obj) =
    RedshiftClusterSecurityGroup <$>
      obj .: "Description"
  parseJSON _ = mempty

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
