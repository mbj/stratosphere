{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-parameter.html

module Stratosphere.ResourceProperties.CloudFormationStackSetParameter where

import Stratosphere.ResourceImports


-- | Full data type definition for CloudFormationStackSetParameter. See
-- 'cloudFormationStackSetParameter' for a more convenient constructor.
data CloudFormationStackSetParameter =
  CloudFormationStackSetParameter
  { _cloudFormationStackSetParameterParameterKey :: Val Text
  , _cloudFormationStackSetParameterParameterValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON CloudFormationStackSetParameter where
  toJSON CloudFormationStackSetParameter{..} =
    object $
    catMaybes
    [ (Just . ("ParameterKey",) . toJSON) _cloudFormationStackSetParameterParameterKey
    , (Just . ("ParameterValue",) . toJSON) _cloudFormationStackSetParameterParameterValue
    ]

-- | Constructor for 'CloudFormationStackSetParameter' containing required
-- fields as arguments.
cloudFormationStackSetParameter
  :: Val Text -- ^ 'cfsspParameterKey'
  -> Val Text -- ^ 'cfsspParameterValue'
  -> CloudFormationStackSetParameter
cloudFormationStackSetParameter parameterKeyarg parameterValuearg =
  CloudFormationStackSetParameter
  { _cloudFormationStackSetParameterParameterKey = parameterKeyarg
  , _cloudFormationStackSetParameterParameterValue = parameterValuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-parameter.html#cfn-cloudformation-stackset-parameter-parameterkey
cfsspParameterKey :: Lens' CloudFormationStackSetParameter (Val Text)
cfsspParameterKey = lens _cloudFormationStackSetParameterParameterKey (\s a -> s { _cloudFormationStackSetParameterParameterKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-parameter.html#cfn-cloudformation-stackset-parameter-parametervalue
cfsspParameterValue :: Lens' CloudFormationStackSetParameter (Val Text)
cfsspParameterValue = lens _cloudFormationStackSetParameterParameterValue (\s a -> s { _cloudFormationStackSetParameterParameterValue = a })
