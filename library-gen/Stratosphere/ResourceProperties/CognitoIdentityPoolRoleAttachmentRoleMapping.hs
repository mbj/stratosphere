{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rolemapping.html

module Stratosphere.ResourceProperties.CognitoIdentityPoolRoleAttachmentRoleMapping where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CognitoIdentityPoolRoleAttachmentRulesConfigurationType

-- | Full data type definition for
-- CognitoIdentityPoolRoleAttachmentRoleMapping. See
-- 'cognitoIdentityPoolRoleAttachmentRoleMapping' for a more convenient
-- constructor.
data CognitoIdentityPoolRoleAttachmentRoleMapping =
  CognitoIdentityPoolRoleAttachmentRoleMapping
  { _cognitoIdentityPoolRoleAttachmentRoleMappingAmbiguousRoleResolution :: Maybe (Val Text)
  , _cognitoIdentityPoolRoleAttachmentRoleMappingRulesConfiguration :: Maybe CognitoIdentityPoolRoleAttachmentRulesConfigurationType
  , _cognitoIdentityPoolRoleAttachmentRoleMappingType :: Val Text
  } deriving (Show, Eq)

instance ToJSON CognitoIdentityPoolRoleAttachmentRoleMapping where
  toJSON CognitoIdentityPoolRoleAttachmentRoleMapping{..} =
    object $
    catMaybes
    [ fmap (("AmbiguousRoleResolution",) . toJSON) _cognitoIdentityPoolRoleAttachmentRoleMappingAmbiguousRoleResolution
    , fmap (("RulesConfiguration",) . toJSON) _cognitoIdentityPoolRoleAttachmentRoleMappingRulesConfiguration
    , (Just . ("Type",) . toJSON) _cognitoIdentityPoolRoleAttachmentRoleMappingType
    ]

instance FromJSON CognitoIdentityPoolRoleAttachmentRoleMapping where
  parseJSON (Object obj) =
    CognitoIdentityPoolRoleAttachmentRoleMapping <$>
      (obj .:? "AmbiguousRoleResolution") <*>
      (obj .:? "RulesConfiguration") <*>
      (obj .: "Type")
  parseJSON _ = mempty

-- | Constructor for 'CognitoIdentityPoolRoleAttachmentRoleMapping' containing
-- required fields as arguments.
cognitoIdentityPoolRoleAttachmentRoleMapping
  :: Val Text -- ^ 'ciprarmType'
  -> CognitoIdentityPoolRoleAttachmentRoleMapping
cognitoIdentityPoolRoleAttachmentRoleMapping typearg =
  CognitoIdentityPoolRoleAttachmentRoleMapping
  { _cognitoIdentityPoolRoleAttachmentRoleMappingAmbiguousRoleResolution = Nothing
  , _cognitoIdentityPoolRoleAttachmentRoleMappingRulesConfiguration = Nothing
  , _cognitoIdentityPoolRoleAttachmentRoleMappingType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rolemapping.html#cfn-cognito-identitypoolroleattachment-rolemapping-ambiguousroleresolution
ciprarmAmbiguousRoleResolution :: Lens' CognitoIdentityPoolRoleAttachmentRoleMapping (Maybe (Val Text))
ciprarmAmbiguousRoleResolution = lens _cognitoIdentityPoolRoleAttachmentRoleMappingAmbiguousRoleResolution (\s a -> s { _cognitoIdentityPoolRoleAttachmentRoleMappingAmbiguousRoleResolution = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rolemapping.html#cfn-cognito-identitypoolroleattachment-rolemapping-rulesconfiguration
ciprarmRulesConfiguration :: Lens' CognitoIdentityPoolRoleAttachmentRoleMapping (Maybe CognitoIdentityPoolRoleAttachmentRulesConfigurationType)
ciprarmRulesConfiguration = lens _cognitoIdentityPoolRoleAttachmentRoleMappingRulesConfiguration (\s a -> s { _cognitoIdentityPoolRoleAttachmentRoleMappingRulesConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rolemapping.html#cfn-cognito-identitypoolroleattachment-rolemapping-type
ciprarmType :: Lens' CognitoIdentityPoolRoleAttachmentRoleMapping (Val Text)
ciprarmType = lens _cognitoIdentityPoolRoleAttachmentRoleMappingType (\s a -> s { _cognitoIdentityPoolRoleAttachmentRoleMappingType = a })
