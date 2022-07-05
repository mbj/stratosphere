{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackuserassociation.html

module Stratosphere.Resources.AppStreamStackUserAssociation where

import Stratosphere.ResourceImports


-- | Full data type definition for AppStreamStackUserAssociation. See
-- 'appStreamStackUserAssociation' for a more convenient constructor.
data AppStreamStackUserAssociation =
  AppStreamStackUserAssociation
  { _appStreamStackUserAssociationAuthenticationType :: Val Text
  , _appStreamStackUserAssociationSendEmailNotification :: Maybe (Val Bool)
  , _appStreamStackUserAssociationStackName :: Val Text
  , _appStreamStackUserAssociationUserName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties AppStreamStackUserAssociation where
  toResourceProperties AppStreamStackUserAssociation{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AppStream::StackUserAssociation"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("AuthenticationType",) . toJSON) _appStreamStackUserAssociationAuthenticationType
        , fmap (("SendEmailNotification",) . toJSON) _appStreamStackUserAssociationSendEmailNotification
        , (Just . ("StackName",) . toJSON) _appStreamStackUserAssociationStackName
        , (Just . ("UserName",) . toJSON) _appStreamStackUserAssociationUserName
        ]
    }

-- | Constructor for 'AppStreamStackUserAssociation' containing required
-- fields as arguments.
appStreamStackUserAssociation
  :: Val Text -- ^ 'assuaAuthenticationType'
  -> Val Text -- ^ 'assuaStackName'
  -> Val Text -- ^ 'assuaUserName'
  -> AppStreamStackUserAssociation
appStreamStackUserAssociation authenticationTypearg stackNamearg userNamearg =
  AppStreamStackUserAssociation
  { _appStreamStackUserAssociationAuthenticationType = authenticationTypearg
  , _appStreamStackUserAssociationSendEmailNotification = Nothing
  , _appStreamStackUserAssociationStackName = stackNamearg
  , _appStreamStackUserAssociationUserName = userNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackuserassociation.html#cfn-appstream-stackuserassociation-authenticationtype
assuaAuthenticationType :: Lens' AppStreamStackUserAssociation (Val Text)
assuaAuthenticationType = lens _appStreamStackUserAssociationAuthenticationType (\s a -> s { _appStreamStackUserAssociationAuthenticationType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackuserassociation.html#cfn-appstream-stackuserassociation-sendemailnotification
assuaSendEmailNotification :: Lens' AppStreamStackUserAssociation (Maybe (Val Bool))
assuaSendEmailNotification = lens _appStreamStackUserAssociationSendEmailNotification (\s a -> s { _appStreamStackUserAssociationSendEmailNotification = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackuserassociation.html#cfn-appstream-stackuserassociation-stackname
assuaStackName :: Lens' AppStreamStackUserAssociation (Val Text)
assuaStackName = lens _appStreamStackUserAssociationStackName (\s a -> s { _appStreamStackUserAssociationStackName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackuserassociation.html#cfn-appstream-stackuserassociation-username
assuaUserName :: Lens' AppStreamStackUserAssociation (Val Text)
assuaUserName = lens _appStreamStackUserAssociationUserName (\s a -> s { _appStreamStackUserAssociationUserName = a })
