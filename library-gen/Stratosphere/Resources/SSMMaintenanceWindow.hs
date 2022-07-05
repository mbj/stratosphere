{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindow.html

module Stratosphere.Resources.SSMMaintenanceWindow where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for SSMMaintenanceWindow. See
-- 'ssmMaintenanceWindow' for a more convenient constructor.
data SSMMaintenanceWindow =
  SSMMaintenanceWindow
  { _sSMMaintenanceWindowAllowUnassociatedTargets :: Val Bool
  , _sSMMaintenanceWindowCutoff :: Val Integer
  , _sSMMaintenanceWindowDescription :: Maybe (Val Text)
  , _sSMMaintenanceWindowDuration :: Val Integer
  , _sSMMaintenanceWindowEndDate :: Maybe (Val Text)
  , _sSMMaintenanceWindowName :: Val Text
  , _sSMMaintenanceWindowSchedule :: Val Text
  , _sSMMaintenanceWindowScheduleOffset :: Maybe (Val Integer)
  , _sSMMaintenanceWindowScheduleTimezone :: Maybe (Val Text)
  , _sSMMaintenanceWindowStartDate :: Maybe (Val Text)
  , _sSMMaintenanceWindowTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties SSMMaintenanceWindow where
  toResourceProperties SSMMaintenanceWindow{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SSM::MaintenanceWindow"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("AllowUnassociatedTargets",) . toJSON) _sSMMaintenanceWindowAllowUnassociatedTargets
        , (Just . ("Cutoff",) . toJSON) _sSMMaintenanceWindowCutoff
        , fmap (("Description",) . toJSON) _sSMMaintenanceWindowDescription
        , (Just . ("Duration",) . toJSON) _sSMMaintenanceWindowDuration
        , fmap (("EndDate",) . toJSON) _sSMMaintenanceWindowEndDate
        , (Just . ("Name",) . toJSON) _sSMMaintenanceWindowName
        , (Just . ("Schedule",) . toJSON) _sSMMaintenanceWindowSchedule
        , fmap (("ScheduleOffset",) . toJSON) _sSMMaintenanceWindowScheduleOffset
        , fmap (("ScheduleTimezone",) . toJSON) _sSMMaintenanceWindowScheduleTimezone
        , fmap (("StartDate",) . toJSON) _sSMMaintenanceWindowStartDate
        , fmap (("Tags",) . toJSON) _sSMMaintenanceWindowTags
        ]
    }

-- | Constructor for 'SSMMaintenanceWindow' containing required fields as
-- arguments.
ssmMaintenanceWindow
  :: Val Bool -- ^ 'ssmmwAllowUnassociatedTargets'
  -> Val Integer -- ^ 'ssmmwCutoff'
  -> Val Integer -- ^ 'ssmmwDuration'
  -> Val Text -- ^ 'ssmmwName'
  -> Val Text -- ^ 'ssmmwSchedule'
  -> SSMMaintenanceWindow
ssmMaintenanceWindow allowUnassociatedTargetsarg cutoffarg durationarg namearg schedulearg =
  SSMMaintenanceWindow
  { _sSMMaintenanceWindowAllowUnassociatedTargets = allowUnassociatedTargetsarg
  , _sSMMaintenanceWindowCutoff = cutoffarg
  , _sSMMaintenanceWindowDescription = Nothing
  , _sSMMaintenanceWindowDuration = durationarg
  , _sSMMaintenanceWindowEndDate = Nothing
  , _sSMMaintenanceWindowName = namearg
  , _sSMMaintenanceWindowSchedule = schedulearg
  , _sSMMaintenanceWindowScheduleOffset = Nothing
  , _sSMMaintenanceWindowScheduleTimezone = Nothing
  , _sSMMaintenanceWindowStartDate = Nothing
  , _sSMMaintenanceWindowTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindow.html#cfn-ssm-maintenancewindow-allowunassociatedtargets
ssmmwAllowUnassociatedTargets :: Lens' SSMMaintenanceWindow (Val Bool)
ssmmwAllowUnassociatedTargets = lens _sSMMaintenanceWindowAllowUnassociatedTargets (\s a -> s { _sSMMaintenanceWindowAllowUnassociatedTargets = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindow.html#cfn-ssm-maintenancewindow-cutoff
ssmmwCutoff :: Lens' SSMMaintenanceWindow (Val Integer)
ssmmwCutoff = lens _sSMMaintenanceWindowCutoff (\s a -> s { _sSMMaintenanceWindowCutoff = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindow.html#cfn-ssm-maintenancewindow-description
ssmmwDescription :: Lens' SSMMaintenanceWindow (Maybe (Val Text))
ssmmwDescription = lens _sSMMaintenanceWindowDescription (\s a -> s { _sSMMaintenanceWindowDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindow.html#cfn-ssm-maintenancewindow-duration
ssmmwDuration :: Lens' SSMMaintenanceWindow (Val Integer)
ssmmwDuration = lens _sSMMaintenanceWindowDuration (\s a -> s { _sSMMaintenanceWindowDuration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindow.html#cfn-ssm-maintenancewindow-enddate
ssmmwEndDate :: Lens' SSMMaintenanceWindow (Maybe (Val Text))
ssmmwEndDate = lens _sSMMaintenanceWindowEndDate (\s a -> s { _sSMMaintenanceWindowEndDate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindow.html#cfn-ssm-maintenancewindow-name
ssmmwName :: Lens' SSMMaintenanceWindow (Val Text)
ssmmwName = lens _sSMMaintenanceWindowName (\s a -> s { _sSMMaintenanceWindowName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindow.html#cfn-ssm-maintenancewindow-schedule
ssmmwSchedule :: Lens' SSMMaintenanceWindow (Val Text)
ssmmwSchedule = lens _sSMMaintenanceWindowSchedule (\s a -> s { _sSMMaintenanceWindowSchedule = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindow.html#cfn-ssm-maintenancewindow-scheduleoffset
ssmmwScheduleOffset :: Lens' SSMMaintenanceWindow (Maybe (Val Integer))
ssmmwScheduleOffset = lens _sSMMaintenanceWindowScheduleOffset (\s a -> s { _sSMMaintenanceWindowScheduleOffset = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindow.html#cfn-ssm-maintenancewindow-scheduletimezone
ssmmwScheduleTimezone :: Lens' SSMMaintenanceWindow (Maybe (Val Text))
ssmmwScheduleTimezone = lens _sSMMaintenanceWindowScheduleTimezone (\s a -> s { _sSMMaintenanceWindowScheduleTimezone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindow.html#cfn-ssm-maintenancewindow-startdate
ssmmwStartDate :: Lens' SSMMaintenanceWindow (Maybe (Val Text))
ssmmwStartDate = lens _sSMMaintenanceWindowStartDate (\s a -> s { _sSMMaintenanceWindowStartDate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindow.html#cfn-ssm-maintenancewindow-tags
ssmmwTags :: Lens' SSMMaintenanceWindow (Maybe [Tag])
ssmmwTags = lens _sSMMaintenanceWindowTags (\s a -> s { _sSMMaintenanceWindowTags = a })
