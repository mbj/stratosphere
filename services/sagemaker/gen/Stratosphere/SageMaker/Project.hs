module Stratosphere.SageMaker.Project (
        module Exports, Project(..), mkProject
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Project.ServiceCatalogProvisionedProductDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Project.ServiceCatalogProvisioningDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Project.TemplateProviderDetailProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Project
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-project.html>
    Project {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-project.html#cfn-sagemaker-project-projectdescription>
             projectDescription :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-project.html#cfn-sagemaker-project-projectname>
             projectName :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-project.html#cfn-sagemaker-project-servicecatalogprovisionedproductdetails>
             serviceCatalogProvisionedProductDetails :: (Prelude.Maybe ServiceCatalogProvisionedProductDetailsProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-project.html#cfn-sagemaker-project-servicecatalogprovisioningdetails>
             serviceCatalogProvisioningDetails :: (Prelude.Maybe ServiceCatalogProvisioningDetailsProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-project.html#cfn-sagemaker-project-tags>
             tags :: (Prelude.Maybe [Tag]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-project.html#cfn-sagemaker-project-templateproviderdetails>
             templateProviderDetails :: (Prelude.Maybe [TemplateProviderDetailProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProject :: Value Prelude.Text -> Project
mkProject projectName
  = Project
      {haddock_workaround_ = (), projectName = projectName,
       projectDescription = Prelude.Nothing,
       serviceCatalogProvisionedProductDetails = Prelude.Nothing,
       serviceCatalogProvisioningDetails = Prelude.Nothing,
       tags = Prelude.Nothing, templateProviderDetails = Prelude.Nothing}
instance ToResourceProperties Project where
  toResourceProperties Project {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Project", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ProjectName" JSON..= projectName]
                           (Prelude.catMaybes
                              [(JSON..=) "ProjectDescription" Prelude.<$> projectDescription,
                               (JSON..=) "ServiceCatalogProvisionedProductDetails"
                                 Prelude.<$> serviceCatalogProvisionedProductDetails,
                               (JSON..=) "ServiceCatalogProvisioningDetails"
                                 Prelude.<$> serviceCatalogProvisioningDetails,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TemplateProviderDetails"
                                 Prelude.<$> templateProviderDetails]))}
instance JSON.ToJSON Project where
  toJSON Project {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ProjectName" JSON..= projectName]
              (Prelude.catMaybes
                 [(JSON..=) "ProjectDescription" Prelude.<$> projectDescription,
                  (JSON..=) "ServiceCatalogProvisionedProductDetails"
                    Prelude.<$> serviceCatalogProvisionedProductDetails,
                  (JSON..=) "ServiceCatalogProvisioningDetails"
                    Prelude.<$> serviceCatalogProvisioningDetails,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TemplateProviderDetails"
                    Prelude.<$> templateProviderDetails])))
instance Property "ProjectDescription" Project where
  type PropertyType "ProjectDescription" Project = Value Prelude.Text
  set newValue Project {..}
    = Project {projectDescription = Prelude.pure newValue, ..}
instance Property "ProjectName" Project where
  type PropertyType "ProjectName" Project = Value Prelude.Text
  set newValue Project {..} = Project {projectName = newValue, ..}
instance Property "ServiceCatalogProvisionedProductDetails" Project where
  type PropertyType "ServiceCatalogProvisionedProductDetails" Project = ServiceCatalogProvisionedProductDetailsProperty
  set newValue Project {..}
    = Project
        {serviceCatalogProvisionedProductDetails = Prelude.pure newValue,
         ..}
instance Property "ServiceCatalogProvisioningDetails" Project where
  type PropertyType "ServiceCatalogProvisioningDetails" Project = ServiceCatalogProvisioningDetailsProperty
  set newValue Project {..}
    = Project
        {serviceCatalogProvisioningDetails = Prelude.pure newValue, ..}
instance Property "Tags" Project where
  type PropertyType "Tags" Project = [Tag]
  set newValue Project {..}
    = Project {tags = Prelude.pure newValue, ..}
instance Property "TemplateProviderDetails" Project where
  type PropertyType "TemplateProviderDetails" Project = [TemplateProviderDetailProperty]
  set newValue Project {..}
    = Project {templateProviderDetails = Prelude.pure newValue, ..}