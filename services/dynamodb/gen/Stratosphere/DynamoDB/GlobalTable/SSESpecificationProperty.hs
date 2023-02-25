module Stratosphere.DynamoDB.GlobalTable.SSESpecificationProperty (
        SSESpecificationProperty(..), mkSSESpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SSESpecificationProperty
  = SSESpecificationProperty {sSEEnabled :: (Value Prelude.Bool),
                              sSEType :: (Prelude.Maybe (Value Prelude.Text))}
mkSSESpecificationProperty ::
  Value Prelude.Bool -> SSESpecificationProperty
mkSSESpecificationProperty sSEEnabled
  = SSESpecificationProperty
      {sSEEnabled = sSEEnabled, sSEType = Prelude.Nothing}
instance ToResourceProperties SSESpecificationProperty where
  toResourceProperties SSESpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::GlobalTable.SSESpecification",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SSEEnabled" JSON..= sSEEnabled]
                           (Prelude.catMaybes [(JSON..=) "SSEType" Prelude.<$> sSEType]))}
instance JSON.ToJSON SSESpecificationProperty where
  toJSON SSESpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SSEEnabled" JSON..= sSEEnabled]
              (Prelude.catMaybes [(JSON..=) "SSEType" Prelude.<$> sSEType])))
instance Property "SSEEnabled" SSESpecificationProperty where
  type PropertyType "SSEEnabled" SSESpecificationProperty = Value Prelude.Bool
  set newValue SSESpecificationProperty {..}
    = SSESpecificationProperty {sSEEnabled = newValue, ..}
instance Property "SSEType" SSESpecificationProperty where
  type PropertyType "SSEType" SSESpecificationProperty = Value Prelude.Text
  set newValue SSESpecificationProperty {..}
    = SSESpecificationProperty {sSEType = Prelude.pure newValue, ..}