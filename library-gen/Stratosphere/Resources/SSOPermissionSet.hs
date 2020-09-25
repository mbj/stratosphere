{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-permissionset.html

module Stratosphere.Resources.SSOPermissionSet where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for SSOPermissionSet. See 'ssoPermissionSet'
-- for a more convenient constructor.
data SSOPermissionSet =
  SSOPermissionSet
  { _sSOPermissionSetDescription :: Maybe (Val Text)
  , _sSOPermissionSetInlinePolicy :: Maybe (Val Text)
  , _sSOPermissionSetInstanceArn :: Val Text
  , _sSOPermissionSetManagedPolicies :: Maybe (ValList Text)
  , _sSOPermissionSetName :: Val Text
  , _sSOPermissionSetRelayStateType :: Maybe (Val Text)
  , _sSOPermissionSetSessionDuration :: Maybe (Val Text)
  , _sSOPermissionSetTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties SSOPermissionSet where
  toResourceProperties SSOPermissionSet{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SSO::PermissionSet"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _sSOPermissionSetDescription
        , fmap (("InlinePolicy",) . toJSON) _sSOPermissionSetInlinePolicy
        , (Just . ("InstanceArn",) . toJSON) _sSOPermissionSetInstanceArn
        , fmap (("ManagedPolicies",) . toJSON) _sSOPermissionSetManagedPolicies
        , (Just . ("Name",) . toJSON) _sSOPermissionSetName
        , fmap (("RelayStateType",) . toJSON) _sSOPermissionSetRelayStateType
        , fmap (("SessionDuration",) . toJSON) _sSOPermissionSetSessionDuration
        , fmap (("Tags",) . toJSON) _sSOPermissionSetTags
        ]
    }

-- | Constructor for 'SSOPermissionSet' containing required fields as
-- arguments.
ssoPermissionSet
  :: Val Text -- ^ 'ssopsInstanceArn'
  -> Val Text -- ^ 'ssopsName'
  -> SSOPermissionSet
ssoPermissionSet instanceArnarg namearg =
  SSOPermissionSet
  { _sSOPermissionSetDescription = Nothing
  , _sSOPermissionSetInlinePolicy = Nothing
  , _sSOPermissionSetInstanceArn = instanceArnarg
  , _sSOPermissionSetManagedPolicies = Nothing
  , _sSOPermissionSetName = namearg
  , _sSOPermissionSetRelayStateType = Nothing
  , _sSOPermissionSetSessionDuration = Nothing
  , _sSOPermissionSetTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-permissionset.html#cfn-sso-permissionset-description
ssopsDescription :: Lens' SSOPermissionSet (Maybe (Val Text))
ssopsDescription = lens _sSOPermissionSetDescription (\s a -> s { _sSOPermissionSetDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-permissionset.html#cfn-sso-permissionset-inlinepolicy
ssopsInlinePolicy :: Lens' SSOPermissionSet (Maybe (Val Text))
ssopsInlinePolicy = lens _sSOPermissionSetInlinePolicy (\s a -> s { _sSOPermissionSetInlinePolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-permissionset.html#cfn-sso-permissionset-instancearn
ssopsInstanceArn :: Lens' SSOPermissionSet (Val Text)
ssopsInstanceArn = lens _sSOPermissionSetInstanceArn (\s a -> s { _sSOPermissionSetInstanceArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-permissionset.html#cfn-sso-permissionset-managedpolicies
ssopsManagedPolicies :: Lens' SSOPermissionSet (Maybe (ValList Text))
ssopsManagedPolicies = lens _sSOPermissionSetManagedPolicies (\s a -> s { _sSOPermissionSetManagedPolicies = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-permissionset.html#cfn-sso-permissionset-name
ssopsName :: Lens' SSOPermissionSet (Val Text)
ssopsName = lens _sSOPermissionSetName (\s a -> s { _sSOPermissionSetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-permissionset.html#cfn-sso-permissionset-relaystatetype
ssopsRelayStateType :: Lens' SSOPermissionSet (Maybe (Val Text))
ssopsRelayStateType = lens _sSOPermissionSetRelayStateType (\s a -> s { _sSOPermissionSetRelayStateType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-permissionset.html#cfn-sso-permissionset-sessionduration
ssopsSessionDuration :: Lens' SSOPermissionSet (Maybe (Val Text))
ssopsSessionDuration = lens _sSOPermissionSetSessionDuration (\s a -> s { _sSOPermissionSetSessionDuration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-permissionset.html#cfn-sso-permissionset-tags
ssopsTags :: Lens' SSOPermissionSet (Maybe [Tag])
ssopsTags = lens _sSOPermissionSetTags (\s a -> s { _sSOPermissionSetTags = a })
