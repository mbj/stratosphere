{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-authenticationconfiguration.html

module Stratosphere.ResourceProperties.ASKSkillAuthenticationConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for ASKSkillAuthenticationConfiguration. See
-- 'askSkillAuthenticationConfiguration' for a more convenient constructor.
data ASKSkillAuthenticationConfiguration =
  ASKSkillAuthenticationConfiguration
  { _aSKSkillAuthenticationConfigurationClientId :: Val Text
  , _aSKSkillAuthenticationConfigurationClientSecret :: Val Text
  , _aSKSkillAuthenticationConfigurationRefreshToken :: Val Text
  } deriving (Show, Eq)

instance ToJSON ASKSkillAuthenticationConfiguration where
  toJSON ASKSkillAuthenticationConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("ClientId",) . toJSON) _aSKSkillAuthenticationConfigurationClientId
    , (Just . ("ClientSecret",) . toJSON) _aSKSkillAuthenticationConfigurationClientSecret
    , (Just . ("RefreshToken",) . toJSON) _aSKSkillAuthenticationConfigurationRefreshToken
    ]

instance FromJSON ASKSkillAuthenticationConfiguration where
  parseJSON (Object obj) =
    ASKSkillAuthenticationConfiguration <$>
      (obj .: "ClientId") <*>
      (obj .: "ClientSecret") <*>
      (obj .: "RefreshToken")
  parseJSON _ = mempty

-- | Constructor for 'ASKSkillAuthenticationConfiguration' containing required
-- fields as arguments.
askSkillAuthenticationConfiguration
  :: Val Text -- ^ 'asksacClientId'
  -> Val Text -- ^ 'asksacClientSecret'
  -> Val Text -- ^ 'asksacRefreshToken'
  -> ASKSkillAuthenticationConfiguration
askSkillAuthenticationConfiguration clientIdarg clientSecretarg refreshTokenarg =
  ASKSkillAuthenticationConfiguration
  { _aSKSkillAuthenticationConfigurationClientId = clientIdarg
  , _aSKSkillAuthenticationConfigurationClientSecret = clientSecretarg
  , _aSKSkillAuthenticationConfigurationRefreshToken = refreshTokenarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-authenticationconfiguration.html#cfn-ask-skill-authenticationconfiguration-clientid
asksacClientId :: Lens' ASKSkillAuthenticationConfiguration (Val Text)
asksacClientId = lens _aSKSkillAuthenticationConfigurationClientId (\s a -> s { _aSKSkillAuthenticationConfigurationClientId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-authenticationconfiguration.html#cfn-ask-skill-authenticationconfiguration-clientsecret
asksacClientSecret :: Lens' ASKSkillAuthenticationConfiguration (Val Text)
asksacClientSecret = lens _aSKSkillAuthenticationConfigurationClientSecret (\s a -> s { _aSKSkillAuthenticationConfigurationClientSecret = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-authenticationconfiguration.html#cfn-ask-skill-authenticationconfiguration-refreshtoken
asksacRefreshToken :: Lens' ASKSkillAuthenticationConfiguration (Val Text)
asksacRefreshToken = lens _aSKSkillAuthenticationConfigurationRefreshToken (\s a -> s { _aSKSkillAuthenticationConfigurationRefreshToken = a })
