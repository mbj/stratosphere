module Stratosphere.WAFv2.WebACL.ChallengeConfigProperty (
        module Exports, ChallengeConfigProperty(..),
        mkChallengeConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.ImmunityTimePropertyProperty as Exports
import Stratosphere.ResourceProperties
data ChallengeConfigProperty
  = ChallengeConfigProperty {immunityTimeProperty :: (Prelude.Maybe ImmunityTimePropertyProperty)}
mkChallengeConfigProperty :: ChallengeConfigProperty
mkChallengeConfigProperty
  = ChallengeConfigProperty {immunityTimeProperty = Prelude.Nothing}
instance ToResourceProperties ChallengeConfigProperty where
  toResourceProperties ChallengeConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.ChallengeConfig",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ImmunityTimeProperty"
                              Prelude.<$> immunityTimeProperty])}
instance JSON.ToJSON ChallengeConfigProperty where
  toJSON ChallengeConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ImmunityTimeProperty"
                 Prelude.<$> immunityTimeProperty]))
instance Property "ImmunityTimeProperty" ChallengeConfigProperty where
  type PropertyType "ImmunityTimeProperty" ChallengeConfigProperty = ImmunityTimePropertyProperty
  set newValue ChallengeConfigProperty {}
    = ChallengeConfigProperty
        {immunityTimeProperty = Prelude.pure newValue, ..}