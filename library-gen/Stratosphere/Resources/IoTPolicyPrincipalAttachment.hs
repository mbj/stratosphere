{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policyprincipalattachment.html

module Stratosphere.Resources.IoTPolicyPrincipalAttachment where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for IoTPolicyPrincipalAttachment. See
-- | 'ioTPolicyPrincipalAttachment' for a more convenient constructor.
data IoTPolicyPrincipalAttachment =
  IoTPolicyPrincipalAttachment
  { _ioTPolicyPrincipalAttachmentPolicyName :: Val Text
  , _ioTPolicyPrincipalAttachmentPrincipal :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTPolicyPrincipalAttachment where
  toJSON IoTPolicyPrincipalAttachment{..} =
    object
    [ "PolicyName" .= _ioTPolicyPrincipalAttachmentPolicyName
    , "Principal" .= _ioTPolicyPrincipalAttachmentPrincipal
    ]

instance FromJSON IoTPolicyPrincipalAttachment where
  parseJSON (Object obj) =
    IoTPolicyPrincipalAttachment <$>
      obj .: "PolicyName" <*>
      obj .: "Principal"
  parseJSON _ = mempty

-- | Constructor for 'IoTPolicyPrincipalAttachment' containing required fields
-- | as arguments.
ioTPolicyPrincipalAttachment
  :: Val Text -- ^ 'itppaPolicyName'
  -> Val Text -- ^ 'itppaPrincipal'
  -> IoTPolicyPrincipalAttachment
ioTPolicyPrincipalAttachment policyNamearg principalarg =
  IoTPolicyPrincipalAttachment
  { _ioTPolicyPrincipalAttachmentPolicyName = policyNamearg
  , _ioTPolicyPrincipalAttachmentPrincipal = principalarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policyprincipalattachment.html#cfn-iot-policyprincipalattachment-policyname
itppaPolicyName :: Lens' IoTPolicyPrincipalAttachment (Val Text)
itppaPolicyName = lens _ioTPolicyPrincipalAttachmentPolicyName (\s a -> s { _ioTPolicyPrincipalAttachmentPolicyName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policyprincipalattachment.html#cfn-iot-policyprincipalattachment-principal
itppaPrincipal :: Lens' IoTPolicyPrincipalAttachment (Val Text)
itppaPrincipal = lens _ioTPolicyPrincipalAttachmentPrincipal (\s a -> s { _ioTPolicyPrincipalAttachmentPrincipal = a })
