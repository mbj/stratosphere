
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-identity-mailfromattributes.html

module Stratosphere.ResourceProperties.PinpointEmailIdentityMailFromAttributes where

import Stratosphere.ResourceImports


-- | Full data type definition for PinpointEmailIdentityMailFromAttributes.
-- See 'pinpointEmailIdentityMailFromAttributes' for a more convenient
-- constructor.
data PinpointEmailIdentityMailFromAttributes =
  PinpointEmailIdentityMailFromAttributes
  { _pinpointEmailIdentityMailFromAttributesBehaviorOnMxFailure :: Maybe (Val Text)
  , _pinpointEmailIdentityMailFromAttributesMailFromDomain :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON PinpointEmailIdentityMailFromAttributes where
  toJSON PinpointEmailIdentityMailFromAttributes{..} =
    object $
    catMaybes
    [ fmap (("BehaviorOnMxFailure",) . toJSON) _pinpointEmailIdentityMailFromAttributesBehaviorOnMxFailure
    , fmap (("MailFromDomain",) . toJSON) _pinpointEmailIdentityMailFromAttributesMailFromDomain
    ]

-- | Constructor for 'PinpointEmailIdentityMailFromAttributes' containing
-- required fields as arguments.
pinpointEmailIdentityMailFromAttributes
  :: PinpointEmailIdentityMailFromAttributes
pinpointEmailIdentityMailFromAttributes  =
  PinpointEmailIdentityMailFromAttributes
  { _pinpointEmailIdentityMailFromAttributesBehaviorOnMxFailure = Nothing
  , _pinpointEmailIdentityMailFromAttributesMailFromDomain = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-identity-mailfromattributes.html#cfn-pinpointemail-identity-mailfromattributes-behavioronmxfailure
peimfaBehaviorOnMxFailure :: Lens' PinpointEmailIdentityMailFromAttributes (Maybe (Val Text))
peimfaBehaviorOnMxFailure = lens _pinpointEmailIdentityMailFromAttributesBehaviorOnMxFailure (\s a -> s { _pinpointEmailIdentityMailFromAttributesBehaviorOnMxFailure = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-identity-mailfromattributes.html#cfn-pinpointemail-identity-mailfromattributes-mailfromdomain
peimfaMailFromDomain :: Lens' PinpointEmailIdentityMailFromAttributes (Maybe (Val Text))
peimfaMailFromDomain = lens _pinpointEmailIdentityMailFromAttributesMailFromDomain (\s a -> s { _pinpointEmailIdentityMailFromAttributesMailFromDomain = a })
