{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The RedrivePolicy type is a property of the AWS::SQS::Queue resource.

module Stratosphere.ResourceProperties.SQSRedrivePolicy where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for SQSRedrivePolicy. See 'sqsRedrivePolicy'
-- for a more convenient constructor.
data SQSRedrivePolicy =
  SQSRedrivePolicy
  { _sQSRedrivePolicydeadLetterTargetArn :: Val Text
  , _sQSRedrivePolicymaxReceiveCount :: Maybe (Val Integer')
  } deriving (Show, Generic)

instance ToJSON SQSRedrivePolicy where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

instance FromJSON SQSRedrivePolicy where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

-- | Constructor for 'SQSRedrivePolicy' containing required fields as
-- arguments.
sqsRedrivePolicy
  :: Val Text -- ^ 'sqsrpdeadLetterTargetArn'
  -> SQSRedrivePolicy
sqsRedrivePolicy deadLetterTargetArnarg =
  SQSRedrivePolicy
  { _sQSRedrivePolicydeadLetterTargetArn = deadLetterTargetArnarg
  , _sQSRedrivePolicymaxReceiveCount = Nothing
  }

-- | The Amazon Resource Name (ARN) of the dead letter queue to which the
-- messages are sent to after the maxReceiveCount value has been exceeded.
sqsrpdeadLetterTargetArn :: Lens' SQSRedrivePolicy (Val Text)
sqsrpdeadLetterTargetArn = lens _sQSRedrivePolicydeadLetterTargetArn (\s a -> s { _sQSRedrivePolicydeadLetterTargetArn = a })

-- | The number of times a message is delivered to the source queue before
-- being sent to the dead letter queue.
sqsrpmaxReceiveCount :: Lens' SQSRedrivePolicy (Maybe (Val Integer'))
sqsrpmaxReceiveCount = lens _sQSRedrivePolicymaxReceiveCount (\s a -> s { _sQSRedrivePolicymaxReceiveCount = a })