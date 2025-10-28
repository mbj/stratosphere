module Stratosphere.DynamoDB.Table.InputFormatOptionsProperty (
        module Exports, InputFormatOptionsProperty(..),
        mkInputFormatOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DynamoDB.Table.CsvProperty as Exports
import Stratosphere.ResourceProperties
data InputFormatOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-inputformatoptions.html>
    InputFormatOptionsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-inputformatoptions.html#cfn-dynamodb-table-inputformatoptions-csv>
                                csv :: (Prelude.Maybe CsvProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputFormatOptionsProperty :: InputFormatOptionsProperty
mkInputFormatOptionsProperty
  = InputFormatOptionsProperty
      {haddock_workaround_ = (), csv = Prelude.Nothing}
instance ToResourceProperties InputFormatOptionsProperty where
  toResourceProperties InputFormatOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::Table.InputFormatOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Csv" Prelude.<$> csv])}
instance JSON.ToJSON InputFormatOptionsProperty where
  toJSON InputFormatOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Csv" Prelude.<$> csv]))
instance Property "Csv" InputFormatOptionsProperty where
  type PropertyType "Csv" InputFormatOptionsProperty = CsvProperty
  set newValue InputFormatOptionsProperty {..}
    = InputFormatOptionsProperty {csv = Prelude.pure newValue, ..}