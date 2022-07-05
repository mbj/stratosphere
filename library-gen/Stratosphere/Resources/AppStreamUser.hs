{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-user.html

module Stratosphere.Resources.AppStreamUser where

import Stratosphere.ResourceImports


-- | Full data type definition for AppStreamUser. See 'appStreamUser' for a
-- more convenient constructor.
data AppStreamUser =
  AppStreamUser
  { _appStreamUserAuthenticationType :: Val Text
  , _appStreamUserFirstName :: Maybe (Val Text)
  , _appStreamUserLastName :: Maybe (Val Text)
  , _appStreamUserMessageAction :: Maybe (Val Text)
  , _appStreamUserUserName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties AppStreamUser where
  toResourceProperties AppStreamUser{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AppStream::User"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("AuthenticationType",) . toJSON) _appStreamUserAuthenticationType
        , fmap (("FirstName",) . toJSON) _appStreamUserFirstName
        , fmap (("LastName",) . toJSON) _appStreamUserLastName
        , fmap (("MessageAction",) . toJSON) _appStreamUserMessageAction
        , (Just . ("UserName",) . toJSON) _appStreamUserUserName
        ]
    }

-- | Constructor for 'AppStreamUser' containing required fields as arguments.
appStreamUser
  :: Val Text -- ^ 'asuAuthenticationType'
  -> Val Text -- ^ 'asuUserName'
  -> AppStreamUser
appStreamUser authenticationTypearg userNamearg =
  AppStreamUser
  { _appStreamUserAuthenticationType = authenticationTypearg
  , _appStreamUserFirstName = Nothing
  , _appStreamUserLastName = Nothing
  , _appStreamUserMessageAction = Nothing
  , _appStreamUserUserName = userNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-user.html#cfn-appstream-user-authenticationtype
asuAuthenticationType :: Lens' AppStreamUser (Val Text)
asuAuthenticationType = lens _appStreamUserAuthenticationType (\s a -> s { _appStreamUserAuthenticationType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-user.html#cfn-appstream-user-firstname
asuFirstName :: Lens' AppStreamUser (Maybe (Val Text))
asuFirstName = lens _appStreamUserFirstName (\s a -> s { _appStreamUserFirstName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-user.html#cfn-appstream-user-lastname
asuLastName :: Lens' AppStreamUser (Maybe (Val Text))
asuLastName = lens _appStreamUserLastName (\s a -> s { _appStreamUserLastName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-user.html#cfn-appstream-user-messageaction
asuMessageAction :: Lens' AppStreamUser (Maybe (Val Text))
asuMessageAction = lens _appStreamUserMessageAction (\s a -> s { _appStreamUserMessageAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-user.html#cfn-appstream-user-username
asuUserName :: Lens' AppStreamUser (Val Text)
asuUserName = lens _appStreamUserUserName (\s a -> s { _appStreamUserUserName = a })
