{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-target.html

module Stratosphere.ResourceProperties.SSMMaintenanceWindowTaskTarget where

import Stratosphere.ResourceImports


-- | Full data type definition for SSMMaintenanceWindowTaskTarget. See
-- 'ssmMaintenanceWindowTaskTarget' for a more convenient constructor.
data SSMMaintenanceWindowTaskTarget =
  SSMMaintenanceWindowTaskTarget
  { _sSMMaintenanceWindowTaskTargetKey :: Val Text
  , _sSMMaintenanceWindowTaskTargetValues :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON SSMMaintenanceWindowTaskTarget where
  toJSON SSMMaintenanceWindowTaskTarget{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _sSMMaintenanceWindowTaskTargetKey
    , fmap (("Values",) . toJSON) _sSMMaintenanceWindowTaskTargetValues
    ]

-- | Constructor for 'SSMMaintenanceWindowTaskTarget' containing required
-- fields as arguments.
ssmMaintenanceWindowTaskTarget
  :: Val Text -- ^ 'ssmmwttKey'
  -> SSMMaintenanceWindowTaskTarget
ssmMaintenanceWindowTaskTarget keyarg =
  SSMMaintenanceWindowTaskTarget
  { _sSMMaintenanceWindowTaskTargetKey = keyarg
  , _sSMMaintenanceWindowTaskTargetValues = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-target.html#cfn-ssm-maintenancewindowtask-target-key
ssmmwttKey :: Lens' SSMMaintenanceWindowTaskTarget (Val Text)
ssmmwttKey = lens _sSMMaintenanceWindowTaskTargetKey (\s a -> s { _sSMMaintenanceWindowTaskTargetKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-target.html#cfn-ssm-maintenancewindowtask-target-values
ssmmwttValues :: Lens' SSMMaintenanceWindowTaskTarget (Maybe (ValList Text))
ssmmwttValues = lens _sSMMaintenanceWindowTaskTargetValues (\s a -> s { _sSMMaintenanceWindowTaskTargetValues = a })
