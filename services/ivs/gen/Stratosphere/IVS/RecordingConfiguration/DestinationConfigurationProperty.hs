module Stratosphere.IVS.RecordingConfiguration.DestinationConfigurationProperty (
        module Exports, DestinationConfigurationProperty(..),
        mkDestinationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IVS.RecordingConfiguration.S3DestinationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data DestinationConfigurationProperty
  = DestinationConfigurationProperty {s3 :: S3DestinationConfigurationProperty}
mkDestinationConfigurationProperty ::
  S3DestinationConfigurationProperty
  -> DestinationConfigurationProperty
mkDestinationConfigurationProperty s3
  = DestinationConfigurationProperty {s3 = s3}
instance ToResourceProperties DestinationConfigurationProperty where
  toResourceProperties DestinationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IVS::RecordingConfiguration.DestinationConfiguration",
         supportsTags = Prelude.False, properties = ["S3" JSON..= s3]}
instance JSON.ToJSON DestinationConfigurationProperty where
  toJSON DestinationConfigurationProperty {..}
    = JSON.object ["S3" JSON..= s3]
instance Property "S3" DestinationConfigurationProperty where
  type PropertyType "S3" DestinationConfigurationProperty = S3DestinationConfigurationProperty
  set newValue DestinationConfigurationProperty {}
    = DestinationConfigurationProperty {s3 = newValue, ..}