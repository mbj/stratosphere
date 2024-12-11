module Stratosphere.B2BI.Transformer.SampleDocumentKeysProperty (
        SampleDocumentKeysProperty(..), mkSampleDocumentKeysProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SampleDocumentKeysProperty
  = SampleDocumentKeysProperty {input :: (Prelude.Maybe (Value Prelude.Text)),
                                output :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSampleDocumentKeysProperty :: SampleDocumentKeysProperty
mkSampleDocumentKeysProperty
  = SampleDocumentKeysProperty
      {input = Prelude.Nothing, output = Prelude.Nothing}
instance ToResourceProperties SampleDocumentKeysProperty where
  toResourceProperties SampleDocumentKeysProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Transformer.SampleDocumentKeys",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Input" Prelude.<$> input,
                            (JSON..=) "Output" Prelude.<$> output])}
instance JSON.ToJSON SampleDocumentKeysProperty where
  toJSON SampleDocumentKeysProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Input" Prelude.<$> input,
               (JSON..=) "Output" Prelude.<$> output]))
instance Property "Input" SampleDocumentKeysProperty where
  type PropertyType "Input" SampleDocumentKeysProperty = Value Prelude.Text
  set newValue SampleDocumentKeysProperty {..}
    = SampleDocumentKeysProperty {input = Prelude.pure newValue, ..}
instance Property "Output" SampleDocumentKeysProperty where
  type PropertyType "Output" SampleDocumentKeysProperty = Value Prelude.Text
  set newValue SampleDocumentKeysProperty {..}
    = SampleDocumentKeysProperty {output = Prelude.pure newValue, ..}