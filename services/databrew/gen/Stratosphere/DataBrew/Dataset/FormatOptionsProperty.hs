module Stratosphere.DataBrew.Dataset.FormatOptionsProperty (
        module Exports, FormatOptionsProperty(..), mkFormatOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Dataset.CsvOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Dataset.ExcelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Dataset.JsonOptionsProperty as Exports
import Stratosphere.ResourceProperties
data FormatOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-formatoptions.html>
    FormatOptionsProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-formatoptions.html#cfn-databrew-dataset-formatoptions-csv>
                           csv :: (Prelude.Maybe CsvOptionsProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-formatoptions.html#cfn-databrew-dataset-formatoptions-excel>
                           excel :: (Prelude.Maybe ExcelOptionsProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-formatoptions.html#cfn-databrew-dataset-formatoptions-json>
                           json :: (Prelude.Maybe JsonOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFormatOptionsProperty :: FormatOptionsProperty
mkFormatOptionsProperty
  = FormatOptionsProperty
      {haddock_workaround_ = (), csv = Prelude.Nothing,
       excel = Prelude.Nothing, json = Prelude.Nothing}
instance ToResourceProperties FormatOptionsProperty where
  toResourceProperties FormatOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Dataset.FormatOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Csv" Prelude.<$> csv,
                            (JSON..=) "Excel" Prelude.<$> excel,
                            (JSON..=) "Json" Prelude.<$> json])}
instance JSON.ToJSON FormatOptionsProperty where
  toJSON FormatOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Csv" Prelude.<$> csv,
               (JSON..=) "Excel" Prelude.<$> excel,
               (JSON..=) "Json" Prelude.<$> json]))
instance Property "Csv" FormatOptionsProperty where
  type PropertyType "Csv" FormatOptionsProperty = CsvOptionsProperty
  set newValue FormatOptionsProperty {..}
    = FormatOptionsProperty {csv = Prelude.pure newValue, ..}
instance Property "Excel" FormatOptionsProperty where
  type PropertyType "Excel" FormatOptionsProperty = ExcelOptionsProperty
  set newValue FormatOptionsProperty {..}
    = FormatOptionsProperty {excel = Prelude.pure newValue, ..}
instance Property "Json" FormatOptionsProperty where
  type PropertyType "Json" FormatOptionsProperty = JsonOptionsProperty
  set newValue FormatOptionsProperty {..}
    = FormatOptionsProperty {json = Prelude.pure newValue, ..}