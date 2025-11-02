module Stratosphere.WAFv2.WebACL.RuleActionProperty (
        module Exports, RuleActionProperty(..), mkRuleActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.AllowActionProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.BlockActionProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.CaptchaActionProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.ChallengeActionProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.CountActionProperty as Exports
import Stratosphere.ResourceProperties
data RuleActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ruleaction.html>
    RuleActionProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ruleaction.html#cfn-wafv2-webacl-ruleaction-allow>
                        allow :: (Prelude.Maybe AllowActionProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ruleaction.html#cfn-wafv2-webacl-ruleaction-block>
                        block :: (Prelude.Maybe BlockActionProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ruleaction.html#cfn-wafv2-webacl-ruleaction-captcha>
                        captcha :: (Prelude.Maybe CaptchaActionProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ruleaction.html#cfn-wafv2-webacl-ruleaction-challenge>
                        challenge :: (Prelude.Maybe ChallengeActionProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ruleaction.html#cfn-wafv2-webacl-ruleaction-count>
                        count :: (Prelude.Maybe CountActionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleActionProperty :: RuleActionProperty
mkRuleActionProperty
  = RuleActionProperty
      {haddock_workaround_ = (), allow = Prelude.Nothing,
       block = Prelude.Nothing, captcha = Prelude.Nothing,
       challenge = Prelude.Nothing, count = Prelude.Nothing}
instance ToResourceProperties RuleActionProperty where
  toResourceProperties RuleActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.RuleAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Allow" Prelude.<$> allow,
                            (JSON..=) "Block" Prelude.<$> block,
                            (JSON..=) "Captcha" Prelude.<$> captcha,
                            (JSON..=) "Challenge" Prelude.<$> challenge,
                            (JSON..=) "Count" Prelude.<$> count])}
instance JSON.ToJSON RuleActionProperty where
  toJSON RuleActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Allow" Prelude.<$> allow,
               (JSON..=) "Block" Prelude.<$> block,
               (JSON..=) "Captcha" Prelude.<$> captcha,
               (JSON..=) "Challenge" Prelude.<$> challenge,
               (JSON..=) "Count" Prelude.<$> count]))
instance Property "Allow" RuleActionProperty where
  type PropertyType "Allow" RuleActionProperty = AllowActionProperty
  set newValue RuleActionProperty {..}
    = RuleActionProperty {allow = Prelude.pure newValue, ..}
instance Property "Block" RuleActionProperty where
  type PropertyType "Block" RuleActionProperty = BlockActionProperty
  set newValue RuleActionProperty {..}
    = RuleActionProperty {block = Prelude.pure newValue, ..}
instance Property "Captcha" RuleActionProperty where
  type PropertyType "Captcha" RuleActionProperty = CaptchaActionProperty
  set newValue RuleActionProperty {..}
    = RuleActionProperty {captcha = Prelude.pure newValue, ..}
instance Property "Challenge" RuleActionProperty where
  type PropertyType "Challenge" RuleActionProperty = ChallengeActionProperty
  set newValue RuleActionProperty {..}
    = RuleActionProperty {challenge = Prelude.pure newValue, ..}
instance Property "Count" RuleActionProperty where
  type PropertyType "Count" RuleActionProperty = CountActionProperty
  set newValue RuleActionProperty {..}
    = RuleActionProperty {count = Prelude.pure newValue, ..}