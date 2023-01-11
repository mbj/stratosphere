
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtarget-targets.html

module Stratosphere.ResourceProperties.SSMMaintenanceWindowTargetTargets where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for SSMMaintenanceWindowTargetTargets. See
-- 'ssmMaintenanceWindowTargetTargets' for a more convenient constructor.
data SSMMaintenanceWindowTargetTargets =
  SSMMaintenanceWindowTargetTargets
  { _sSMMaintenanceWindowTargetTargetsKey :: Val Text
  , _sSMMaintenanceWindowTargetTargetsValues :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON SSMMaintenanceWindowTargetTargets where
  toJSON SSMMaintenanceWindowTargetTargets{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _sSMMaintenanceWindowTargetTargetsKey
    , fmap (("Values",) . toJSON) _sSMMaintenanceWindowTargetTargetsValues
    ]

-- | Constructor for 'SSMMaintenanceWindowTargetTargets' containing required
-- fields as arguments.
ssmMaintenanceWindowTargetTargets
  :: Val Text -- ^ 'ssmmwtartKey'
  -> SSMMaintenanceWindowTargetTargets
ssmMaintenanceWindowTargetTargets keyarg =
  SSMMaintenanceWindowTargetTargets
  { _sSMMaintenanceWindowTargetTargetsKey = keyarg
  , _sSMMaintenanceWindowTargetTargetsValues = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtarget-targets.html#cfn-ssm-maintenancewindowtarget-targets-key
ssmmwtartKey :: Lens' SSMMaintenanceWindowTargetTargets (Val Text)
ssmmwtartKey = lens _sSMMaintenanceWindowTargetTargetsKey (\s a -> s { _sSMMaintenanceWindowTargetTargetsKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtarget-targets.html#cfn-ssm-maintenancewindowtarget-targets-values
ssmmwtartValues :: Lens' SSMMaintenanceWindowTargetTargets (Maybe (ValList Text))
ssmmwtartValues = lens _sSMMaintenanceWindowTargetTargetsValues (\s a -> s { _sSMMaintenanceWindowTargetTargetsValues = a })
