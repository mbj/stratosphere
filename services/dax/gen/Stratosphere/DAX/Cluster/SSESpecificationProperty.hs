module Stratosphere.DAX.Cluster.SSESpecificationProperty (
        SSESpecificationProperty(..), mkSSESpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SSESpecificationProperty
  = SSESpecificationProperty {sSEEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
mkSSESpecificationProperty :: SSESpecificationProperty
mkSSESpecificationProperty
  = SSESpecificationProperty {sSEEnabled = Prelude.Nothing}
instance ToResourceProperties SSESpecificationProperty where
  toResourceProperties SSESpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DAX::Cluster.SSESpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SSEEnabled" Prelude.<$> sSEEnabled])}
instance JSON.ToJSON SSESpecificationProperty where
  toJSON SSESpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SSEEnabled" Prelude.<$> sSEEnabled]))
instance Property "SSEEnabled" SSESpecificationProperty where
  type PropertyType "SSEEnabled" SSESpecificationProperty = Value Prelude.Bool
  set newValue SSESpecificationProperty {}
    = SSESpecificationProperty {sSEEnabled = Prelude.pure newValue, ..}