module Stratosphere.ServiceCatalog.CloudFormationProduct (
        module Exports, CloudFormationProduct(..), mkCloudFormationProduct
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ServiceCatalog.CloudFormationProduct.ProvisioningArtifactPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.ServiceCatalog.CloudFormationProduct.SourceConnectionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CloudFormationProduct
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html>
    CloudFormationProduct {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-acceptlanguage>
                           acceptLanguage :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-description>
                           description :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-distributor>
                           distributor :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-name>
                           name :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-owner>
                           owner :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-producttype>
                           productType :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-provisioningartifactparameters>
                           provisioningArtifactParameters :: (Prelude.Maybe [ProvisioningArtifactPropertiesProperty]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-replaceprovisioningartifacts>
                           replaceProvisioningArtifacts :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-sourceconnection>
                           sourceConnection :: (Prelude.Maybe SourceConnectionProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-supportdescription>
                           supportDescription :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-supportemail>
                           supportEmail :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-supporturl>
                           supportUrl :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-tags>
                           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudFormationProduct ::
  Value Prelude.Text -> Value Prelude.Text -> CloudFormationProduct
mkCloudFormationProduct name owner
  = CloudFormationProduct
      {haddock_workaround_ = (), name = name, owner = owner,
       acceptLanguage = Prelude.Nothing, description = Prelude.Nothing,
       distributor = Prelude.Nothing, productType = Prelude.Nothing,
       provisioningArtifactParameters = Prelude.Nothing,
       replaceProvisioningArtifacts = Prelude.Nothing,
       sourceConnection = Prelude.Nothing,
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
                           ["Name" JSON..= name, "Owner" JSON..= owner]
                           (Prelude.catMaybes
                              [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Distributor" Prelude.<$> distributor,
                               (JSON..=) "ProductType" Prelude.<$> productType,
                               (JSON..=) "ProvisioningArtifactParameters"
                                 Prelude.<$> provisioningArtifactParameters,
                               (JSON..=) "ReplaceProvisioningArtifacts"
                                 Prelude.<$> replaceProvisioningArtifacts,
                               (JSON..=) "SourceConnection" Prelude.<$> sourceConnection,
                               (JSON..=) "SupportDescription" Prelude.<$> supportDescription,
                               (JSON..=) "SupportEmail" Prelude.<$> supportEmail,
                               (JSON..=) "SupportUrl" Prelude.<$> supportUrl,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CloudFormationProduct where
  toJSON CloudFormationProduct {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Owner" JSON..= owner]
              (Prelude.catMaybes
                 [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Distributor" Prelude.<$> distributor,
                  (JSON..=) "ProductType" Prelude.<$> productType,
                  (JSON..=) "ProvisioningArtifactParameters"
                    Prelude.<$> provisioningArtifactParameters,
                  (JSON..=) "ReplaceProvisioningArtifacts"
                    Prelude.<$> replaceProvisioningArtifacts,
                  (JSON..=) "SourceConnection" Prelude.<$> sourceConnection,
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
instance Property "ProductType" CloudFormationProduct where
  type PropertyType "ProductType" CloudFormationProduct = Value Prelude.Text
  set newValue CloudFormationProduct {..}
    = CloudFormationProduct {productType = Prelude.pure newValue, ..}
instance Property "ProvisioningArtifactParameters" CloudFormationProduct where
  type PropertyType "ProvisioningArtifactParameters" CloudFormationProduct = [ProvisioningArtifactPropertiesProperty]
  set newValue CloudFormationProduct {..}
    = CloudFormationProduct
        {provisioningArtifactParameters = Prelude.pure newValue, ..}
instance Property "ReplaceProvisioningArtifacts" CloudFormationProduct where
  type PropertyType "ReplaceProvisioningArtifacts" CloudFormationProduct = Value Prelude.Bool
  set newValue CloudFormationProduct {..}
    = CloudFormationProduct
        {replaceProvisioningArtifacts = Prelude.pure newValue, ..}
instance Property "SourceConnection" CloudFormationProduct where
  type PropertyType "SourceConnection" CloudFormationProduct = SourceConnectionProperty
  set newValue CloudFormationProduct {..}
    = CloudFormationProduct
        {sourceConnection = Prelude.pure newValue, ..}
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