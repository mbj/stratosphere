module Stratosphere.B2BI.Transformer.OutputConversionProperty (
        module Exports, OutputConversionProperty(..),
        mkOutputConversionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.B2BI.Transformer.FormatOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OutputConversionProperty
  = OutputConversionProperty {formatOptions :: (Prelude.Maybe FormatOptionsProperty),
                              toFormat :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutputConversionProperty ::
  Value Prelude.Text -> OutputConversionProperty
mkOutputConversionProperty toFormat
  = OutputConversionProperty
      {toFormat = toFormat, formatOptions = Prelude.Nothing}
instance ToResourceProperties OutputConversionProperty where
  toResourceProperties OutputConversionProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Transformer.OutputConversion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ToFormat" JSON..= toFormat]
                           (Prelude.catMaybes
                              [(JSON..=) "FormatOptions" Prelude.<$> formatOptions]))}
instance JSON.ToJSON OutputConversionProperty where
  toJSON OutputConversionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ToFormat" JSON..= toFormat]
              (Prelude.catMaybes
                 [(JSON..=) "FormatOptions" Prelude.<$> formatOptions])))
instance Property "FormatOptions" OutputConversionProperty where
  type PropertyType "FormatOptions" OutputConversionProperty = FormatOptionsProperty
  set newValue OutputConversionProperty {..}
    = OutputConversionProperty
        {formatOptions = Prelude.pure newValue, ..}
instance Property "ToFormat" OutputConversionProperty where
  type PropertyType "ToFormat" OutputConversionProperty = Value Prelude.Text
  set newValue OutputConversionProperty {..}
    = OutputConversionProperty {toFormat = newValue, ..}