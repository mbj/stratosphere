
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-sigv4authorization.html

module Stratosphere.ResourceProperties.IoTTopicRuleSigV4Authorization where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for IoTTopicRuleSigV4Authorization. See
-- 'ioTTopicRuleSigV4Authorization' for a more convenient constructor.
data IoTTopicRuleSigV4Authorization =
  IoTTopicRuleSigV4Authorization
  { _ioTTopicRuleSigV4AuthorizationRoleArn :: Val Text
  , _ioTTopicRuleSigV4AuthorizationServiceName :: Val Text
  , _ioTTopicRuleSigV4AuthorizationSigningRegion :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTTopicRuleSigV4Authorization where
  toJSON IoTTopicRuleSigV4Authorization{..} =
    object $
    catMaybes
    [ (Just . ("RoleArn",) . toJSON) _ioTTopicRuleSigV4AuthorizationRoleArn
    , (Just . ("ServiceName",) . toJSON) _ioTTopicRuleSigV4AuthorizationServiceName
    , (Just . ("SigningRegion",) . toJSON) _ioTTopicRuleSigV4AuthorizationSigningRegion
    ]

-- | Constructor for 'IoTTopicRuleSigV4Authorization' containing required
-- fields as arguments.
ioTTopicRuleSigV4Authorization
  :: Val Text -- ^ 'ittrsvaRoleArn'
  -> Val Text -- ^ 'ittrsvaServiceName'
  -> Val Text -- ^ 'ittrsvaSigningRegion'
  -> IoTTopicRuleSigV4Authorization
ioTTopicRuleSigV4Authorization roleArnarg serviceNamearg signingRegionarg =
  IoTTopicRuleSigV4Authorization
  { _ioTTopicRuleSigV4AuthorizationRoleArn = roleArnarg
  , _ioTTopicRuleSigV4AuthorizationServiceName = serviceNamearg
  , _ioTTopicRuleSigV4AuthorizationSigningRegion = signingRegionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-sigv4authorization.html#cfn-iot-topicrule-sigv4authorization-rolearn
ittrsvaRoleArn :: Lens' IoTTopicRuleSigV4Authorization (Val Text)
ittrsvaRoleArn = lens _ioTTopicRuleSigV4AuthorizationRoleArn (\s a -> s { _ioTTopicRuleSigV4AuthorizationRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-sigv4authorization.html#cfn-iot-topicrule-sigv4authorization-servicename
ittrsvaServiceName :: Lens' IoTTopicRuleSigV4Authorization (Val Text)
ittrsvaServiceName = lens _ioTTopicRuleSigV4AuthorizationServiceName (\s a -> s { _ioTTopicRuleSigV4AuthorizationServiceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-sigv4authorization.html#cfn-iot-topicrule-sigv4authorization-signingregion
ittrsvaSigningRegion :: Lens' IoTTopicRuleSigV4Authorization (Val Text)
ittrsvaSigningRegion = lens _ioTTopicRuleSigV4AuthorizationSigningRegion (\s a -> s { _ioTTopicRuleSigV4AuthorizationSigningRegion = a })
