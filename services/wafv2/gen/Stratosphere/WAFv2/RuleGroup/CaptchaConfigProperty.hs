module Stratosphere.WAFv2.RuleGroup.CaptchaConfigProperty (
        module Exports, CaptchaConfigProperty(..), mkCaptchaConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.ImmunityTimePropertyProperty as Exports
import Stratosphere.ResourceProperties
data CaptchaConfigProperty
  = CaptchaConfigProperty {immunityTimeProperty :: (Prelude.Maybe ImmunityTimePropertyProperty)}
mkCaptchaConfigProperty :: CaptchaConfigProperty
mkCaptchaConfigProperty
  = CaptchaConfigProperty {immunityTimeProperty = Prelude.Nothing}
instance ToResourceProperties CaptchaConfigProperty where
  toResourceProperties CaptchaConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.CaptchaConfig",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ImmunityTimeProperty"
                              Prelude.<$> immunityTimeProperty])}
instance JSON.ToJSON CaptchaConfigProperty where
  toJSON CaptchaConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ImmunityTimeProperty"
                 Prelude.<$> immunityTimeProperty]))
instance Property "ImmunityTimeProperty" CaptchaConfigProperty where
  type PropertyType "ImmunityTimeProperty" CaptchaConfigProperty = ImmunityTimePropertyProperty
  set newValue CaptchaConfigProperty {}
    = CaptchaConfigProperty
        {immunityTimeProperty = Prelude.pure newValue, ..}