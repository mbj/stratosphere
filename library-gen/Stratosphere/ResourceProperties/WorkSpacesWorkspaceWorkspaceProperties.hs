{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspace-workspaceproperties.html

module Stratosphere.ResourceProperties.WorkSpacesWorkspaceWorkspaceProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for WorkSpacesWorkspaceWorkspaceProperties. See
-- 'workSpacesWorkspaceWorkspaceProperties' for a more convenient
-- constructor.
data WorkSpacesWorkspaceWorkspaceProperties =
  WorkSpacesWorkspaceWorkspaceProperties
  { _workSpacesWorkspaceWorkspacePropertiesComputeTypeName :: Maybe (Val Text)
  , _workSpacesWorkspaceWorkspacePropertiesRootVolumeSizeGib :: Maybe (Val Integer)
  , _workSpacesWorkspaceWorkspacePropertiesRunningMode :: Maybe (Val Text)
  , _workSpacesWorkspaceWorkspacePropertiesRunningModeAutoStopTimeoutInMinutes :: Maybe (Val Integer)
  , _workSpacesWorkspaceWorkspacePropertiesUserVolumeSizeGib :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON WorkSpacesWorkspaceWorkspaceProperties where
  toJSON WorkSpacesWorkspaceWorkspaceProperties{..} =
    object $
    catMaybes
    [ fmap (("ComputeTypeName",) . toJSON) _workSpacesWorkspaceWorkspacePropertiesComputeTypeName
    , fmap (("RootVolumeSizeGib",) . toJSON . fmap Integer') _workSpacesWorkspaceWorkspacePropertiesRootVolumeSizeGib
    , fmap (("RunningMode",) . toJSON) _workSpacesWorkspaceWorkspacePropertiesRunningMode
    , fmap (("RunningModeAutoStopTimeoutInMinutes",) . toJSON . fmap Integer') _workSpacesWorkspaceWorkspacePropertiesRunningModeAutoStopTimeoutInMinutes
    , fmap (("UserVolumeSizeGib",) . toJSON . fmap Integer') _workSpacesWorkspaceWorkspacePropertiesUserVolumeSizeGib
    ]

-- | Constructor for 'WorkSpacesWorkspaceWorkspaceProperties' containing
-- required fields as arguments.
workSpacesWorkspaceWorkspaceProperties
  :: WorkSpacesWorkspaceWorkspaceProperties
workSpacesWorkspaceWorkspaceProperties  =
  WorkSpacesWorkspaceWorkspaceProperties
  { _workSpacesWorkspaceWorkspacePropertiesComputeTypeName = Nothing
  , _workSpacesWorkspaceWorkspacePropertiesRootVolumeSizeGib = Nothing
  , _workSpacesWorkspaceWorkspacePropertiesRunningMode = Nothing
  , _workSpacesWorkspaceWorkspacePropertiesRunningModeAutoStopTimeoutInMinutes = Nothing
  , _workSpacesWorkspaceWorkspacePropertiesUserVolumeSizeGib = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspace-workspaceproperties.html#cfn-workspaces-workspace-workspaceproperties-computetypename
wswwpComputeTypeName :: Lens' WorkSpacesWorkspaceWorkspaceProperties (Maybe (Val Text))
wswwpComputeTypeName = lens _workSpacesWorkspaceWorkspacePropertiesComputeTypeName (\s a -> s { _workSpacesWorkspaceWorkspacePropertiesComputeTypeName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspace-workspaceproperties.html#cfn-workspaces-workspace-workspaceproperties-rootvolumesizegib
wswwpRootVolumeSizeGib :: Lens' WorkSpacesWorkspaceWorkspaceProperties (Maybe (Val Integer))
wswwpRootVolumeSizeGib = lens _workSpacesWorkspaceWorkspacePropertiesRootVolumeSizeGib (\s a -> s { _workSpacesWorkspaceWorkspacePropertiesRootVolumeSizeGib = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspace-workspaceproperties.html#cfn-workspaces-workspace-workspaceproperties-runningmode
wswwpRunningMode :: Lens' WorkSpacesWorkspaceWorkspaceProperties (Maybe (Val Text))
wswwpRunningMode = lens _workSpacesWorkspaceWorkspacePropertiesRunningMode (\s a -> s { _workSpacesWorkspaceWorkspacePropertiesRunningMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspace-workspaceproperties.html#cfn-workspaces-workspace-workspaceproperties-runningmodeautostoptimeoutinminutes
wswwpRunningModeAutoStopTimeoutInMinutes :: Lens' WorkSpacesWorkspaceWorkspaceProperties (Maybe (Val Integer))
wswwpRunningModeAutoStopTimeoutInMinutes = lens _workSpacesWorkspaceWorkspacePropertiesRunningModeAutoStopTimeoutInMinutes (\s a -> s { _workSpacesWorkspaceWorkspacePropertiesRunningModeAutoStopTimeoutInMinutes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspace-workspaceproperties.html#cfn-workspaces-workspace-workspaceproperties-uservolumesizegib
wswwpUserVolumeSizeGib :: Lens' WorkSpacesWorkspaceWorkspaceProperties (Maybe (Val Integer))
wswwpUserVolumeSizeGib = lens _workSpacesWorkspaceWorkspacePropertiesUserVolumeSizeGib (\s a -> s { _workSpacesWorkspaceWorkspacePropertiesUserVolumeSizeGib = a })
