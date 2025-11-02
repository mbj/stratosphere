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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-project-servicecatalogprovisionedproductdetails.html>
    ServiceCatalogProvisionedProductDetailsProperty {haddock_workaround_ :: (),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-project-servicecatalogprovisionedproductdetails.html#cfn-sagemaker-project-servicecatalogprovisionedproductdetails-provisionedproductid>
                                                     provisionedProductId :: (Prelude.Maybe (Value Prelude.Text)),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-project-servicecatalogprovisionedproductdetails.html#cfn-sagemaker-project-servicecatalogprovisionedproductdetails-provisionedproductstatusmessage>
                                                     provisionedProductStatusMessage :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceCatalogProvisionedProductDetailsProperty ::
  ServiceCatalogProvisionedProductDetailsProperty
mkServiceCatalogProvisionedProductDetailsProperty
  = ServiceCatalogProvisionedProductDetailsProperty
      {haddock_workaround_ = (), provisionedProductId = Prelude.Nothing,
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