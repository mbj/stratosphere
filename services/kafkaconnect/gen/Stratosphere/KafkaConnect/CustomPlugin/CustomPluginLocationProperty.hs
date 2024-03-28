module Stratosphere.KafkaConnect.CustomPlugin.CustomPluginLocationProperty (
        module Exports, CustomPluginLocationProperty(..),
        mkCustomPluginLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KafkaConnect.CustomPlugin.S3LocationProperty as Exports
import Stratosphere.ResourceProperties
data CustomPluginLocationProperty
  = CustomPluginLocationProperty {s3Location :: S3LocationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomPluginLocationProperty ::
  S3LocationProperty -> CustomPluginLocationProperty
mkCustomPluginLocationProperty s3Location
  = CustomPluginLocationProperty {s3Location = s3Location}
instance ToResourceProperties CustomPluginLocationProperty where
  toResourceProperties CustomPluginLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KafkaConnect::CustomPlugin.CustomPluginLocation",
         supportsTags = Prelude.False,
         properties = ["S3Location" JSON..= s3Location]}
instance JSON.ToJSON CustomPluginLocationProperty where
  toJSON CustomPluginLocationProperty {..}
    = JSON.object ["S3Location" JSON..= s3Location]
instance Property "S3Location" CustomPluginLocationProperty where
  type PropertyType "S3Location" CustomPluginLocationProperty = S3LocationProperty
  set newValue CustomPluginLocationProperty {}
    = CustomPluginLocationProperty {s3Location = newValue, ..}