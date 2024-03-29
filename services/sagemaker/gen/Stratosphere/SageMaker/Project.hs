module Stratosphere.SageMaker.Project (
        module Exports, Project(..), mkProject
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Project.ServiceCatalogProvisionedProductDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Project.ServiceCatalogProvisioningDetailsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Project
  = Project {projectDescription :: (Prelude.Maybe (Value Prelude.Text)),
             projectName :: (Value Prelude.Text),
             serviceCatalogProvisionedProductDetails :: (Prelude.Maybe ServiceCatalogProvisionedProductDetailsProperty),
             serviceCatalogProvisioningDetails :: ServiceCatalogProvisioningDetailsProperty,
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProject ::
  Value Prelude.Text
  -> ServiceCatalogProvisioningDetailsProperty -> Project
mkProject projectName serviceCatalogProvisioningDetails
  = Project
      {projectName = projectName,
       serviceCatalogProvisioningDetails = serviceCatalogProvisioningDetails,
       projectDescription = Prelude.Nothing,
       serviceCatalogProvisionedProductDetails = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Project where
  toResourceProperties Project {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Project", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ProjectName" JSON..= projectName,
                            "ServiceCatalogProvisioningDetails"
                              JSON..= serviceCatalogProvisioningDetails]
                           (Prelude.catMaybes
                              [(JSON..=) "ProjectDescription" Prelude.<$> projectDescription,
                               (JSON..=) "ServiceCatalogProvisionedProductDetails"
                                 Prelude.<$> serviceCatalogProvisionedProductDetails,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Project where
  toJSON Project {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ProjectName" JSON..= projectName,
               "ServiceCatalogProvisioningDetails"
                 JSON..= serviceCatalogProvisioningDetails]
              (Prelude.catMaybes
                 [(JSON..=) "ProjectDescription" Prelude.<$> projectDescription,
                  (JSON..=) "ServiceCatalogProvisionedProductDetails"
                    Prelude.<$> serviceCatalogProvisionedProductDetails,
                  (JSON..=) "Tags" Prelude.<$> tags])))
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
    = Project {serviceCatalogProvisioningDetails = newValue, ..}
instance Property "Tags" Project where
  type PropertyType "Tags" Project = [Tag]
  set newValue Project {..}
    = Project {tags = Prelude.pure newValue, ..}