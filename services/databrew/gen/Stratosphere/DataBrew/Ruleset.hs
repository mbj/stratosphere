module Stratosphere.DataBrew.Ruleset (
        module Exports, Ruleset(..), mkRuleset
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Ruleset.RuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Ruleset
  = Ruleset {description :: (Prelude.Maybe (Value Prelude.Text)),
             name :: (Value Prelude.Text),
             rules :: [RuleProperty],
             tags :: (Prelude.Maybe [Tag]),
             targetArn :: (Value Prelude.Text)}
mkRuleset ::
  Value Prelude.Text
  -> [RuleProperty] -> Value Prelude.Text -> Ruleset
mkRuleset name rules targetArn
  = Ruleset
      {name = name, rules = rules, targetArn = targetArn,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Ruleset where
  toResourceProperties Ruleset {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Ruleset", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Rules" JSON..= rules,
                            "TargetArn" JSON..= targetArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Ruleset where
  toJSON Ruleset {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Rules" JSON..= rules,
               "TargetArn" JSON..= targetArn]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" Ruleset where
  type PropertyType "Description" Ruleset = Value Prelude.Text
  set newValue Ruleset {..}
    = Ruleset {description = Prelude.pure newValue, ..}
instance Property "Name" Ruleset where
  type PropertyType "Name" Ruleset = Value Prelude.Text
  set newValue Ruleset {..} = Ruleset {name = newValue, ..}
instance Property "Rules" Ruleset where
  type PropertyType "Rules" Ruleset = [RuleProperty]
  set newValue Ruleset {..} = Ruleset {rules = newValue, ..}
instance Property "Tags" Ruleset where
  type PropertyType "Tags" Ruleset = [Tag]
  set newValue Ruleset {..}
    = Ruleset {tags = Prelude.pure newValue, ..}
instance Property "TargetArn" Ruleset where
  type PropertyType "TargetArn" Ruleset = Value Prelude.Text
  set newValue Ruleset {..} = Ruleset {targetArn = newValue, ..}