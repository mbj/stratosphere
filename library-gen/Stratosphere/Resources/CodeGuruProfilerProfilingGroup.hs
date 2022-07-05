{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codeguruprofiler-profilinggroup.html

module Stratosphere.Resources.CodeGuruProfilerProfilingGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodeGuruProfilerProfilingGroupChannel
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for CodeGuruProfilerProfilingGroup. See
-- 'codeGuruProfilerProfilingGroup' for a more convenient constructor.
data CodeGuruProfilerProfilingGroup =
  CodeGuruProfilerProfilingGroup
  { _codeGuruProfilerProfilingGroupAgentPermissions :: Maybe Object
  , _codeGuruProfilerProfilingGroupAnomalyDetectionNotificationConfiguration :: Maybe [CodeGuruProfilerProfilingGroupChannel]
  , _codeGuruProfilerProfilingGroupComputePlatform :: Maybe (Val Text)
  , _codeGuruProfilerProfilingGroupProfilingGroupName :: Val Text
  , _codeGuruProfilerProfilingGroupTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties CodeGuruProfilerProfilingGroup where
  toResourceProperties CodeGuruProfilerProfilingGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CodeGuruProfiler::ProfilingGroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AgentPermissions",) . toJSON) _codeGuruProfilerProfilingGroupAgentPermissions
        , fmap (("AnomalyDetectionNotificationConfiguration",) . toJSON) _codeGuruProfilerProfilingGroupAnomalyDetectionNotificationConfiguration
        , fmap (("ComputePlatform",) . toJSON) _codeGuruProfilerProfilingGroupComputePlatform
        , (Just . ("ProfilingGroupName",) . toJSON) _codeGuruProfilerProfilingGroupProfilingGroupName
        , fmap (("Tags",) . toJSON) _codeGuruProfilerProfilingGroupTags
        ]
    }

-- | Constructor for 'CodeGuruProfilerProfilingGroup' containing required
-- fields as arguments.
codeGuruProfilerProfilingGroup
  :: Val Text -- ^ 'cgppgProfilingGroupName'
  -> CodeGuruProfilerProfilingGroup
codeGuruProfilerProfilingGroup profilingGroupNamearg =
  CodeGuruProfilerProfilingGroup
  { _codeGuruProfilerProfilingGroupAgentPermissions = Nothing
  , _codeGuruProfilerProfilingGroupAnomalyDetectionNotificationConfiguration = Nothing
  , _codeGuruProfilerProfilingGroupComputePlatform = Nothing
  , _codeGuruProfilerProfilingGroupProfilingGroupName = profilingGroupNamearg
  , _codeGuruProfilerProfilingGroupTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codeguruprofiler-profilinggroup.html#cfn-codeguruprofiler-profilinggroup-agentpermissions
cgppgAgentPermissions :: Lens' CodeGuruProfilerProfilingGroup (Maybe Object)
cgppgAgentPermissions = lens _codeGuruProfilerProfilingGroupAgentPermissions (\s a -> s { _codeGuruProfilerProfilingGroupAgentPermissions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codeguruprofiler-profilinggroup.html#cfn-codeguruprofiler-profilinggroup-anomalydetectionnotificationconfiguration
cgppgAnomalyDetectionNotificationConfiguration :: Lens' CodeGuruProfilerProfilingGroup (Maybe [CodeGuruProfilerProfilingGroupChannel])
cgppgAnomalyDetectionNotificationConfiguration = lens _codeGuruProfilerProfilingGroupAnomalyDetectionNotificationConfiguration (\s a -> s { _codeGuruProfilerProfilingGroupAnomalyDetectionNotificationConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codeguruprofiler-profilinggroup.html#cfn-codeguruprofiler-profilinggroup-computeplatform
cgppgComputePlatform :: Lens' CodeGuruProfilerProfilingGroup (Maybe (Val Text))
cgppgComputePlatform = lens _codeGuruProfilerProfilingGroupComputePlatform (\s a -> s { _codeGuruProfilerProfilingGroupComputePlatform = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codeguruprofiler-profilinggroup.html#cfn-codeguruprofiler-profilinggroup-profilinggroupname
cgppgProfilingGroupName :: Lens' CodeGuruProfilerProfilingGroup (Val Text)
cgppgProfilingGroupName = lens _codeGuruProfilerProfilingGroupProfilingGroupName (\s a -> s { _codeGuruProfilerProfilingGroupProfilingGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codeguruprofiler-profilinggroup.html#cfn-codeguruprofiler-profilinggroup-tags
cgppgTags :: Lens' CodeGuruProfilerProfilingGroup (Maybe [Tag])
cgppgTags = lens _codeGuruProfilerProfilingGroupTags (\s a -> s { _codeGuruProfilerProfilingGroupTags = a })
