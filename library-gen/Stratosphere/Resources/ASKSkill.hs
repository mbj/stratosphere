{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ask-skill.html

module Stratosphere.Resources.ASKSkill where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ASKSkillAuthenticationConfiguration
import Stratosphere.ResourceProperties.ASKSkillSkillPackage

-- | Full data type definition for ASKSkill. See 'askSkill' for a more
-- convenient constructor.
data ASKSkill =
  ASKSkill
  { _aSKSkillAuthenticationConfiguration :: ASKSkillAuthenticationConfiguration
  , _aSKSkillSkillPackage :: ASKSkillSkillPackage
  , _aSKSkillVendorId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties ASKSkill where
  toResourceProperties ASKSkill{..} =
    ResourceProperties
    { resourcePropertiesType = "Alexa::ASK::Skill"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("AuthenticationConfiguration",) . toJSON) _aSKSkillAuthenticationConfiguration
        , (Just . ("SkillPackage",) . toJSON) _aSKSkillSkillPackage
        , (Just . ("VendorId",) . toJSON) _aSKSkillVendorId
        ]
    }

-- | Constructor for 'ASKSkill' containing required fields as arguments.
askSkill
  :: ASKSkillAuthenticationConfiguration -- ^ 'asksAuthenticationConfiguration'
  -> ASKSkillSkillPackage -- ^ 'asksSkillPackage'
  -> Val Text -- ^ 'asksVendorId'
  -> ASKSkill
askSkill authenticationConfigurationarg skillPackagearg vendorIdarg =
  ASKSkill
  { _aSKSkillAuthenticationConfiguration = authenticationConfigurationarg
  , _aSKSkillSkillPackage = skillPackagearg
  , _aSKSkillVendorId = vendorIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ask-skill.html#cfn-ask-skill-authenticationconfiguration
asksAuthenticationConfiguration :: Lens' ASKSkill ASKSkillAuthenticationConfiguration
asksAuthenticationConfiguration = lens _aSKSkillAuthenticationConfiguration (\s a -> s { _aSKSkillAuthenticationConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ask-skill.html#cfn-ask-skill-skillpackage
asksSkillPackage :: Lens' ASKSkill ASKSkillSkillPackage
asksSkillPackage = lens _aSKSkillSkillPackage (\s a -> s { _aSKSkillSkillPackage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ask-skill.html#cfn-ask-skill-vendorid
asksVendorId :: Lens' ASKSkill (Val Text)
asksVendorId = lens _aSKSkillVendorId (\s a -> s { _aSKSkillVendorId = a })
