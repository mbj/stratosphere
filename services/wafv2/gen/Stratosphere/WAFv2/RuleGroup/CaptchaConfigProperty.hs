module Stratosphere.WAFv2.RuleGroup.CaptchaConfigProperty (
        module Exports, CaptchaConfigProperty(..), mkCaptchaConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.ImmunityTimePropertyProperty as Exports
import Stratosphere.ResourceProperties
data CaptchaConfigProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-captchaconfig.html>
    CaptchaConfigProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-captchaconfig.html#cfn-wafv2-rulegroup-captchaconfig-immunitytimeproperty>
                           immunityTimeProperty :: (Prelude.Maybe ImmunityTimePropertyProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCaptchaConfigProperty :: CaptchaConfigProperty
mkCaptchaConfigProperty
  = CaptchaConfigProperty {immunityTimeProperty = Prelude.Nothing}
instance ToResourceProperties CaptchaConfigProperty where
  toResourceProperties CaptchaConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.CaptchaConfig",
         supportsTags = Prelude.False,
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