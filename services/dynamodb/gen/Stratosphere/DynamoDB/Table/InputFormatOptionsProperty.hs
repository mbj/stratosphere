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
  = InputFormatOptionsProperty {csv :: (Prelude.Maybe CsvProperty)}
mkInputFormatOptionsProperty :: InputFormatOptionsProperty
mkInputFormatOptionsProperty
  = InputFormatOptionsProperty {csv = Prelude.Nothing}
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
  set newValue InputFormatOptionsProperty {}
    = InputFormatOptionsProperty {csv = Prelude.pure newValue, ..}