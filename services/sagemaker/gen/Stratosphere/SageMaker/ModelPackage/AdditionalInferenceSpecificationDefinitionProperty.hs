module Stratosphere.SageMaker.ModelPackage.AdditionalInferenceSpecificationDefinitionProperty (
        module Exports,
        AdditionalInferenceSpecificationDefinitionProperty(..),
        mkAdditionalInferenceSpecificationDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.ModelPackageContainerDefinitionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AdditionalInferenceSpecificationDefinitionProperty
  = AdditionalInferenceSpecificationDefinitionProperty {containers :: [ModelPackageContainerDefinitionProperty],
                                                        description :: (Prelude.Maybe (Value Prelude.Text)),
                                                        name :: (Value Prelude.Text),
                                                        supportedContentTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                        supportedRealtimeInferenceInstanceTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                        supportedResponseMIMETypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                        supportedTransformInstanceTypes :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAdditionalInferenceSpecificationDefinitionProperty ::
  [ModelPackageContainerDefinitionProperty]
  -> Value Prelude.Text
     -> AdditionalInferenceSpecificationDefinitionProperty
mkAdditionalInferenceSpecificationDefinitionProperty
  containers
  name
  = AdditionalInferenceSpecificationDefinitionProperty
      {containers = containers, name = name,
       description = Prelude.Nothing,
       supportedContentTypes = Prelude.Nothing,
       supportedRealtimeInferenceInstanceTypes = Prelude.Nothing,
       supportedResponseMIMETypes = Prelude.Nothing,
       supportedTransformInstanceTypes = Prelude.Nothing}
instance ToResourceProperties AdditionalInferenceSpecificationDefinitionProperty where
  toResourceProperties
    AdditionalInferenceSpecificationDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.AdditionalInferenceSpecificationDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Containers" JSON..= containers, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "SupportedContentTypes"
                                 Prelude.<$> supportedContentTypes,
                               (JSON..=) "SupportedRealtimeInferenceInstanceTypes"
                                 Prelude.<$> supportedRealtimeInferenceInstanceTypes,
                               (JSON..=) "SupportedResponseMIMETypes"
                                 Prelude.<$> supportedResponseMIMETypes,
                               (JSON..=) "SupportedTransformInstanceTypes"
                                 Prelude.<$> supportedTransformInstanceTypes]))}
instance JSON.ToJSON AdditionalInferenceSpecificationDefinitionProperty where
  toJSON AdditionalInferenceSpecificationDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Containers" JSON..= containers, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "SupportedContentTypes"
                    Prelude.<$> supportedContentTypes,
                  (JSON..=) "SupportedRealtimeInferenceInstanceTypes"
                    Prelude.<$> supportedRealtimeInferenceInstanceTypes,
                  (JSON..=) "SupportedResponseMIMETypes"
                    Prelude.<$> supportedResponseMIMETypes,
                  (JSON..=) "SupportedTransformInstanceTypes"
                    Prelude.<$> supportedTransformInstanceTypes])))
instance Property "Containers" AdditionalInferenceSpecificationDefinitionProperty where
  type PropertyType "Containers" AdditionalInferenceSpecificationDefinitionProperty = [ModelPackageContainerDefinitionProperty]
  set
    newValue
    AdditionalInferenceSpecificationDefinitionProperty {..}
    = AdditionalInferenceSpecificationDefinitionProperty
        {containers = newValue, ..}
instance Property "Description" AdditionalInferenceSpecificationDefinitionProperty where
  type PropertyType "Description" AdditionalInferenceSpecificationDefinitionProperty = Value Prelude.Text
  set
    newValue
    AdditionalInferenceSpecificationDefinitionProperty {..}
    = AdditionalInferenceSpecificationDefinitionProperty
        {description = Prelude.pure newValue, ..}
instance Property "Name" AdditionalInferenceSpecificationDefinitionProperty where
  type PropertyType "Name" AdditionalInferenceSpecificationDefinitionProperty = Value Prelude.Text
  set
    newValue
    AdditionalInferenceSpecificationDefinitionProperty {..}
    = AdditionalInferenceSpecificationDefinitionProperty
        {name = newValue, ..}
instance Property "SupportedContentTypes" AdditionalInferenceSpecificationDefinitionProperty where
  type PropertyType "SupportedContentTypes" AdditionalInferenceSpecificationDefinitionProperty = ValueList Prelude.Text
  set
    newValue
    AdditionalInferenceSpecificationDefinitionProperty {..}
    = AdditionalInferenceSpecificationDefinitionProperty
        {supportedContentTypes = Prelude.pure newValue, ..}
instance Property "SupportedRealtimeInferenceInstanceTypes" AdditionalInferenceSpecificationDefinitionProperty where
  type PropertyType "SupportedRealtimeInferenceInstanceTypes" AdditionalInferenceSpecificationDefinitionProperty = ValueList Prelude.Text
  set
    newValue
    AdditionalInferenceSpecificationDefinitionProperty {..}
    = AdditionalInferenceSpecificationDefinitionProperty
        {supportedRealtimeInferenceInstanceTypes = Prelude.pure newValue,
         ..}
instance Property "SupportedResponseMIMETypes" AdditionalInferenceSpecificationDefinitionProperty where
  type PropertyType "SupportedResponseMIMETypes" AdditionalInferenceSpecificationDefinitionProperty = ValueList Prelude.Text
  set
    newValue
    AdditionalInferenceSpecificationDefinitionProperty {..}
    = AdditionalInferenceSpecificationDefinitionProperty
        {supportedResponseMIMETypes = Prelude.pure newValue, ..}
instance Property "SupportedTransformInstanceTypes" AdditionalInferenceSpecificationDefinitionProperty where
  type PropertyType "SupportedTransformInstanceTypes" AdditionalInferenceSpecificationDefinitionProperty = ValueList Prelude.Text
  set
    newValue
    AdditionalInferenceSpecificationDefinitionProperty {..}
    = AdditionalInferenceSpecificationDefinitionProperty
        {supportedTransformInstanceTypes = Prelude.pure newValue, ..}