module Stratosphere.SageMaker.Project.ServiceCatalogProvisioningDetailsProperty (
        module Exports, ServiceCatalogProvisioningDetailsProperty(..),
        mkServiceCatalogProvisioningDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Project.ProvisioningParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceCatalogProvisioningDetailsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-project-servicecatalogprovisioningdetails.html>
    ServiceCatalogProvisioningDetailsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-project-servicecatalogprovisioningdetails.html#cfn-sagemaker-project-servicecatalogprovisioningdetails-pathid>
                                               pathId :: (Prelude.Maybe (Value Prelude.Text)),
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-project-servicecatalogprovisioningdetails.html#cfn-sagemaker-project-servicecatalogprovisioningdetails-productid>
                                               productId :: (Value Prelude.Text),
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-project-servicecatalogprovisioningdetails.html#cfn-sagemaker-project-servicecatalogprovisioningdetails-provisioningartifactid>
                                               provisioningArtifactId :: (Prelude.Maybe (Value Prelude.Text)),
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-project-servicecatalogprovisioningdetails.html#cfn-sagemaker-project-servicecatalogprovisioningdetails-provisioningparameters>
                                               provisioningParameters :: (Prelude.Maybe [ProvisioningParameterProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceCatalogProvisioningDetailsProperty ::
  Value Prelude.Text -> ServiceCatalogProvisioningDetailsProperty
mkServiceCatalogProvisioningDetailsProperty productId
  = ServiceCatalogProvisioningDetailsProperty
      {productId = productId, pathId = Prelude.Nothing,
       provisioningArtifactId = Prelude.Nothing,
       provisioningParameters = Prelude.Nothing}
instance ToResourceProperties ServiceCatalogProvisioningDetailsProperty where
  toResourceProperties ServiceCatalogProvisioningDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Project.ServiceCatalogProvisioningDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ProductId" JSON..= productId]
                           (Prelude.catMaybes
                              [(JSON..=) "PathId" Prelude.<$> pathId,
                               (JSON..=) "ProvisioningArtifactId"
                                 Prelude.<$> provisioningArtifactId,
                               (JSON..=) "ProvisioningParameters"
                                 Prelude.<$> provisioningParameters]))}
instance JSON.ToJSON ServiceCatalogProvisioningDetailsProperty where
  toJSON ServiceCatalogProvisioningDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ProductId" JSON..= productId]
              (Prelude.catMaybes
                 [(JSON..=) "PathId" Prelude.<$> pathId,
                  (JSON..=) "ProvisioningArtifactId"
                    Prelude.<$> provisioningArtifactId,
                  (JSON..=) "ProvisioningParameters"
                    Prelude.<$> provisioningParameters])))
instance Property "PathId" ServiceCatalogProvisioningDetailsProperty where
  type PropertyType "PathId" ServiceCatalogProvisioningDetailsProperty = Value Prelude.Text
  set newValue ServiceCatalogProvisioningDetailsProperty {..}
    = ServiceCatalogProvisioningDetailsProperty
        {pathId = Prelude.pure newValue, ..}
instance Property "ProductId" ServiceCatalogProvisioningDetailsProperty where
  type PropertyType "ProductId" ServiceCatalogProvisioningDetailsProperty = Value Prelude.Text
  set newValue ServiceCatalogProvisioningDetailsProperty {..}
    = ServiceCatalogProvisioningDetailsProperty
        {productId = newValue, ..}
instance Property "ProvisioningArtifactId" ServiceCatalogProvisioningDetailsProperty where
  type PropertyType "ProvisioningArtifactId" ServiceCatalogProvisioningDetailsProperty = Value Prelude.Text
  set newValue ServiceCatalogProvisioningDetailsProperty {..}
    = ServiceCatalogProvisioningDetailsProperty
        {provisioningArtifactId = Prelude.pure newValue, ..}
instance Property "ProvisioningParameters" ServiceCatalogProvisioningDetailsProperty where
  type PropertyType "ProvisioningParameters" ServiceCatalogProvisioningDetailsProperty = [ProvisioningParameterProperty]
  set newValue ServiceCatalogProvisioningDetailsProperty {..}
    = ServiceCatalogProvisioningDetailsProperty
        {provisioningParameters = Prelude.pure newValue, ..}