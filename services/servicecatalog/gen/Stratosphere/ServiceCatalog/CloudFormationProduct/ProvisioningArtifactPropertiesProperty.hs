module Stratosphere.ServiceCatalog.CloudFormationProduct.ProvisioningArtifactPropertiesProperty (
        ProvisioningArtifactPropertiesProperty(..),
        mkProvisioningArtifactPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProvisioningArtifactPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationproduct-provisioningartifactproperties.html>
    ProvisioningArtifactPropertiesProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationproduct-provisioningartifactproperties.html#cfn-servicecatalog-cloudformationproduct-provisioningartifactproperties-description>
                                            description :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationproduct-provisioningartifactproperties.html#cfn-servicecatalog-cloudformationproduct-provisioningartifactproperties-disabletemplatevalidation>
                                            disableTemplateValidation :: (Prelude.Maybe (Value Prelude.Bool)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationproduct-provisioningartifactproperties.html#cfn-servicecatalog-cloudformationproduct-provisioningartifactproperties-info>
                                            info :: JSON.Object,
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationproduct-provisioningartifactproperties.html#cfn-servicecatalog-cloudformationproduct-provisioningartifactproperties-name>
                                            name :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationproduct-provisioningartifactproperties.html#cfn-servicecatalog-cloudformationproduct-provisioningartifactproperties-type>
                                            type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProvisioningArtifactPropertiesProperty ::
  JSON.Object -> ProvisioningArtifactPropertiesProperty
mkProvisioningArtifactPropertiesProperty info
  = ProvisioningArtifactPropertiesProperty
      {haddock_workaround_ = (), info = info,
       description = Prelude.Nothing,
       disableTemplateValidation = Prelude.Nothing,
       name = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties ProvisioningArtifactPropertiesProperty where
  toResourceProperties ProvisioningArtifactPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::CloudFormationProduct.ProvisioningArtifactProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Info" JSON..= info]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DisableTemplateValidation"
                                 Prelude.<$> disableTemplateValidation,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Type" Prelude.<$> type']))}
instance JSON.ToJSON ProvisioningArtifactPropertiesProperty where
  toJSON ProvisioningArtifactPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Info" JSON..= info]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DisableTemplateValidation"
                    Prelude.<$> disableTemplateValidation,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Type" Prelude.<$> type'])))
instance Property "Description" ProvisioningArtifactPropertiesProperty where
  type PropertyType "Description" ProvisioningArtifactPropertiesProperty = Value Prelude.Text
  set newValue ProvisioningArtifactPropertiesProperty {..}
    = ProvisioningArtifactPropertiesProperty
        {description = Prelude.pure newValue, ..}
instance Property "DisableTemplateValidation" ProvisioningArtifactPropertiesProperty where
  type PropertyType "DisableTemplateValidation" ProvisioningArtifactPropertiesProperty = Value Prelude.Bool
  set newValue ProvisioningArtifactPropertiesProperty {..}
    = ProvisioningArtifactPropertiesProperty
        {disableTemplateValidation = Prelude.pure newValue, ..}
instance Property "Info" ProvisioningArtifactPropertiesProperty where
  type PropertyType "Info" ProvisioningArtifactPropertiesProperty = JSON.Object
  set newValue ProvisioningArtifactPropertiesProperty {..}
    = ProvisioningArtifactPropertiesProperty {info = newValue, ..}
instance Property "Name" ProvisioningArtifactPropertiesProperty where
  type PropertyType "Name" ProvisioningArtifactPropertiesProperty = Value Prelude.Text
  set newValue ProvisioningArtifactPropertiesProperty {..}
    = ProvisioningArtifactPropertiesProperty
        {name = Prelude.pure newValue, ..}
instance Property "Type" ProvisioningArtifactPropertiesProperty where
  type PropertyType "Type" ProvisioningArtifactPropertiesProperty = Value Prelude.Text
  set newValue ProvisioningArtifactPropertiesProperty {..}
    = ProvisioningArtifactPropertiesProperty
        {type' = Prelude.pure newValue, ..}