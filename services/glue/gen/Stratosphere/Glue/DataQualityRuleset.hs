module Stratosphere.Glue.DataQualityRuleset (
        module Exports, DataQualityRuleset(..), mkDataQualityRuleset
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.DataQualityRuleset.DataQualityTargetTableProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataQualityRuleset
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-dataqualityruleset.html>
    DataQualityRuleset {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-dataqualityruleset.html#cfn-glue-dataqualityruleset-clienttoken>
                        clientToken :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-dataqualityruleset.html#cfn-glue-dataqualityruleset-description>
                        description :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-dataqualityruleset.html#cfn-glue-dataqualityruleset-name>
                        name :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-dataqualityruleset.html#cfn-glue-dataqualityruleset-ruleset>
                        ruleset :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-dataqualityruleset.html#cfn-glue-dataqualityruleset-tags>
                        tags :: (Prelude.Maybe JSON.Object),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-dataqualityruleset.html#cfn-glue-dataqualityruleset-targettable>
                        targetTable :: (Prelude.Maybe DataQualityTargetTableProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataQualityRuleset :: DataQualityRuleset
mkDataQualityRuleset
  = DataQualityRuleset
      {haddock_workaround_ = (), clientToken = Prelude.Nothing,
       description = Prelude.Nothing, name = Prelude.Nothing,
       ruleset = Prelude.Nothing, tags = Prelude.Nothing,
       targetTable = Prelude.Nothing}
instance ToResourceProperties DataQualityRuleset where
  toResourceProperties DataQualityRuleset {..}
    = ResourceProperties
        {awsType = "AWS::Glue::DataQualityRuleset",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClientToken" Prelude.<$> clientToken,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Ruleset" Prelude.<$> ruleset,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "TargetTable" Prelude.<$> targetTable])}
instance JSON.ToJSON DataQualityRuleset where
  toJSON DataQualityRuleset {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClientToken" Prelude.<$> clientToken,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Ruleset" Prelude.<$> ruleset,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "TargetTable" Prelude.<$> targetTable]))
instance Property "ClientToken" DataQualityRuleset where
  type PropertyType "ClientToken" DataQualityRuleset = Value Prelude.Text
  set newValue DataQualityRuleset {..}
    = DataQualityRuleset {clientToken = Prelude.pure newValue, ..}
instance Property "Description" DataQualityRuleset where
  type PropertyType "Description" DataQualityRuleset = Value Prelude.Text
  set newValue DataQualityRuleset {..}
    = DataQualityRuleset {description = Prelude.pure newValue, ..}
instance Property "Name" DataQualityRuleset where
  type PropertyType "Name" DataQualityRuleset = Value Prelude.Text
  set newValue DataQualityRuleset {..}
    = DataQualityRuleset {name = Prelude.pure newValue, ..}
instance Property "Ruleset" DataQualityRuleset where
  type PropertyType "Ruleset" DataQualityRuleset = Value Prelude.Text
  set newValue DataQualityRuleset {..}
    = DataQualityRuleset {ruleset = Prelude.pure newValue, ..}
instance Property "Tags" DataQualityRuleset where
  type PropertyType "Tags" DataQualityRuleset = JSON.Object
  set newValue DataQualityRuleset {..}
    = DataQualityRuleset {tags = Prelude.pure newValue, ..}
instance Property "TargetTable" DataQualityRuleset where
  type PropertyType "TargetTable" DataQualityRuleset = DataQualityTargetTableProperty
  set newValue DataQualityRuleset {..}
    = DataQualityRuleset {targetTable = Prelude.pure newValue, ..}