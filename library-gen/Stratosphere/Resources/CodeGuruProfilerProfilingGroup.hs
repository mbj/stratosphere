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
  { _codeGuruProfilerProfilingGroupProfilingGroupName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties CodeGuruProfilerProfilingGroup where
  toResourceProperties CodeGuruProfilerProfilingGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CodeGuruProfiler::ProfilingGroup"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ (Just . ("ProfilingGroupName",) . toJSON) _codeGuruProfilerProfilingGroupProfilingGroupName
        ]
    }

-- | Constructor for 'CodeGuruProfilerProfilingGroup' containing required
-- fields as arguments.
codeGuruProfilerProfilingGroup
  :: Val Text -- ^ 'cgppgProfilingGroupName'
  -> CodeGuruProfilerProfilingGroup
codeGuruProfilerProfilingGroup profilingGroupNamearg =
  CodeGuruProfilerProfilingGroup
  { _codeGuruProfilerProfilingGroupProfilingGroupName = profilingGroupNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codeguruprofiler-profilinggroup.html#cfn-codeguruprofiler-profilinggroup-profilinggroupname
cgppgProfilingGroupName :: Lens' CodeGuruProfilerProfilingGroup (Val Text)
cgppgProfilingGroupName = lens _codeGuruProfilerProfilingGroupProfilingGroupName (\s a -> s { _codeGuruProfilerProfilingGroupProfilingGroupName = a })
