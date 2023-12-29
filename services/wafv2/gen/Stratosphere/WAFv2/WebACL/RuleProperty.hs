module Stratosphere.WAFv2.WebACL.RuleProperty (
        module Exports, RuleProperty(..), mkRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.CaptchaConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.ChallengeConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.LabelProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.OverrideActionProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.RuleActionProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.StatementProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.VisibilityConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleProperty
  = RuleProperty {action :: (Prelude.Maybe RuleActionProperty),
                  captchaConfig :: (Prelude.Maybe CaptchaConfigProperty),
                  challengeConfig :: (Prelude.Maybe ChallengeConfigProperty),
                  name :: (Value Prelude.Text),
                  overrideAction :: (Prelude.Maybe OverrideActionProperty),
                  priority :: (Value Prelude.Integer),
                  ruleLabels :: (Prelude.Maybe [LabelProperty]),
                  statement :: StatementProperty,
                  visibilityConfig :: VisibilityConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer
     -> StatementProperty -> VisibilityConfigProperty -> RuleProperty
mkRuleProperty name priority statement visibilityConfig
  = RuleProperty
      {name = name, priority = priority, statement = statement,
       visibilityConfig = visibilityConfig, action = Prelude.Nothing,
       captchaConfig = Prelude.Nothing, challengeConfig = Prelude.Nothing,
       overrideAction = Prelude.Nothing, ruleLabels = Prelude.Nothing}
instance ToResourceProperties RuleProperty where
  toResourceProperties RuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.Rule", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Priority" JSON..= priority,
                            "Statement" JSON..= statement,
                            "VisibilityConfig" JSON..= visibilityConfig]
                           (Prelude.catMaybes
                              [(JSON..=) "Action" Prelude.<$> action,
                               (JSON..=) "CaptchaConfig" Prelude.<$> captchaConfig,
                               (JSON..=) "ChallengeConfig" Prelude.<$> challengeConfig,
                               (JSON..=) "OverrideAction" Prelude.<$> overrideAction,
                               (JSON..=) "RuleLabels" Prelude.<$> ruleLabels]))}
instance JSON.ToJSON RuleProperty where
  toJSON RuleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Priority" JSON..= priority,
               "Statement" JSON..= statement,
               "VisibilityConfig" JSON..= visibilityConfig]
              (Prelude.catMaybes
                 [(JSON..=) "Action" Prelude.<$> action,
                  (JSON..=) "CaptchaConfig" Prelude.<$> captchaConfig,
                  (JSON..=) "ChallengeConfig" Prelude.<$> challengeConfig,
                  (JSON..=) "OverrideAction" Prelude.<$> overrideAction,
                  (JSON..=) "RuleLabels" Prelude.<$> ruleLabels])))
instance Property "Action" RuleProperty where
  type PropertyType "Action" RuleProperty = RuleActionProperty
  set newValue RuleProperty {..}
    = RuleProperty {action = Prelude.pure newValue, ..}
instance Property "CaptchaConfig" RuleProperty where
  type PropertyType "CaptchaConfig" RuleProperty = CaptchaConfigProperty
  set newValue RuleProperty {..}
    = RuleProperty {captchaConfig = Prelude.pure newValue, ..}
instance Property "ChallengeConfig" RuleProperty where
  type PropertyType "ChallengeConfig" RuleProperty = ChallengeConfigProperty
  set newValue RuleProperty {..}
    = RuleProperty {challengeConfig = Prelude.pure newValue, ..}
instance Property "Name" RuleProperty where
  type PropertyType "Name" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..} = RuleProperty {name = newValue, ..}
instance Property "OverrideAction" RuleProperty where
  type PropertyType "OverrideAction" RuleProperty = OverrideActionProperty
  set newValue RuleProperty {..}
    = RuleProperty {overrideAction = Prelude.pure newValue, ..}
instance Property "Priority" RuleProperty where
  type PropertyType "Priority" RuleProperty = Value Prelude.Integer
  set newValue RuleProperty {..}
    = RuleProperty {priority = newValue, ..}
instance Property "RuleLabels" RuleProperty where
  type PropertyType "RuleLabels" RuleProperty = [LabelProperty]
  set newValue RuleProperty {..}
    = RuleProperty {ruleLabels = Prelude.pure newValue, ..}
instance Property "Statement" RuleProperty where
  type PropertyType "Statement" RuleProperty = StatementProperty
  set newValue RuleProperty {..}
    = RuleProperty {statement = newValue, ..}
instance Property "VisibilityConfig" RuleProperty where
  type PropertyType "VisibilityConfig" RuleProperty = VisibilityConfigProperty
  set newValue RuleProperty {..}
    = RuleProperty {visibilityConfig = newValue, ..}