{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policy.html

module Stratosphere.Resources.IoTPolicy where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTPolicy. See 'ioTPolicy' for a more
-- convenient constructor.
data IoTPolicy =
  IoTPolicy
  { _ioTPolicyPolicyDocument :: Object
  , _ioTPolicyPolicyName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties IoTPolicy where
  toResourceProperties IoTPolicy{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::IoT::Policy"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("PolicyDocument",) . toJSON) _ioTPolicyPolicyDocument
        , fmap (("PolicyName",) . toJSON) _ioTPolicyPolicyName
        ]
    }

-- | Constructor for 'IoTPolicy' containing required fields as arguments.
ioTPolicy
  :: Object -- ^ 'itpPolicyDocument'
  -> IoTPolicy
ioTPolicy policyDocumentarg =
  IoTPolicy
  { _ioTPolicyPolicyDocument = policyDocumentarg
  , _ioTPolicyPolicyName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policy.html#cfn-iot-policy-policydocument
itpPolicyDocument :: Lens' IoTPolicy Object
itpPolicyDocument = lens _ioTPolicyPolicyDocument (\s a -> s { _ioTPolicyPolicyDocument = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policy.html#cfn-iot-policy-policyname
itpPolicyName :: Lens' IoTPolicy (Maybe (Val Text))
itpPolicyName = lens _ioTPolicyPolicyName (\s a -> s { _ioTPolicyPolicyName = a })
