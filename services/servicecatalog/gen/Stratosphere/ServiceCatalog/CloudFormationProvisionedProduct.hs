module Stratosphere.ServiceCatalog.CloudFormationProvisionedProduct (
        module Exports, CloudFormationProvisionedProduct(..),
        mkCloudFormationProvisionedProduct
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ServiceCatalog.CloudFormationProvisionedProduct.ProvisioningParameterProperty as Exports
import {-# SOURCE #-} Stratosphere.ServiceCatalog.CloudFormationProvisionedProduct.ProvisioningPreferencesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CloudFormationProvisionedProduct
  = CloudFormationProvisionedProduct {acceptLanguage :: (Prelude.Maybe (Value Prelude.Text)),
                                      notificationArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      pathId :: (Prelude.Maybe (Value Prelude.Text)),
                                      pathName :: (Prelude.Maybe (Value Prelude.Text)),
                                      productId :: (Prelude.Maybe (Value Prelude.Text)),
                                      productName :: (Prelude.Maybe (Value Prelude.Text)),
                                      provisionedProductName :: (Prelude.Maybe (Value Prelude.Text)),
                                      provisioningArtifactId :: (Prelude.Maybe (Value Prelude.Text)),
                                      provisioningArtifactName :: (Prelude.Maybe (Value Prelude.Text)),
                                      provisioningParameters :: (Prelude.Maybe [ProvisioningParameterProperty]),
                                      provisioningPreferences :: (Prelude.Maybe ProvisioningPreferencesProperty),
                                      tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudFormationProvisionedProduct ::
  CloudFormationProvisionedProduct
mkCloudFormationProvisionedProduct
  = CloudFormationProvisionedProduct
      {acceptLanguage = Prelude.Nothing,
       notificationArns = Prelude.Nothing, pathId = Prelude.Nothing,
       pathName = Prelude.Nothing, productId = Prelude.Nothing,
       productName = Prelude.Nothing,
       provisionedProductName = Prelude.Nothing,
       provisioningArtifactId = Prelude.Nothing,
       provisioningArtifactName = Prelude.Nothing,
       provisioningParameters = Prelude.Nothing,
       provisioningPreferences = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties CloudFormationProvisionedProduct where
  toResourceProperties CloudFormationProvisionedProduct {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::CloudFormationProvisionedProduct",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage,
                            (JSON..=) "NotificationArns" Prelude.<$> notificationArns,
                            (JSON..=) "PathId" Prelude.<$> pathId,
                            (JSON..=) "PathName" Prelude.<$> pathName,
                            (JSON..=) "ProductId" Prelude.<$> productId,
                            (JSON..=) "ProductName" Prelude.<$> productName,
                            (JSON..=) "ProvisionedProductName"
                              Prelude.<$> provisionedProductName,
                            (JSON..=) "ProvisioningArtifactId"
                              Prelude.<$> provisioningArtifactId,
                            (JSON..=) "ProvisioningArtifactName"
                              Prelude.<$> provisioningArtifactName,
                            (JSON..=) "ProvisioningParameters"
                              Prelude.<$> provisioningParameters,
                            (JSON..=) "ProvisioningPreferences"
                              Prelude.<$> provisioningPreferences,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON CloudFormationProvisionedProduct where
  toJSON CloudFormationProvisionedProduct {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage,
               (JSON..=) "NotificationArns" Prelude.<$> notificationArns,
               (JSON..=) "PathId" Prelude.<$> pathId,
               (JSON..=) "PathName" Prelude.<$> pathName,
               (JSON..=) "ProductId" Prelude.<$> productId,
               (JSON..=) "ProductName" Prelude.<$> productName,
               (JSON..=) "ProvisionedProductName"
                 Prelude.<$> provisionedProductName,
               (JSON..=) "ProvisioningArtifactId"
                 Prelude.<$> provisioningArtifactId,
               (JSON..=) "ProvisioningArtifactName"
                 Prelude.<$> provisioningArtifactName,
               (JSON..=) "ProvisioningParameters"
                 Prelude.<$> provisioningParameters,
               (JSON..=) "ProvisioningPreferences"
                 Prelude.<$> provisioningPreferences,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "AcceptLanguage" CloudFormationProvisionedProduct where
  type PropertyType "AcceptLanguage" CloudFormationProvisionedProduct = Value Prelude.Text
  set newValue CloudFormationProvisionedProduct {..}
    = CloudFormationProvisionedProduct
        {acceptLanguage = Prelude.pure newValue, ..}
instance Property "NotificationArns" CloudFormationProvisionedProduct where
  type PropertyType "NotificationArns" CloudFormationProvisionedProduct = ValueList Prelude.Text
  set newValue CloudFormationProvisionedProduct {..}
    = CloudFormationProvisionedProduct
        {notificationArns = Prelude.pure newValue, ..}
instance Property "PathId" CloudFormationProvisionedProduct where
  type PropertyType "PathId" CloudFormationProvisionedProduct = Value Prelude.Text
  set newValue CloudFormationProvisionedProduct {..}
    = CloudFormationProvisionedProduct
        {pathId = Prelude.pure newValue, ..}
instance Property "PathName" CloudFormationProvisionedProduct where
  type PropertyType "PathName" CloudFormationProvisionedProduct = Value Prelude.Text
  set newValue CloudFormationProvisionedProduct {..}
    = CloudFormationProvisionedProduct
        {pathName = Prelude.pure newValue, ..}
instance Property "ProductId" CloudFormationProvisionedProduct where
  type PropertyType "ProductId" CloudFormationProvisionedProduct = Value Prelude.Text
  set newValue CloudFormationProvisionedProduct {..}
    = CloudFormationProvisionedProduct
        {productId = Prelude.pure newValue, ..}
instance Property "ProductName" CloudFormationProvisionedProduct where
  type PropertyType "ProductName" CloudFormationProvisionedProduct = Value Prelude.Text
  set newValue CloudFormationProvisionedProduct {..}
    = CloudFormationProvisionedProduct
        {productName = Prelude.pure newValue, ..}
instance Property "ProvisionedProductName" CloudFormationProvisionedProduct where
  type PropertyType "ProvisionedProductName" CloudFormationProvisionedProduct = Value Prelude.Text
  set newValue CloudFormationProvisionedProduct {..}
    = CloudFormationProvisionedProduct
        {provisionedProductName = Prelude.pure newValue, ..}
instance Property "ProvisioningArtifactId" CloudFormationProvisionedProduct where
  type PropertyType "ProvisioningArtifactId" CloudFormationProvisionedProduct = Value Prelude.Text
  set newValue CloudFormationProvisionedProduct {..}
    = CloudFormationProvisionedProduct
        {provisioningArtifactId = Prelude.pure newValue, ..}
instance Property "ProvisioningArtifactName" CloudFormationProvisionedProduct where
  type PropertyType "ProvisioningArtifactName" CloudFormationProvisionedProduct = Value Prelude.Text
  set newValue CloudFormationProvisionedProduct {..}
    = CloudFormationProvisionedProduct
        {provisioningArtifactName = Prelude.pure newValue, ..}
instance Property "ProvisioningParameters" CloudFormationProvisionedProduct where
  type PropertyType "ProvisioningParameters" CloudFormationProvisionedProduct = [ProvisioningParameterProperty]
  set newValue CloudFormationProvisionedProduct {..}
    = CloudFormationProvisionedProduct
        {provisioningParameters = Prelude.pure newValue, ..}
instance Property "ProvisioningPreferences" CloudFormationProvisionedProduct where
  type PropertyType "ProvisioningPreferences" CloudFormationProvisionedProduct = ProvisioningPreferencesProperty
  set newValue CloudFormationProvisionedProduct {..}
    = CloudFormationProvisionedProduct
        {provisioningPreferences = Prelude.pure newValue, ..}
instance Property "Tags" CloudFormationProvisionedProduct where
  type PropertyType "Tags" CloudFormationProvisionedProduct = [Tag]
  set newValue CloudFormationProvisionedProduct {..}
    = CloudFormationProvisionedProduct
        {tags = Prelude.pure newValue, ..}