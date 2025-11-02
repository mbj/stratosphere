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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-outputformatoptions.html>
    OutputFormatOptionsProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-outputformatoptions.html#cfn-databrew-job-outputformatoptions-csv>
                                 csv :: (Prelude.Maybe CsvOutputOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutputFormatOptionsProperty :: OutputFormatOptionsProperty
mkOutputFormatOptionsProperty
  = OutputFormatOptionsProperty
      {haddock_workaround_ = (), csv = Prelude.Nothing}
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
  set newValue OutputFormatOptionsProperty {..}
    = OutputFormatOptionsProperty {csv = Prelude.pure newValue, ..}