{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-neptune-dbcluster-dbclusterrole.html

module Stratosphere.ResourceProperties.NeptuneDBClusterDBClusterRole where

import Stratosphere.ResourceImports


-- | Full data type definition for NeptuneDBClusterDBClusterRole. See
-- 'neptuneDBClusterDBClusterRole' for a more convenient constructor.
data NeptuneDBClusterDBClusterRole =
  NeptuneDBClusterDBClusterRole
  { _neptuneDBClusterDBClusterRoleFeatureName :: Maybe (Val Text)
  , _neptuneDBClusterDBClusterRoleRoleArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON NeptuneDBClusterDBClusterRole where
  toJSON NeptuneDBClusterDBClusterRole{..} =
    object $
    catMaybes
    [ fmap (("FeatureName",) . toJSON) _neptuneDBClusterDBClusterRoleFeatureName
    , (Just . ("RoleArn",) . toJSON) _neptuneDBClusterDBClusterRoleRoleArn
    ]

-- | Constructor for 'NeptuneDBClusterDBClusterRole' containing required
-- fields as arguments.
neptuneDBClusterDBClusterRole
  :: Val Text -- ^ 'ndbcdbcrRoleArn'
  -> NeptuneDBClusterDBClusterRole
neptuneDBClusterDBClusterRole roleArnarg =
  NeptuneDBClusterDBClusterRole
  { _neptuneDBClusterDBClusterRoleFeatureName = Nothing
  , _neptuneDBClusterDBClusterRoleRoleArn = roleArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-neptune-dbcluster-dbclusterrole.html#cfn-neptune-dbcluster-dbclusterrole-featurename
ndbcdbcrFeatureName :: Lens' NeptuneDBClusterDBClusterRole (Maybe (Val Text))
ndbcdbcrFeatureName = lens _neptuneDBClusterDBClusterRoleFeatureName (\s a -> s { _neptuneDBClusterDBClusterRoleFeatureName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-neptune-dbcluster-dbclusterrole.html#cfn-neptune-dbcluster-dbclusterrole-rolearn
ndbcdbcrRoleArn :: Lens' NeptuneDBClusterDBClusterRole (Val Text)
ndbcdbcrRoleArn = lens _neptuneDBClusterDBClusterRoleRoleArn (\s a -> s { _neptuneDBClusterDBClusterRoleRoleArn = a })
