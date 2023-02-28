module Stratosphere.DataBrew.Job.OutputFormatOptionsProperty (
        module Exports, OutputFormatOptionsProperty(..),
        mkOutputFormatOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Job.CsvOutputOptionsProperty as Exports
import Stratosphere.ResourceProperties
data OutputFormatOptionsProperty
  = OutputFormatOptionsProperty {csv :: (Prelude.Maybe CsvOutputOptionsProperty)}
mkOutputFormatOptionsProperty :: OutputFormatOptionsProperty
mkOutputFormatOptionsProperty
  = OutputFormatOptionsProperty {csv = Prelude.Nothing}
instance ToResourceProperties OutputFormatOptionsProperty where
  toResourceProperties OutputFormatOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Job.OutputFormatOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Csv" Prelude.<$> csv])}
instance JSON.ToJSON OutputFormatOptionsProperty where
  toJSON OutputFormatOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Csv" Prelude.<$> csv]))
instance Property "Csv" OutputFormatOptionsProperty where
  type PropertyType "Csv" OutputFormatOptionsProperty = CsvOutputOptionsProperty
  set newValue OutputFormatOptionsProperty {}
    = OutputFormatOptionsProperty {csv = Prelude.pure newValue, ..}