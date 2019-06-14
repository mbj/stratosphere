{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-parameters.html

module Stratosphere.ResourceProperties.DLMLifecyclePolicyParameters where

import Stratosphere.ResourceImports


-- | Full data type definition for DLMLifecyclePolicyParameters. See
-- 'dlmLifecyclePolicyParameters' for a more convenient constructor.
data DLMLifecyclePolicyParameters =
  DLMLifecyclePolicyParameters
  { _dLMLifecyclePolicyParametersExcludeBootVolume :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON DLMLifecyclePolicyParameters where
  toJSON DLMLifecyclePolicyParameters{..} =
    object $
    catMaybes
    [ fmap (("ExcludeBootVolume",) . toJSON) _dLMLifecyclePolicyParametersExcludeBootVolume
    ]

-- | Constructor for 'DLMLifecyclePolicyParameters' containing required fields
-- as arguments.
dlmLifecyclePolicyParameters
  :: DLMLifecyclePolicyParameters
dlmLifecyclePolicyParameters  =
  DLMLifecyclePolicyParameters
  { _dLMLifecyclePolicyParametersExcludeBootVolume = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-parameters.html#cfn-dlm-lifecyclepolicy-parameters-excludebootvolume
dlmlppExcludeBootVolume :: Lens' DLMLifecyclePolicyParameters (Maybe (Val Bool))
dlmlppExcludeBootVolume = lens _dLMLifecyclePolicyParametersExcludeBootVolume (\s a -> s { _dLMLifecyclePolicyParametersExcludeBootVolume = a })
