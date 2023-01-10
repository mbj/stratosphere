
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-overrides.html

module Stratosphere.ResourceProperties.ASKSkillOverrides where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for ASKSkillOverrides. See 'askSkillOverrides'
-- for a more convenient constructor.
data ASKSkillOverrides =
  ASKSkillOverrides
  { _aSKSkillOverridesManifest :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON ASKSkillOverrides where
  toJSON ASKSkillOverrides{..} =
    object $
    catMaybes
    [ fmap (("Manifest",) . toJSON) _aSKSkillOverridesManifest
    ]

-- | Constructor for 'ASKSkillOverrides' containing required fields as
-- arguments.
askSkillOverrides
  :: ASKSkillOverrides
askSkillOverrides  =
  ASKSkillOverrides
  { _aSKSkillOverridesManifest = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-overrides.html#cfn-ask-skill-overrides-manifest
asksoManifest :: Lens' ASKSkillOverrides (Maybe Object)
asksoManifest = lens _aSKSkillOverridesManifest (\s a -> s { _aSKSkillOverridesManifest = a })
