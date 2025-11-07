module Stratosphere.Budgets.Budget.TagValuesProperty (
        TagValuesProperty(..), mkTagValuesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagValuesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-tagvalues.html>
    TagValuesProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-tagvalues.html#cfn-budgets-budget-tagvalues-key>
                       key :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-tagvalues.html#cfn-budgets-budget-tagvalues-matchoptions>
                       matchOptions :: (Prelude.Maybe (ValueList Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-tagvalues.html#cfn-budgets-budget-tagvalues-values>
                       values :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTagValuesProperty :: TagValuesProperty
mkTagValuesProperty
  = TagValuesProperty
      {haddock_workaround_ = (), key = Prelude.Nothing,
       matchOptions = Prelude.Nothing, values = Prelude.Nothing}
instance ToResourceProperties TagValuesProperty where
  toResourceProperties TagValuesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Budgets::Budget.TagValues",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "MatchOptions" Prelude.<$> matchOptions,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON TagValuesProperty where
  toJSON TagValuesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "MatchOptions" Prelude.<$> matchOptions,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "Key" TagValuesProperty where
  type PropertyType "Key" TagValuesProperty = Value Prelude.Text
  set newValue TagValuesProperty {..}
    = TagValuesProperty {key = Prelude.pure newValue, ..}
instance Property "MatchOptions" TagValuesProperty where
  type PropertyType "MatchOptions" TagValuesProperty = ValueList Prelude.Text
  set newValue TagValuesProperty {..}
    = TagValuesProperty {matchOptions = Prelude.pure newValue, ..}
instance Property "Values" TagValuesProperty where
  type PropertyType "Values" TagValuesProperty = ValueList Prelude.Text
  set newValue TagValuesProperty {..}
    = TagValuesProperty {values = Prelude.pure newValue, ..}