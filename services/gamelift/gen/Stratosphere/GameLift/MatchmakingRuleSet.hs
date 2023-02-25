module Stratosphere.GameLift.MatchmakingRuleSet (
        MatchmakingRuleSet(..), mkMatchmakingRuleSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data MatchmakingRuleSet
  = MatchmakingRuleSet {name :: (Value Prelude.Text),
                        ruleSetBody :: (Value Prelude.Text),
                        tags :: (Prelude.Maybe [Tag])}
mkMatchmakingRuleSet ::
  Value Prelude.Text -> Value Prelude.Text -> MatchmakingRuleSet
mkMatchmakingRuleSet name ruleSetBody
  = MatchmakingRuleSet
      {name = name, ruleSetBody = ruleSetBody, tags = Prelude.Nothing}
instance ToResourceProperties MatchmakingRuleSet where
  toResourceProperties MatchmakingRuleSet {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::MatchmakingRuleSet",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "RuleSetBody" JSON..= ruleSetBody]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON MatchmakingRuleSet where
  toJSON MatchmakingRuleSet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "RuleSetBody" JSON..= ruleSetBody]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Name" MatchmakingRuleSet where
  type PropertyType "Name" MatchmakingRuleSet = Value Prelude.Text
  set newValue MatchmakingRuleSet {..}
    = MatchmakingRuleSet {name = newValue, ..}
instance Property "RuleSetBody" MatchmakingRuleSet where
  type PropertyType "RuleSetBody" MatchmakingRuleSet = Value Prelude.Text
  set newValue MatchmakingRuleSet {..}
    = MatchmakingRuleSet {ruleSetBody = newValue, ..}
instance Property "Tags" MatchmakingRuleSet where
  type PropertyType "Tags" MatchmakingRuleSet = [Tag]
  set newValue MatchmakingRuleSet {..}
    = MatchmakingRuleSet {tags = Prelude.pure newValue, ..}