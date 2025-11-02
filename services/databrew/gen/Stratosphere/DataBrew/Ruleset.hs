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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-databrew-ruleset.html>
    Ruleset {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-databrew-ruleset.html#cfn-databrew-ruleset-description>
             description :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-databrew-ruleset.html#cfn-databrew-ruleset-name>
             name :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-databrew-ruleset.html#cfn-databrew-ruleset-rules>
             rules :: [RuleProperty],
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-databrew-ruleset.html#cfn-databrew-ruleset-tags>
             tags :: (Prelude.Maybe [Tag]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-databrew-ruleset.html#cfn-databrew-ruleset-targetarn>
             targetArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleset ::
  Value Prelude.Text
  -> [RuleProperty] -> Value Prelude.Text -> Ruleset
mkRuleset name rules targetArn
  = Ruleset
      {haddock_workaround_ = (), name = name, rules = rules,
       targetArn = targetArn, description = Prelude.Nothing,
       tags = Prelude.Nothing}
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