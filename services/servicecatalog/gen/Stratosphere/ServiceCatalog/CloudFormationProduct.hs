module Stratosphere.ServiceCatalog.CloudFormationProduct (
        module Exports, CloudFormationProduct(..), mkCloudFormationProduct
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ServiceCatalog.CloudFormationProduct.ProvisioningArtifactPropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CloudFormationProduct
  = CloudFormationProduct {acceptLanguage :: (Prelude.Maybe (Value Prelude.Text)),
                           description :: (Prelude.Maybe (Value Prelude.Text)),
                           distributor :: (Prelude.Maybe (Value Prelude.Text)),
                           name :: (Value Prelude.Text),
                           owner :: (Value Prelude.Text),
                           provisioningArtifactParameters :: [ProvisioningArtifactPropertiesProperty],
                           replaceProvisioningArtifacts :: (Prelude.Maybe (Value Prelude.Bool)),
                           supportDescription :: (Prelude.Maybe (Value Prelude.Text)),
                           supportEmail :: (Prelude.Maybe (Value Prelude.Text)),
                           supportUrl :: (Prelude.Maybe (Value Prelude.Text)),
                           tags :: (Prelude.Maybe [Tag])}
mkCloudFormationProduct ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> [ProvisioningArtifactPropertiesProperty]
        -> CloudFormationProduct
mkCloudFormationProduct name owner provisioningArtifactParameters
  = CloudFormationProduct
      {name = name, owner = owner,
       provisioningArtifactParameters = provisioningArtifactParameters,
       acceptLanguage = Prelude.Nothing, description = Prelude.Nothing,
       distributor = Prelude.Nothing,
       replaceProvisioningArtifacts = Prelude.Nothing,
       supportDescription = Prelude.Nothing,
       supportEmail = Prelude.Nothing, supportUrl = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties CloudFormationProduct where
  toResourceProperties CloudFormationProduct {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::CloudFormationProduct",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Owner" JSON..= owner,
                            "ProvisioningArtifactParameters"
                              JSON..= provisioningArtifactParameters]
                           (Prelude.catMaybes
                              [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Distributor" Prelude.<$> distributor,
                               (JSON..=) "ReplaceProvisioningArtifacts"
                                 Prelude.<$> replaceProvisioningArtifacts,
                               (JSON..=) "SupportDescription" Prelude.<$> supportDescription,
                               (JSON..=) "SupportEmail" Prelude.<$> supportEmail,
                               (JSON..=) "SupportUrl" Prelude.<$> supportUrl,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CloudFormationProduct where
  toJSON CloudFormationProduct {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Owner" JSON..= owner,
               "ProvisioningArtifactParameters"
                 JSON..= provisioningArtifactParameters]
              (Prelude.catMaybes
                 [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Distributor" Prelude.<$> distributor,
                  (JSON..=) "ReplaceProvisioningArtifacts"
                    Prelude.<$> replaceProvisioningArtifacts,
                  (JSON..=) "SupportDescription" Prelude.<$> supportDescription,
                  (JSON..=) "SupportEmail" Prelude.<$> supportEmail,
                  (JSON..=) "SupportUrl" Prelude.<$> supportUrl,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AcceptLanguage" CloudFormationProduct where
  type PropertyType "AcceptLanguage" CloudFormationProduct = Value Prelude.Text
  set newValue CloudFormationProduct {..}
    = CloudFormationProduct
        {acceptLanguage = Prelude.pure newValue, ..}
instance Property "Description" CloudFormationProduct where
  type PropertyType "Description" CloudFormationProduct = Value Prelude.Text
  set newValue CloudFormationProduct {..}
    = CloudFormationProduct {description = Prelude.pure newValue, ..}
instance Property "Distributor" CloudFormationProduct where
  type PropertyType "Distributor" CloudFormationProduct = Value Prelude.Text
  set newValue CloudFormationProduct {..}
    = CloudFormationProduct {distributor = Prelude.pure newValue, ..}
instance Property "Name" CloudFormationProduct where
  type PropertyType "Name" CloudFormationProduct = Value Prelude.Text
  set newValue CloudFormationProduct {..}
    = CloudFormationProduct {name = newValue, ..}
instance Property "Owner" CloudFormationProduct where
  type PropertyType "Owner" CloudFormationProduct = Value Prelude.Text
  set newValue CloudFormationProduct {..}
    = CloudFormationProduct {owner = newValue, ..}
instance Property "ProvisioningArtifactParameters" CloudFormationProduct where
  type PropertyType "ProvisioningArtifactParameters" CloudFormationProduct = [ProvisioningArtifactPropertiesProperty]
  set newValue CloudFormationProduct {..}
    = CloudFormationProduct
        {provisioningArtifactParameters = newValue, ..}
instance Property "ReplaceProvisioningArtifacts" CloudFormationProduct where
  type PropertyType "ReplaceProvisioningArtifacts" CloudFormationProduct = Value Prelude.Bool
  set newValue CloudFormationProduct {..}
    = CloudFormationProduct
        {replaceProvisioningArtifacts = Prelude.pure newValue, ..}
instance Property "SupportDescription" CloudFormationProduct where
  type PropertyType "SupportDescription" CloudFormationProduct = Value Prelude.Text
  set newValue CloudFormationProduct {..}
    = CloudFormationProduct
        {supportDescription = Prelude.pure newValue, ..}
instance Property "SupportEmail" CloudFormationProduct where
  type PropertyType "SupportEmail" CloudFormationProduct = Value Prelude.Text
  set newValue CloudFormationProduct {..}
    = CloudFormationProduct {supportEmail = Prelude.pure newValue, ..}
instance Property "SupportUrl" CloudFormationProduct where
  type PropertyType "SupportUrl" CloudFormationProduct = Value Prelude.Text
  set newValue CloudFormationProduct {..}
    = CloudFormationProduct {supportUrl = Prelude.pure newValue, ..}
instance Property "Tags" CloudFormationProduct where
  type PropertyType "Tags" CloudFormationProduct = [Tag]
  set newValue CloudFormationProduct {..}
    = CloudFormationProduct {tags = Prelude.pure newValue, ..}