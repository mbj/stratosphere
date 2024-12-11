module Stratosphere.B2BI.Capability.EdiConfigurationProperty (
        module Exports, EdiConfigurationProperty(..),
        mkEdiConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.B2BI.Capability.EdiTypeProperty as Exports
import {-# SOURCE #-} Stratosphere.B2BI.Capability.S3LocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EdiConfigurationProperty
  = EdiConfigurationProperty {capabilityDirection :: (Prelude.Maybe (Value Prelude.Text)),
                              inputLocation :: S3LocationProperty,
                              outputLocation :: S3LocationProperty,
                              transformerId :: (Value Prelude.Text),
                              type' :: EdiTypeProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEdiConfigurationProperty ::
  S3LocationProperty
  -> S3LocationProperty
     -> Value Prelude.Text
        -> EdiTypeProperty -> EdiConfigurationProperty
mkEdiConfigurationProperty
  inputLocation
  outputLocation
  transformerId
  type'
  = EdiConfigurationProperty
      {inputLocation = inputLocation, outputLocation = outputLocation,
       transformerId = transformerId, type' = type',
       capabilityDirection = Prelude.Nothing}
instance ToResourceProperties EdiConfigurationProperty where
  toResourceProperties EdiConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Capability.EdiConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InputLocation" JSON..= inputLocation,
                            "OutputLocation" JSON..= outputLocation,
                            "TransformerId" JSON..= transformerId, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "CapabilityDirection"
                                 Prelude.<$> capabilityDirection]))}
instance JSON.ToJSON EdiConfigurationProperty where
  toJSON EdiConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InputLocation" JSON..= inputLocation,
               "OutputLocation" JSON..= outputLocation,
               "TransformerId" JSON..= transformerId, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "CapabilityDirection"
                    Prelude.<$> capabilityDirection])))
instance Property "CapabilityDirection" EdiConfigurationProperty where
  type PropertyType "CapabilityDirection" EdiConfigurationProperty = Value Prelude.Text
  set newValue EdiConfigurationProperty {..}
    = EdiConfigurationProperty
        {capabilityDirection = Prelude.pure newValue, ..}
instance Property "InputLocation" EdiConfigurationProperty where
  type PropertyType "InputLocation" EdiConfigurationProperty = S3LocationProperty
  set newValue EdiConfigurationProperty {..}
    = EdiConfigurationProperty {inputLocation = newValue, ..}
instance Property "OutputLocation" EdiConfigurationProperty where
  type PropertyType "OutputLocation" EdiConfigurationProperty = S3LocationProperty
  set newValue EdiConfigurationProperty {..}
    = EdiConfigurationProperty {outputLocation = newValue, ..}
instance Property "TransformerId" EdiConfigurationProperty where
  type PropertyType "TransformerId" EdiConfigurationProperty = Value Prelude.Text
  set newValue EdiConfigurationProperty {..}
    = EdiConfigurationProperty {transformerId = newValue, ..}
instance Property "Type" EdiConfigurationProperty where
  type PropertyType "Type" EdiConfigurationProperty = EdiTypeProperty
  set newValue EdiConfigurationProperty {..}
    = EdiConfigurationProperty {type' = newValue, ..}