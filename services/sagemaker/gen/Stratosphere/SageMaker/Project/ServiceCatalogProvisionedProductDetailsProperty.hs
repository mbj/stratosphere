module Stratosphere.SageMaker.Project.ServiceCatalogProvisionedProductDetailsProperty (
        ServiceCatalogProvisionedProductDetailsProperty(..),
        mkServiceCatalogProvisionedProductDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceCatalogProvisionedProductDetailsProperty
  = ServiceCatalogProvisionedProductDetailsProperty {provisionedProductId :: (Prelude.Maybe (Value Prelude.Text)),
                                                     provisionedProductStatusMessage :: (Prelude.Maybe (Value Prelude.Text))}
mkServiceCatalogProvisionedProductDetailsProperty ::
  ServiceCatalogProvisionedProductDetailsProperty
mkServiceCatalogProvisionedProductDetailsProperty
  = ServiceCatalogProvisionedProductDetailsProperty
      {provisionedProductId = Prelude.Nothing,
       provisionedProductStatusMessage = Prelude.Nothing}
instance ToResourceProperties ServiceCatalogProvisionedProductDetailsProperty where
  toResourceProperties
    ServiceCatalogProvisionedProductDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Project.ServiceCatalogProvisionedProductDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ProvisionedProductId" Prelude.<$> provisionedProductId,
                            (JSON..=) "ProvisionedProductStatusMessage"
                              Prelude.<$> provisionedProductStatusMessage])}
instance JSON.ToJSON ServiceCatalogProvisionedProductDetailsProperty where
  toJSON ServiceCatalogProvisionedProductDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ProvisionedProductId" Prelude.<$> provisionedProductId,
               (JSON..=) "ProvisionedProductStatusMessage"
                 Prelude.<$> provisionedProductStatusMessage]))
instance Property "ProvisionedProductId" ServiceCatalogProvisionedProductDetailsProperty where
  type PropertyType "ProvisionedProductId" ServiceCatalogProvisionedProductDetailsProperty = Value Prelude.Text
  set newValue ServiceCatalogProvisionedProductDetailsProperty {..}
    = ServiceCatalogProvisionedProductDetailsProperty
        {provisionedProductId = Prelude.pure newValue, ..}
instance Property "ProvisionedProductStatusMessage" ServiceCatalogProvisionedProductDetailsProperty where
  type PropertyType "ProvisionedProductStatusMessage" ServiceCatalogProvisionedProductDetailsProperty = Value Prelude.Text
  set newValue ServiceCatalogProvisionedProductDetailsProperty {..}
    = ServiceCatalogProvisionedProductDetailsProperty
        {provisionedProductStatusMessage = Prelude.pure newValue, ..}