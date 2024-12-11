module Stratosphere.B2BI.Transformer.InputConversionProperty (
        module Exports, InputConversionProperty(..),
        mkInputConversionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.B2BI.Transformer.FormatOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputConversionProperty
  = InputConversionProperty {formatOptions :: (Prelude.Maybe FormatOptionsProperty),
                             fromFormat :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputConversionProperty ::
  Value Prelude.Text -> InputConversionProperty
mkInputConversionProperty fromFormat
  = InputConversionProperty
      {fromFormat = fromFormat, formatOptions = Prelude.Nothing}
instance ToResourceProperties InputConversionProperty where
  toResourceProperties InputConversionProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Transformer.InputConversion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FromFormat" JSON..= fromFormat]
                           (Prelude.catMaybes
                              [(JSON..=) "FormatOptions" Prelude.<$> formatOptions]))}
instance JSON.ToJSON InputConversionProperty where
  toJSON InputConversionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FromFormat" JSON..= fromFormat]
              (Prelude.catMaybes
                 [(JSON..=) "FormatOptions" Prelude.<$> formatOptions])))
instance Property "FormatOptions" InputConversionProperty where
  type PropertyType "FormatOptions" InputConversionProperty = FormatOptionsProperty
  set newValue InputConversionProperty {..}
    = InputConversionProperty
        {formatOptions = Prelude.pure newValue, ..}
instance Property "FromFormat" InputConversionProperty where
  type PropertyType "FromFormat" InputConversionProperty = Value Prelude.Text
  set newValue InputConversionProperty {..}
    = InputConversionProperty {fromFormat = newValue, ..}