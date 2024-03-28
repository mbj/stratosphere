module Stratosphere.B2BI.Transformer (
        module Exports, Transformer(..), mkTransformer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.B2BI.Transformer.EdiTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Transformer
  = Transformer {ediType :: EdiTypeProperty,
                 fileFormat :: (Value Prelude.Text),
                 mappingTemplate :: (Value Prelude.Text),
                 name :: (Value Prelude.Text),
                 sampleDocument :: (Prelude.Maybe (Value Prelude.Text)),
                 status :: (Value Prelude.Text),
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransformer ::
  EdiTypeProperty
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> Value Prelude.Text -> Transformer
mkTransformer ediType fileFormat mappingTemplate name status
  = Transformer
      {ediType = ediType, fileFormat = fileFormat,
       mappingTemplate = mappingTemplate, name = name, status = status,
       sampleDocument = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Transformer where
  toResourceProperties Transformer {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Transformer", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EdiType" JSON..= ediType, "FileFormat" JSON..= fileFormat,
                            "MappingTemplate" JSON..= mappingTemplate, "Name" JSON..= name,
                            "Status" JSON..= status]
                           (Prelude.catMaybes
                              [(JSON..=) "SampleDocument" Prelude.<$> sampleDocument,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Transformer where
  toJSON Transformer {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EdiType" JSON..= ediType, "FileFormat" JSON..= fileFormat,
               "MappingTemplate" JSON..= mappingTemplate, "Name" JSON..= name,
               "Status" JSON..= status]
              (Prelude.catMaybes
                 [(JSON..=) "SampleDocument" Prelude.<$> sampleDocument,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "EdiType" Transformer where
  type PropertyType "EdiType" Transformer = EdiTypeProperty
  set newValue Transformer {..}
    = Transformer {ediType = newValue, ..}
instance Property "FileFormat" Transformer where
  type PropertyType "FileFormat" Transformer = Value Prelude.Text
  set newValue Transformer {..}
    = Transformer {fileFormat = newValue, ..}
instance Property "MappingTemplate" Transformer where
  type PropertyType "MappingTemplate" Transformer = Value Prelude.Text
  set newValue Transformer {..}
    = Transformer {mappingTemplate = newValue, ..}
instance Property "Name" Transformer where
  type PropertyType "Name" Transformer = Value Prelude.Text
  set newValue Transformer {..} = Transformer {name = newValue, ..}
instance Property "SampleDocument" Transformer where
  type PropertyType "SampleDocument" Transformer = Value Prelude.Text
  set newValue Transformer {..}
    = Transformer {sampleDocument = Prelude.pure newValue, ..}
instance Property "Status" Transformer where
  type PropertyType "Status" Transformer = Value Prelude.Text
  set newValue Transformer {..} = Transformer {status = newValue, ..}
instance Property "Tags" Transformer where
  type PropertyType "Tags" Transformer = [Tag]
  set newValue Transformer {..}
    = Transformer {tags = Prelude.pure newValue, ..}