{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluicustomizationattachment.html

module Stratosphere.Resources.CognitoUserPoolUICustomizationAttachment where

import Stratosphere.ResourceImports


-- | Full data type definition for CognitoUserPoolUICustomizationAttachment.
-- See 'cognitoUserPoolUICustomizationAttachment' for a more convenient
-- constructor.
data CognitoUserPoolUICustomizationAttachment =
  CognitoUserPoolUICustomizationAttachment
  { _cognitoUserPoolUICustomizationAttachmentCSS :: Maybe (Val Text)
  , _cognitoUserPoolUICustomizationAttachmentClientId :: Val Text
  , _cognitoUserPoolUICustomizationAttachmentUserPoolId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties CognitoUserPoolUICustomizationAttachment where
  toResourceProperties CognitoUserPoolUICustomizationAttachment{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Cognito::UserPoolUICustomizationAttachment"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("CSS",) . toJSON) _cognitoUserPoolUICustomizationAttachmentCSS
        , (Just . ("ClientId",) . toJSON) _cognitoUserPoolUICustomizationAttachmentClientId
        , (Just . ("UserPoolId",) . toJSON) _cognitoUserPoolUICustomizationAttachmentUserPoolId
        ]
    }

-- | Constructor for 'CognitoUserPoolUICustomizationAttachment' containing
-- required fields as arguments.
cognitoUserPoolUICustomizationAttachment
  :: Val Text -- ^ 'cupuicaClientId'
  -> Val Text -- ^ 'cupuicaUserPoolId'
  -> CognitoUserPoolUICustomizationAttachment
cognitoUserPoolUICustomizationAttachment clientIdarg userPoolIdarg =
  CognitoUserPoolUICustomizationAttachment
  { _cognitoUserPoolUICustomizationAttachmentCSS = Nothing
  , _cognitoUserPoolUICustomizationAttachmentClientId = clientIdarg
  , _cognitoUserPoolUICustomizationAttachmentUserPoolId = userPoolIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluicustomizationattachment.html#cfn-cognito-userpooluicustomizationattachment-css
cupuicaCSS :: Lens' CognitoUserPoolUICustomizationAttachment (Maybe (Val Text))
cupuicaCSS = lens _cognitoUserPoolUICustomizationAttachmentCSS (\s a -> s { _cognitoUserPoolUICustomizationAttachmentCSS = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluicustomizationattachment.html#cfn-cognito-userpooluicustomizationattachment-clientid
cupuicaClientId :: Lens' CognitoUserPoolUICustomizationAttachment (Val Text)
cupuicaClientId = lens _cognitoUserPoolUICustomizationAttachmentClientId (\s a -> s { _cognitoUserPoolUICustomizationAttachmentClientId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluicustomizationattachment.html#cfn-cognito-userpooluicustomizationattachment-userpoolid
cupuicaUserPoolId :: Lens' CognitoUserPoolUICustomizationAttachment (Val Text)
cupuicaUserPoolId = lens _cognitoUserPoolUICustomizationAttachmentUserPoolId (\s a -> s { _cognitoUserPoolUICustomizationAttachmentUserPoolId = a })
