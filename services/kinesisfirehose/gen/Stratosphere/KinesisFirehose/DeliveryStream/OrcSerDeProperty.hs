module Stratosphere.KinesisFirehose.DeliveryStream.OrcSerDeProperty (
        OrcSerDeProperty(..), mkOrcSerDeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OrcSerDeProperty
  = OrcSerDeProperty {blockSizeBytes :: (Prelude.Maybe (Value Prelude.Integer)),
                      bloomFilterColumns :: (Prelude.Maybe (ValueList Prelude.Text)),
                      bloomFilterFalsePositiveProbability :: (Prelude.Maybe (Value Prelude.Double)),
                      compression :: (Prelude.Maybe (Value Prelude.Text)),
                      dictionaryKeyThreshold :: (Prelude.Maybe (Value Prelude.Double)),
                      enablePadding :: (Prelude.Maybe (Value Prelude.Bool)),
                      formatVersion :: (Prelude.Maybe (Value Prelude.Text)),
                      paddingTolerance :: (Prelude.Maybe (Value Prelude.Double)),
                      rowIndexStride :: (Prelude.Maybe (Value Prelude.Integer)),
                      stripeSizeBytes :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOrcSerDeProperty :: OrcSerDeProperty
mkOrcSerDeProperty
  = OrcSerDeProperty
      {blockSizeBytes = Prelude.Nothing,
       bloomFilterColumns = Prelude.Nothing,
       bloomFilterFalsePositiveProbability = Prelude.Nothing,
       compression = Prelude.Nothing,
       dictionaryKeyThreshold = Prelude.Nothing,
       enablePadding = Prelude.Nothing, formatVersion = Prelude.Nothing,
       paddingTolerance = Prelude.Nothing,
       rowIndexStride = Prelude.Nothing,
       stripeSizeBytes = Prelude.Nothing}
instance ToResourceProperties OrcSerDeProperty where
  toResourceProperties OrcSerDeProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.OrcSerDe",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BlockSizeBytes" Prelude.<$> blockSizeBytes,
                            (JSON..=) "BloomFilterColumns" Prelude.<$> bloomFilterColumns,
                            (JSON..=) "BloomFilterFalsePositiveProbability"
                              Prelude.<$> bloomFilterFalsePositiveProbability,
                            (JSON..=) "Compression" Prelude.<$> compression,
                            (JSON..=) "DictionaryKeyThreshold"
                              Prelude.<$> dictionaryKeyThreshold,
                            (JSON..=) "EnablePadding" Prelude.<$> enablePadding,
                            (JSON..=) "FormatVersion" Prelude.<$> formatVersion,
                            (JSON..=) "PaddingTolerance" Prelude.<$> paddingTolerance,
                            (JSON..=) "RowIndexStride" Prelude.<$> rowIndexStride,
                            (JSON..=) "StripeSizeBytes" Prelude.<$> stripeSizeBytes])}
instance JSON.ToJSON OrcSerDeProperty where
  toJSON OrcSerDeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BlockSizeBytes" Prelude.<$> blockSizeBytes,
               (JSON..=) "BloomFilterColumns" Prelude.<$> bloomFilterColumns,
               (JSON..=) "BloomFilterFalsePositiveProbability"
                 Prelude.<$> bloomFilterFalsePositiveProbability,
               (JSON..=) "Compression" Prelude.<$> compression,
               (JSON..=) "DictionaryKeyThreshold"
                 Prelude.<$> dictionaryKeyThreshold,
               (JSON..=) "EnablePadding" Prelude.<$> enablePadding,
               (JSON..=) "FormatVersion" Prelude.<$> formatVersion,
               (JSON..=) "PaddingTolerance" Prelude.<$> paddingTolerance,
               (JSON..=) "RowIndexStride" Prelude.<$> rowIndexStride,
               (JSON..=) "StripeSizeBytes" Prelude.<$> stripeSizeBytes]))
instance Property "BlockSizeBytes" OrcSerDeProperty where
  type PropertyType "BlockSizeBytes" OrcSerDeProperty = Value Prelude.Integer
  set newValue OrcSerDeProperty {..}
    = OrcSerDeProperty {blockSizeBytes = Prelude.pure newValue, ..}
instance Property "BloomFilterColumns" OrcSerDeProperty where
  type PropertyType "BloomFilterColumns" OrcSerDeProperty = ValueList Prelude.Text
  set newValue OrcSerDeProperty {..}
    = OrcSerDeProperty {bloomFilterColumns = Prelude.pure newValue, ..}
instance Property "BloomFilterFalsePositiveProbability" OrcSerDeProperty where
  type PropertyType "BloomFilterFalsePositiveProbability" OrcSerDeProperty = Value Prelude.Double
  set newValue OrcSerDeProperty {..}
    = OrcSerDeProperty
        {bloomFilterFalsePositiveProbability = Prelude.pure newValue, ..}
instance Property "Compression" OrcSerDeProperty where
  type PropertyType "Compression" OrcSerDeProperty = Value Prelude.Text
  set newValue OrcSerDeProperty {..}
    = OrcSerDeProperty {compression = Prelude.pure newValue, ..}
instance Property "DictionaryKeyThreshold" OrcSerDeProperty where
  type PropertyType "DictionaryKeyThreshold" OrcSerDeProperty = Value Prelude.Double
  set newValue OrcSerDeProperty {..}
    = OrcSerDeProperty
        {dictionaryKeyThreshold = Prelude.pure newValue, ..}
instance Property "EnablePadding" OrcSerDeProperty where
  type PropertyType "EnablePadding" OrcSerDeProperty = Value Prelude.Bool
  set newValue OrcSerDeProperty {..}
    = OrcSerDeProperty {enablePadding = Prelude.pure newValue, ..}
instance Property "FormatVersion" OrcSerDeProperty where
  type PropertyType "FormatVersion" OrcSerDeProperty = Value Prelude.Text
  set newValue OrcSerDeProperty {..}
    = OrcSerDeProperty {formatVersion = Prelude.pure newValue, ..}
instance Property "PaddingTolerance" OrcSerDeProperty where
  type PropertyType "PaddingTolerance" OrcSerDeProperty = Value Prelude.Double
  set newValue OrcSerDeProperty {..}
    = OrcSerDeProperty {paddingTolerance = Prelude.pure newValue, ..}
instance Property "RowIndexStride" OrcSerDeProperty where
  type PropertyType "RowIndexStride" OrcSerDeProperty = Value Prelude.Integer
  set newValue OrcSerDeProperty {..}
    = OrcSerDeProperty {rowIndexStride = Prelude.pure newValue, ..}
instance Property "StripeSizeBytes" OrcSerDeProperty where
  type PropertyType "StripeSizeBytes" OrcSerDeProperty = Value Prelude.Integer
  set newValue OrcSerDeProperty {..}
    = OrcSerDeProperty {stripeSizeBytes = Prelude.pure newValue, ..}