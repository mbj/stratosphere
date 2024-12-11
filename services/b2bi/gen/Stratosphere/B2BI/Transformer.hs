module Stratosphere.B2BI.Transformer (
        module Exports, Transformer(..), mkTransformer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.B2BI.Transformer.InputConversionProperty as Exports
import {-# SOURCE #-} Stratosphere.B2BI.Transformer.MappingProperty as Exports
import {-# SOURCE #-} Stratosphere.B2BI.Transformer.OutputConversionProperty as Exports
import {-# SOURCE #-} Stratosphere.B2BI.Transformer.SampleDocumentsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Transformer
  = Transformer {inputConversion :: (Prelude.Maybe InputConversionProperty),
                 mapping :: (Prelude.Maybe MappingProperty),
                 name :: (Value Prelude.Text),
                 outputConversion :: (Prelude.Maybe OutputConversionProperty),
                 sampleDocuments :: (Prelude.Maybe SampleDocumentsProperty),
                 status :: (Value Prelude.Text),
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransformer ::
  Value Prelude.Text -> Value Prelude.Text -> Transformer
mkTransformer name status
  = Transformer
      {name = name, status = status, inputConversion = Prelude.Nothing,
       mapping = Prelude.Nothing, outputConversion = Prelude.Nothing,
       sampleDocuments = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Transformer where
  toResourceProperties Transformer {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Transformer", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Status" JSON..= status]
                           (Prelude.catMaybes
                              [(JSON..=) "InputConversion" Prelude.<$> inputConversion,
                               (JSON..=) "Mapping" Prelude.<$> mapping,
                               (JSON..=) "OutputConversion" Prelude.<$> outputConversion,
                               (JSON..=) "SampleDocuments" Prelude.<$> sampleDocuments,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Transformer where
  toJSON Transformer {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Status" JSON..= status]
              (Prelude.catMaybes
                 [(JSON..=) "InputConversion" Prelude.<$> inputConversion,
                  (JSON..=) "Mapping" Prelude.<$> mapping,
                  (JSON..=) "OutputConversion" Prelude.<$> outputConversion,
                  (JSON..=) "SampleDocuments" Prelude.<$> sampleDocuments,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "InputConversion" Transformer where
  type PropertyType "InputConversion" Transformer = InputConversionProperty
  set newValue Transformer {..}
    = Transformer {inputConversion = Prelude.pure newValue, ..}
instance Property "Mapping" Transformer where
  type PropertyType "Mapping" Transformer = MappingProperty
  set newValue Transformer {..}
    = Transformer {mapping = Prelude.pure newValue, ..}
instance Property "Name" Transformer where
  type PropertyType "Name" Transformer = Value Prelude.Text
  set newValue Transformer {..} = Transformer {name = newValue, ..}
instance Property "OutputConversion" Transformer where
  type PropertyType "OutputConversion" Transformer = OutputConversionProperty
  set newValue Transformer {..}
    = Transformer {outputConversion = Prelude.pure newValue, ..}
instance Property "SampleDocuments" Transformer where
  type PropertyType "SampleDocuments" Transformer = SampleDocumentsProperty
  set newValue Transformer {..}
    = Transformer {sampleDocuments = Prelude.pure newValue, ..}
instance Property "Status" Transformer where
  type PropertyType "Status" Transformer = Value Prelude.Text
  set newValue Transformer {..} = Transformer {status = newValue, ..}
instance Property "Tags" Transformer where
  type PropertyType "Tags" Transformer = [Tag]
  set newValue Transformer {..}
    = Transformer {tags = Prelude.pure newValue, ..}