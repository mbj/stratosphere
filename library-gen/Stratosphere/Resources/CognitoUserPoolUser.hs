{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html

module Stratosphere.Resources.CognitoUserPoolUser where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CognitoUserPoolUserAttributeType

-- | Full data type definition for CognitoUserPoolUser. See
-- 'cognitoUserPoolUser' for a more convenient constructor.
data CognitoUserPoolUser =
  CognitoUserPoolUser
  { _cognitoUserPoolUserClientMetadata :: Maybe Object
  , _cognitoUserPoolUserDesiredDeliveryMediums :: Maybe (ValList Text)
  , _cognitoUserPoolUserForceAliasCreation :: Maybe (Val Bool)
  , _cognitoUserPoolUserMessageAction :: Maybe (Val Text)
  , _cognitoUserPoolUserUserAttributes :: Maybe [CognitoUserPoolUserAttributeType]
  , _cognitoUserPoolUserUserPoolId :: Val Text
  , _cognitoUserPoolUserUsername :: Maybe (Val Text)
  , _cognitoUserPoolUserValidationData :: Maybe [CognitoUserPoolUserAttributeType]
  } deriving (Show, Eq)

instance ToResourceProperties CognitoUserPoolUser where
  toResourceProperties CognitoUserPoolUser{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Cognito::UserPoolUser"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("ClientMetadata",) . toJSON) _cognitoUserPoolUserClientMetadata
        , fmap (("DesiredDeliveryMediums",) . toJSON) _cognitoUserPoolUserDesiredDeliveryMediums
        , fmap (("ForceAliasCreation",) . toJSON) _cognitoUserPoolUserForceAliasCreation
        , fmap (("MessageAction",) . toJSON) _cognitoUserPoolUserMessageAction
        , fmap (("UserAttributes",) . toJSON) _cognitoUserPoolUserUserAttributes
        , (Just . ("UserPoolId",) . toJSON) _cognitoUserPoolUserUserPoolId
        , fmap (("Username",) . toJSON) _cognitoUserPoolUserUsername
        , fmap (("ValidationData",) . toJSON) _cognitoUserPoolUserValidationData
        ]
    }

-- | Constructor for 'CognitoUserPoolUser' containing required fields as
-- arguments.
cognitoUserPoolUser
  :: Val Text -- ^ 'cupuUserPoolId'
  -> CognitoUserPoolUser
cognitoUserPoolUser userPoolIdarg =
  CognitoUserPoolUser
  { _cognitoUserPoolUserClientMetadata = Nothing
  , _cognitoUserPoolUserDesiredDeliveryMediums = Nothing
  , _cognitoUserPoolUserForceAliasCreation = Nothing
  , _cognitoUserPoolUserMessageAction = Nothing
  , _cognitoUserPoolUserUserAttributes = Nothing
  , _cognitoUserPoolUserUserPoolId = userPoolIdarg
  , _cognitoUserPoolUserUsername = Nothing
  , _cognitoUserPoolUserValidationData = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-clientmetadata
cupuClientMetadata :: Lens' CognitoUserPoolUser (Maybe Object)
cupuClientMetadata = lens _cognitoUserPoolUserClientMetadata (\s a -> s { _cognitoUserPoolUserClientMetadata = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-desireddeliverymediums
cupuDesiredDeliveryMediums :: Lens' CognitoUserPoolUser (Maybe (ValList Text))
cupuDesiredDeliveryMediums = lens _cognitoUserPoolUserDesiredDeliveryMediums (\s a -> s { _cognitoUserPoolUserDesiredDeliveryMediums = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-forcealiascreation
cupuForceAliasCreation :: Lens' CognitoUserPoolUser (Maybe (Val Bool))
cupuForceAliasCreation = lens _cognitoUserPoolUserForceAliasCreation (\s a -> s { _cognitoUserPoolUserForceAliasCreation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-messageaction
cupuMessageAction :: Lens' CognitoUserPoolUser (Maybe (Val Text))
cupuMessageAction = lens _cognitoUserPoolUserMessageAction (\s a -> s { _cognitoUserPoolUserMessageAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-userattributes
cupuUserAttributes :: Lens' CognitoUserPoolUser (Maybe [CognitoUserPoolUserAttributeType])
cupuUserAttributes = lens _cognitoUserPoolUserUserAttributes (\s a -> s { _cognitoUserPoolUserUserAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-userpoolid
cupuUserPoolId :: Lens' CognitoUserPoolUser (Val Text)
cupuUserPoolId = lens _cognitoUserPoolUserUserPoolId (\s a -> s { _cognitoUserPoolUserUserPoolId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-username
cupuUsername :: Lens' CognitoUserPoolUser (Maybe (Val Text))
cupuUsername = lens _cognitoUserPoolUserUsername (\s a -> s { _cognitoUserPoolUserUsername = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-validationdata
cupuValidationData :: Lens' CognitoUserPoolUser (Maybe [CognitoUserPoolUserAttributeType])
cupuValidationData = lens _cognitoUserPoolUserValidationData (\s a -> s { _cognitoUserPoolUserValidationData = a })
