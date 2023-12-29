module Stratosphere.KinesisFirehose.DeliveryStream.ParquetSerDeProperty (
        ParquetSerDeProperty(..), mkParquetSerDeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParquetSerDeProperty
  = ParquetSerDeProperty {blockSizeBytes :: (Prelude.Maybe (Value Prelude.Integer)),
                          compression :: (Prelude.Maybe (Value Prelude.Text)),
                          enableDictionaryCompression :: (Prelude.Maybe (Value Prelude.Bool)),
                          maxPaddingBytes :: (Prelude.Maybe (Value Prelude.Integer)),
                          pageSizeBytes :: (Prelude.Maybe (Value Prelude.Integer)),
                          writerVersion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParquetSerDeProperty :: ParquetSerDeProperty
mkParquetSerDeProperty
  = ParquetSerDeProperty
      {blockSizeBytes = Prelude.Nothing, compression = Prelude.Nothing,
       enableDictionaryCompression = Prelude.Nothing,
       maxPaddingBytes = Prelude.Nothing, pageSizeBytes = Prelude.Nothing,
       writerVersion = Prelude.Nothing}
instance ToResourceProperties ParquetSerDeProperty where
  toResourceProperties ParquetSerDeProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.ParquetSerDe",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BlockSizeBytes" Prelude.<$> blockSizeBytes,
                            (JSON..=) "Compression" Prelude.<$> compression,
                            (JSON..=) "EnableDictionaryCompression"
                              Prelude.<$> enableDictionaryCompression,
                            (JSON..=) "MaxPaddingBytes" Prelude.<$> maxPaddingBytes,
                            (JSON..=) "PageSizeBytes" Prelude.<$> pageSizeBytes,
                            (JSON..=) "WriterVersion" Prelude.<$> writerVersion])}
instance JSON.ToJSON ParquetSerDeProperty where
  toJSON ParquetSerDeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BlockSizeBytes" Prelude.<$> blockSizeBytes,
               (JSON..=) "Compression" Prelude.<$> compression,
               (JSON..=) "EnableDictionaryCompression"
                 Prelude.<$> enableDictionaryCompression,
               (JSON..=) "MaxPaddingBytes" Prelude.<$> maxPaddingBytes,
               (JSON..=) "PageSizeBytes" Prelude.<$> pageSizeBytes,
               (JSON..=) "WriterVersion" Prelude.<$> writerVersion]))
instance Property "BlockSizeBytes" ParquetSerDeProperty where
  type PropertyType "BlockSizeBytes" ParquetSerDeProperty = Value Prelude.Integer
  set newValue ParquetSerDeProperty {..}
    = ParquetSerDeProperty {blockSizeBytes = Prelude.pure newValue, ..}
instance Property "Compression" ParquetSerDeProperty where
  type PropertyType "Compression" ParquetSerDeProperty = Value Prelude.Text
  set newValue ParquetSerDeProperty {..}
    = ParquetSerDeProperty {compression = Prelude.pure newValue, ..}
instance Property "EnableDictionaryCompression" ParquetSerDeProperty where
  type PropertyType "EnableDictionaryCompression" ParquetSerDeProperty = Value Prelude.Bool
  set newValue ParquetSerDeProperty {..}
    = ParquetSerDeProperty
        {enableDictionaryCompression = Prelude.pure newValue, ..}
instance Property "MaxPaddingBytes" ParquetSerDeProperty where
  type PropertyType "MaxPaddingBytes" ParquetSerDeProperty = Value Prelude.Integer
  set newValue ParquetSerDeProperty {..}
    = ParquetSerDeProperty
        {maxPaddingBytes = Prelude.pure newValue, ..}
instance Property "PageSizeBytes" ParquetSerDeProperty where
  type PropertyType "PageSizeBytes" ParquetSerDeProperty = Value Prelude.Integer
  set newValue ParquetSerDeProperty {..}
    = ParquetSerDeProperty {pageSizeBytes = Prelude.pure newValue, ..}
instance Property "WriterVersion" ParquetSerDeProperty where
  type PropertyType "WriterVersion" ParquetSerDeProperty = Value Prelude.Text
  set newValue ParquetSerDeProperty {..}
    = ParquetSerDeProperty {writerVersion = Prelude.pure newValue, ..}