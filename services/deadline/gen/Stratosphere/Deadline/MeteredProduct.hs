module Stratosphere.Deadline.MeteredProduct (
        MeteredProduct(..), mkMeteredProduct
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MeteredProduct
  = MeteredProduct {licenseEndpointId :: (Prelude.Maybe (Value Prelude.Text)),
                    productId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMeteredProduct :: MeteredProduct
mkMeteredProduct
  = MeteredProduct
      {licenseEndpointId = Prelude.Nothing, productId = Prelude.Nothing}
instance ToResourceProperties MeteredProduct where
  toResourceProperties MeteredProduct {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::MeteredProduct",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LicenseEndpointId" Prelude.<$> licenseEndpointId,
                            (JSON..=) "ProductId" Prelude.<$> productId])}
instance JSON.ToJSON MeteredProduct where
  toJSON MeteredProduct {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LicenseEndpointId" Prelude.<$> licenseEndpointId,
               (JSON..=) "ProductId" Prelude.<$> productId]))
instance Property "LicenseEndpointId" MeteredProduct where
  type PropertyType "LicenseEndpointId" MeteredProduct = Value Prelude.Text
  set newValue MeteredProduct {..}
    = MeteredProduct {licenseEndpointId = Prelude.pure newValue, ..}
instance Property "ProductId" MeteredProduct where
  type PropertyType "ProductId" MeteredProduct = Value Prelude.Text
  set newValue MeteredProduct {..}
    = MeteredProduct {productId = Prelude.pure newValue, ..}