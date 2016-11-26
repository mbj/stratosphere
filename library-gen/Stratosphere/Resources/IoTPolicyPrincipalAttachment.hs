{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policyprincipalattachment.html

module Stratosphere.Resources.IoTPolicyPrincipalAttachment where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for IoTPolicyPrincipalAttachment. See
-- | 'ioTPolicyPrincipalAttachment' for a more convenient constructor.
data IoTPolicyPrincipalAttachment =
  IoTPolicyPrincipalAttachment
  { _ioTPolicyPrincipalAttachmentPolicyName :: Val Text
  , _ioTPolicyPrincipalAttachmentPrincipal :: Val Text
  } deriving (Show, Generic)

instance ToJSON IoTPolicyPrincipalAttachment where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 29, omitNothingFields = True }

instance FromJSON IoTPolicyPrincipalAttachment where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 29, omitNothingFields = True }

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
