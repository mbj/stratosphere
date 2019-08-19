{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtarget.html

module Stratosphere.Resources.SSMMaintenanceWindowTarget where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SSMMaintenanceWindowTargetTargets

-- | Full data type definition for SSMMaintenanceWindowTarget. See
-- 'ssmMaintenanceWindowTarget' for a more convenient constructor.
data SSMMaintenanceWindowTarget =
  SSMMaintenanceWindowTarget
  { _sSMMaintenanceWindowTargetDescription :: Maybe (Val Text)
  , _sSMMaintenanceWindowTargetName :: Maybe (Val Text)
  , _sSMMaintenanceWindowTargetOwnerInformation :: Maybe (Val Text)
  , _sSMMaintenanceWindowTargetResourceType :: Val Text
  , _sSMMaintenanceWindowTargetTargets :: [SSMMaintenanceWindowTargetTargets]
  , _sSMMaintenanceWindowTargetWindowId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties SSMMaintenanceWindowTarget where
  toResourceProperties SSMMaintenanceWindowTarget{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SSM::MaintenanceWindowTarget"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _sSMMaintenanceWindowTargetDescription
        , fmap (("Name",) . toJSON) _sSMMaintenanceWindowTargetName
        , fmap (("OwnerInformation",) . toJSON) _sSMMaintenanceWindowTargetOwnerInformation
        , (Just . ("ResourceType",) . toJSON) _sSMMaintenanceWindowTargetResourceType
        , (Just . ("Targets",) . toJSON) _sSMMaintenanceWindowTargetTargets
        , (Just . ("WindowId",) . toJSON) _sSMMaintenanceWindowTargetWindowId
        ]
    }

-- | Constructor for 'SSMMaintenanceWindowTarget' containing required fields
-- as arguments.
ssmMaintenanceWindowTarget
  :: Val Text -- ^ 'ssmmwtResourceType'
  -> [SSMMaintenanceWindowTargetTargets] -- ^ 'ssmmwtTargets'
  -> Val Text -- ^ 'ssmmwtWindowId'
  -> SSMMaintenanceWindowTarget
ssmMaintenanceWindowTarget resourceTypearg targetsarg windowIdarg =
  SSMMaintenanceWindowTarget
  { _sSMMaintenanceWindowTargetDescription = Nothing
  , _sSMMaintenanceWindowTargetName = Nothing
  , _sSMMaintenanceWindowTargetOwnerInformation = Nothing
  , _sSMMaintenanceWindowTargetResourceType = resourceTypearg
  , _sSMMaintenanceWindowTargetTargets = targetsarg
  , _sSMMaintenanceWindowTargetWindowId = windowIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtarget.html#cfn-ssm-maintenancewindowtarget-description
ssmmwtDescription :: Lens' SSMMaintenanceWindowTarget (Maybe (Val Text))
ssmmwtDescription = lens _sSMMaintenanceWindowTargetDescription (\s a -> s { _sSMMaintenanceWindowTargetDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtarget.html#cfn-ssm-maintenancewindowtarget-name
ssmmwtName :: Lens' SSMMaintenanceWindowTarget (Maybe (Val Text))
ssmmwtName = lens _sSMMaintenanceWindowTargetName (\s a -> s { _sSMMaintenanceWindowTargetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtarget.html#cfn-ssm-maintenancewindowtarget-ownerinformation
ssmmwtOwnerInformation :: Lens' SSMMaintenanceWindowTarget (Maybe (Val Text))
ssmmwtOwnerInformation = lens _sSMMaintenanceWindowTargetOwnerInformation (\s a -> s { _sSMMaintenanceWindowTargetOwnerInformation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtarget.html#cfn-ssm-maintenancewindowtarget-resourcetype
ssmmwtResourceType :: Lens' SSMMaintenanceWindowTarget (Val Text)
ssmmwtResourceType = lens _sSMMaintenanceWindowTargetResourceType (\s a -> s { _sSMMaintenanceWindowTargetResourceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtarget.html#cfn-ssm-maintenancewindowtarget-targets
ssmmwtTargets :: Lens' SSMMaintenanceWindowTarget [SSMMaintenanceWindowTargetTargets]
ssmmwtTargets = lens _sSMMaintenanceWindowTargetTargets (\s a -> s { _sSMMaintenanceWindowTargetTargets = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtarget.html#cfn-ssm-maintenancewindowtarget-windowid
ssmmwtWindowId :: Lens' SSMMaintenanceWindowTarget (Val Text)
ssmmwtWindowId = lens _sSMMaintenanceWindowTargetWindowId (\s a -> s { _sSMMaintenanceWindowTargetWindowId = a })
