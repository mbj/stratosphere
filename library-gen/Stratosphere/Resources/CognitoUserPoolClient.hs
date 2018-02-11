{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html

module Stratosphere.Resources.CognitoUserPoolClient where

import Stratosphere.ResourceImports


-- | Full data type definition for CognitoUserPoolClient. See
-- 'cognitoUserPoolClient' for a more convenient constructor.
data CognitoUserPoolClient =
  CognitoUserPoolClient
  { _cognitoUserPoolClientClientName :: Maybe (Val Text)
  , _cognitoUserPoolClientExplicitAuthFlows :: Maybe (ValList Text)
  , _cognitoUserPoolClientGenerateSecret :: Maybe (Val Bool)
  , _cognitoUserPoolClientReadAttributes :: Maybe (ValList Text)
  , _cognitoUserPoolClientRefreshTokenValidity :: Maybe (Val Double)
  , _cognitoUserPoolClientUserPoolId :: Val Text
  , _cognitoUserPoolClientWriteAttributes :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolClient where
  toJSON CognitoUserPoolClient{..} =
    object $
    catMaybes
    [ fmap (("ClientName",) . toJSON) _cognitoUserPoolClientClientName
    , fmap (("ExplicitAuthFlows",) . toJSON) _cognitoUserPoolClientExplicitAuthFlows
    , fmap (("GenerateSecret",) . toJSON . fmap Bool') _cognitoUserPoolClientGenerateSecret
    , fmap (("ReadAttributes",) . toJSON) _cognitoUserPoolClientReadAttributes
    , fmap (("RefreshTokenValidity",) . toJSON . fmap Double') _cognitoUserPoolClientRefreshTokenValidity
    , (Just . ("UserPoolId",) . toJSON) _cognitoUserPoolClientUserPoolId
    , fmap (("WriteAttributes",) . toJSON) _cognitoUserPoolClientWriteAttributes
    ]

instance FromJSON CognitoUserPoolClient where
  parseJSON (Object obj) =
    CognitoUserPoolClient <$>
      (obj .:? "ClientName") <*>
      (obj .:? "ExplicitAuthFlows") <*>
      fmap (fmap (fmap unBool')) (obj .:? "GenerateSecret") <*>
      (obj .:? "ReadAttributes") <*>
      fmap (fmap (fmap unDouble')) (obj .:? "RefreshTokenValidity") <*>
      (obj .: "UserPoolId") <*>
      (obj .:? "WriteAttributes")
  parseJSON _ = mempty

-- | Constructor for 'CognitoUserPoolClient' containing required fields as
-- arguments.
cognitoUserPoolClient
  :: Val Text -- ^ 'cupcUserPoolId'
  -> CognitoUserPoolClient
cognitoUserPoolClient userPoolIdarg =
  CognitoUserPoolClient
  { _cognitoUserPoolClientClientName = Nothing
  , _cognitoUserPoolClientExplicitAuthFlows = Nothing
  , _cognitoUserPoolClientGenerateSecret = Nothing
  , _cognitoUserPoolClientReadAttributes = Nothing
  , _cognitoUserPoolClientRefreshTokenValidity = Nothing
  , _cognitoUserPoolClientUserPoolId = userPoolIdarg
  , _cognitoUserPoolClientWriteAttributes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-clientname
cupcClientName :: Lens' CognitoUserPoolClient (Maybe (Val Text))
cupcClientName = lens _cognitoUserPoolClientClientName (\s a -> s { _cognitoUserPoolClientClientName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-explicitauthflows
cupcExplicitAuthFlows :: Lens' CognitoUserPoolClient (Maybe (ValList Text))
cupcExplicitAuthFlows = lens _cognitoUserPoolClientExplicitAuthFlows (\s a -> s { _cognitoUserPoolClientExplicitAuthFlows = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-generatesecret
cupcGenerateSecret :: Lens' CognitoUserPoolClient (Maybe (Val Bool))
cupcGenerateSecret = lens _cognitoUserPoolClientGenerateSecret (\s a -> s { _cognitoUserPoolClientGenerateSecret = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-readattributes
cupcReadAttributes :: Lens' CognitoUserPoolClient (Maybe (ValList Text))
cupcReadAttributes = lens _cognitoUserPoolClientReadAttributes (\s a -> s { _cognitoUserPoolClientReadAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-refreshtokenvalidity
cupcRefreshTokenValidity :: Lens' CognitoUserPoolClient (Maybe (Val Double))
cupcRefreshTokenValidity = lens _cognitoUserPoolClientRefreshTokenValidity (\s a -> s { _cognitoUserPoolClientRefreshTokenValidity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-userpoolid
cupcUserPoolId :: Lens' CognitoUserPoolClient (Val Text)
cupcUserPoolId = lens _cognitoUserPoolClientUserPoolId (\s a -> s { _cognitoUserPoolClientUserPoolId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-writeattributes
cupcWriteAttributes :: Lens' CognitoUserPoolClient (Maybe (ValList Text))
cupcWriteAttributes = lens _cognitoUserPoolClientWriteAttributes (\s a -> s { _cognitoUserPoolClientWriteAttributes = a })
