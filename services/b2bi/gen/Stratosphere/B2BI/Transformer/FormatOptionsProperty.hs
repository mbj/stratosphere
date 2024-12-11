module Stratosphere.B2BI.Transformer.FormatOptionsProperty (
        module Exports, FormatOptionsProperty(..), mkFormatOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.B2BI.Transformer.X12DetailsProperty as Exports
import Stratosphere.ResourceProperties
data FormatOptionsProperty
  = FormatOptionsProperty {x12 :: X12DetailsProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFormatOptionsProperty ::
  X12DetailsProperty -> FormatOptionsProperty
mkFormatOptionsProperty x12 = FormatOptionsProperty {x12 = x12}
instance ToResourceProperties FormatOptionsProperty where
  toResourceProperties FormatOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Transformer.FormatOptions",
         supportsTags = Prelude.False, properties = ["X12" JSON..= x12]}
instance JSON.ToJSON FormatOptionsProperty where
  toJSON FormatOptionsProperty {..} = JSON.object ["X12" JSON..= x12]
instance Property "X12" FormatOptionsProperty where
  type PropertyType "X12" FormatOptionsProperty = X12DetailsProperty
  set newValue FormatOptionsProperty {}
    = FormatOptionsProperty {x12 = newValue, ..}