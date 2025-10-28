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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-b2bi-transformer.html>
    Transformer {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-b2bi-transformer.html#cfn-b2bi-transformer-inputconversion>
                 inputConversion :: (Prelude.Maybe InputConversionProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-b2bi-transformer.html#cfn-b2bi-transformer-mapping>
                 mapping :: (Prelude.Maybe MappingProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-b2bi-transformer.html#cfn-b2bi-transformer-name>
                 name :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-b2bi-transformer.html#cfn-b2bi-transformer-outputconversion>
                 outputConversion :: (Prelude.Maybe OutputConversionProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-b2bi-transformer.html#cfn-b2bi-transformer-sampledocuments>
                 sampleDocuments :: (Prelude.Maybe SampleDocumentsProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-b2bi-transformer.html#cfn-b2bi-transformer-status>
                 status :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-b2bi-transformer.html#cfn-b2bi-transformer-tags>
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransformer ::
  Value Prelude.Text -> Value Prelude.Text -> Transformer
mkTransformer name status
  = Transformer
      {haddock_workaround_ = (), name = name, status = status,
       inputConversion = Prelude.Nothing, mapping = Prelude.Nothing,
       outputConversion = Prelude.Nothing,
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