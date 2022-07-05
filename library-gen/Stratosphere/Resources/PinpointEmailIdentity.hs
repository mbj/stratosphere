{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-identity.html

module Stratosphere.Resources.PinpointEmailIdentity where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.PinpointEmailIdentityMailFromAttributes
import Stratosphere.ResourceProperties.PinpointEmailIdentityTags

-- | Full data type definition for PinpointEmailIdentity. See
-- 'pinpointEmailIdentity' for a more convenient constructor.
data PinpointEmailIdentity =
  PinpointEmailIdentity
  { _pinpointEmailIdentityDkimSigningEnabled :: Maybe (Val Bool)
  , _pinpointEmailIdentityFeedbackForwardingEnabled :: Maybe (Val Bool)
  , _pinpointEmailIdentityMailFromAttributes :: Maybe PinpointEmailIdentityMailFromAttributes
  , _pinpointEmailIdentityName :: Val Text
  , _pinpointEmailIdentityTags :: Maybe [PinpointEmailIdentityTags]
  } deriving (Show, Eq)

instance ToResourceProperties PinpointEmailIdentity where
  toResourceProperties PinpointEmailIdentity{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::PinpointEmail::Identity"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("DkimSigningEnabled",) . toJSON) _pinpointEmailIdentityDkimSigningEnabled
        , fmap (("FeedbackForwardingEnabled",) . toJSON) _pinpointEmailIdentityFeedbackForwardingEnabled
        , fmap (("MailFromAttributes",) . toJSON) _pinpointEmailIdentityMailFromAttributes
        , (Just . ("Name",) . toJSON) _pinpointEmailIdentityName
        , fmap (("Tags",) . toJSON) _pinpointEmailIdentityTags
        ]
    }

-- | Constructor for 'PinpointEmailIdentity' containing required fields as
-- arguments.
pinpointEmailIdentity
  :: Val Text -- ^ 'peiName'
  -> PinpointEmailIdentity
pinpointEmailIdentity namearg =
  PinpointEmailIdentity
  { _pinpointEmailIdentityDkimSigningEnabled = Nothing
  , _pinpointEmailIdentityFeedbackForwardingEnabled = Nothing
  , _pinpointEmailIdentityMailFromAttributes = Nothing
  , _pinpointEmailIdentityName = namearg
  , _pinpointEmailIdentityTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-identity.html#cfn-pinpointemail-identity-dkimsigningenabled
peiDkimSigningEnabled :: Lens' PinpointEmailIdentity (Maybe (Val Bool))
peiDkimSigningEnabled = lens _pinpointEmailIdentityDkimSigningEnabled (\s a -> s { _pinpointEmailIdentityDkimSigningEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-identity.html#cfn-pinpointemail-identity-feedbackforwardingenabled
peiFeedbackForwardingEnabled :: Lens' PinpointEmailIdentity (Maybe (Val Bool))
peiFeedbackForwardingEnabled = lens _pinpointEmailIdentityFeedbackForwardingEnabled (\s a -> s { _pinpointEmailIdentityFeedbackForwardingEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-identity.html#cfn-pinpointemail-identity-mailfromattributes
peiMailFromAttributes :: Lens' PinpointEmailIdentity (Maybe PinpointEmailIdentityMailFromAttributes)
peiMailFromAttributes = lens _pinpointEmailIdentityMailFromAttributes (\s a -> s { _pinpointEmailIdentityMailFromAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-identity.html#cfn-pinpointemail-identity-name
peiName :: Lens' PinpointEmailIdentity (Val Text)
peiName = lens _pinpointEmailIdentityName (\s a -> s { _pinpointEmailIdentityName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-identity.html#cfn-pinpointemail-identity-tags
peiTags :: Lens' PinpointEmailIdentity (Maybe [PinpointEmailIdentityTags])
peiTags = lens _pinpointEmailIdentityTags (\s a -> s { _pinpointEmailIdentityTags = a })
