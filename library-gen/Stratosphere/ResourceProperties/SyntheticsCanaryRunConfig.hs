{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-runconfig.html

module Stratosphere.ResourceProperties.SyntheticsCanaryRunConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for SyntheticsCanaryRunConfig. See
-- 'syntheticsCanaryRunConfig' for a more convenient constructor.
data SyntheticsCanaryRunConfig =
  SyntheticsCanaryRunConfig
  { _syntheticsCanaryRunConfigMemoryInMB :: Maybe (Val Integer)
  , _syntheticsCanaryRunConfigTimeoutInSeconds :: Val Integer
  } deriving (Show, Eq)

instance ToJSON SyntheticsCanaryRunConfig where
  toJSON SyntheticsCanaryRunConfig{..} =
    object $
    catMaybes
    [ fmap (("MemoryInMB",) . toJSON) _syntheticsCanaryRunConfigMemoryInMB
    , (Just . ("TimeoutInSeconds",) . toJSON) _syntheticsCanaryRunConfigTimeoutInSeconds
    ]

-- | Constructor for 'SyntheticsCanaryRunConfig' containing required fields as
-- arguments.
syntheticsCanaryRunConfig
  :: Val Integer -- ^ 'scrcTimeoutInSeconds'
  -> SyntheticsCanaryRunConfig
syntheticsCanaryRunConfig timeoutInSecondsarg =
  SyntheticsCanaryRunConfig
  { _syntheticsCanaryRunConfigMemoryInMB = Nothing
  , _syntheticsCanaryRunConfigTimeoutInSeconds = timeoutInSecondsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-runconfig.html#cfn-synthetics-canary-runconfig-memoryinmb
scrcMemoryInMB :: Lens' SyntheticsCanaryRunConfig (Maybe (Val Integer))
scrcMemoryInMB = lens _syntheticsCanaryRunConfigMemoryInMB (\s a -> s { _syntheticsCanaryRunConfigMemoryInMB = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-runconfig.html#cfn-synthetics-canary-runconfig-timeoutinseconds
scrcTimeoutInSeconds :: Lens' SyntheticsCanaryRunConfig (Val Integer)
scrcTimeoutInSeconds = lens _syntheticsCanaryRunConfigTimeoutInSeconds (\s a -> s { _syntheticsCanaryRunConfigTimeoutInSeconds = a })
