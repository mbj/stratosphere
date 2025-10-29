module Stratosphere.DataBrew.Job.ColumnSelectorProperty (
        ColumnSelectorProperty(..), mkColumnSelectorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColumnSelectorProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-columnselector.html>
    ColumnSelectorProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-columnselector.html#cfn-databrew-job-columnselector-name>
                            name :: (Prelude.Maybe (Value Prelude.Text)),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-columnselector.html#cfn-databrew-job-columnselector-regex>
                            regex :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkColumnSelectorProperty :: ColumnSelectorProperty
mkColumnSelectorProperty
  = ColumnSelectorProperty
      {name = Prelude.Nothing, regex = Prelude.Nothing}
instance ToResourceProperties ColumnSelectorProperty where
  toResourceProperties ColumnSelectorProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Job.ColumnSelector",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Regex" Prelude.<$> regex])}
instance JSON.ToJSON ColumnSelectorProperty where
  toJSON ColumnSelectorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Regex" Prelude.<$> regex]))
instance Property "Name" ColumnSelectorProperty where
  type PropertyType "Name" ColumnSelectorProperty = Value Prelude.Text
  set newValue ColumnSelectorProperty {..}
    = ColumnSelectorProperty {name = Prelude.pure newValue, ..}
instance Property "Regex" ColumnSelectorProperty where
  type PropertyType "Regex" ColumnSelectorProperty = Value Prelude.Text
  set newValue ColumnSelectorProperty {..}
    = ColumnSelectorProperty {regex = Prelude.pure newValue, ..}