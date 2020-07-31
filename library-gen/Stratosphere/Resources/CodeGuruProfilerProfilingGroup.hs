{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codeguruprofiler-profilinggroup.html

module Stratosphere.Resources.CodeGuruProfilerProfilingGroup where

import Stratosphere.ResourceImports


-- | Full data type definition for CodeGuruProfilerProfilingGroup. See
-- 'codeGuruProfilerProfilingGroup' for a more convenient constructor.
data CodeGuruProfilerProfilingGroup =
  CodeGuruProfilerProfilingGroup
  { _codeGuruProfilerProfilingGroupAgentPermissions :: Maybe Object
  , _codeGuruProfilerProfilingGroupComputePlatform :: Maybe (Val Text)
  , _codeGuruProfilerProfilingGroupProfilingGroupName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties CodeGuruProfilerProfilingGroup where
  toResourceProperties CodeGuruProfilerProfilingGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CodeGuruProfiler::ProfilingGroup"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("AgentPermissions",) . toJSON) _codeGuruProfilerProfilingGroupAgentPermissions
        , fmap (("ComputePlatform",) . toJSON) _codeGuruProfilerProfilingGroupComputePlatform
        , (Just . ("ProfilingGroupName",) . toJSON) _codeGuruProfilerProfilingGroupProfilingGroupName
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
  , _codeGuruProfilerProfilingGroupComputePlatform = Nothing
  , _codeGuruProfilerProfilingGroupProfilingGroupName = profilingGroupNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codeguruprofiler-profilinggroup.html#cfn-codeguruprofiler-profilinggroup-agentpermissions
cgppgAgentPermissions :: Lens' CodeGuruProfilerProfilingGroup (Maybe Object)
cgppgAgentPermissions = lens _codeGuruProfilerProfilingGroupAgentPermissions (\s a -> s { _codeGuruProfilerProfilingGroupAgentPermissions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codeguruprofiler-profilinggroup.html#cfn-codeguruprofiler-profilinggroup-computeplatform
cgppgComputePlatform :: Lens' CodeGuruProfilerProfilingGroup (Maybe (Val Text))
cgppgComputePlatform = lens _codeGuruProfilerProfilingGroupComputePlatform (\s a -> s { _codeGuruProfilerProfilingGroupComputePlatform = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codeguruprofiler-profilinggroup.html#cfn-codeguruprofiler-profilinggroup-profilinggroupname
cgppgProfilingGroupName :: Lens' CodeGuruProfilerProfilingGroup (Val Text)
cgppgProfilingGroupName = lens _codeGuruProfilerProfilingGroupProfilingGroupName (\s a -> s { _codeGuruProfilerProfilingGroupProfilingGroupName = a })
