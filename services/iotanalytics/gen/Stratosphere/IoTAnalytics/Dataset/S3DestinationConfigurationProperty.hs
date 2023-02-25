module Stratosphere.IoTAnalytics.Dataset.S3DestinationConfigurationProperty (
        module Exports, S3DestinationConfigurationProperty(..),
        mkS3DestinationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Dataset.GlueConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3DestinationConfigurationProperty
  = S3DestinationConfigurationProperty {bucket :: (Value Prelude.Text),
                                        glueConfiguration :: (Prelude.Maybe GlueConfigurationProperty),
                                        key :: (Value Prelude.Text),
                                        roleArn :: (Value Prelude.Text)}
mkS3DestinationConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> S3DestinationConfigurationProperty
mkS3DestinationConfigurationProperty bucket key roleArn
  = S3DestinationConfigurationProperty
      {bucket = bucket, key = key, roleArn = roleArn,
       glueConfiguration = Prelude.Nothing}
instance ToResourceProperties S3DestinationConfigurationProperty where
  toResourceProperties S3DestinationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Dataset.S3DestinationConfiguration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Bucket" JSON..= bucket, "Key" JSON..= key,
                            "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "GlueConfiguration" Prelude.<$> glueConfiguration]))}
instance JSON.ToJSON S3DestinationConfigurationProperty where
  toJSON S3DestinationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Bucket" JSON..= bucket, "Key" JSON..= key,
               "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "GlueConfiguration" Prelude.<$> glueConfiguration])))
instance Property "Bucket" S3DestinationConfigurationProperty where
  type PropertyType "Bucket" S3DestinationConfigurationProperty = Value Prelude.Text
  set newValue S3DestinationConfigurationProperty {..}
    = S3DestinationConfigurationProperty {bucket = newValue, ..}
instance Property "GlueConfiguration" S3DestinationConfigurationProperty where
  type PropertyType "GlueConfiguration" S3DestinationConfigurationProperty = GlueConfigurationProperty
  set newValue S3DestinationConfigurationProperty {..}
    = S3DestinationConfigurationProperty
        {glueConfiguration = Prelude.pure newValue, ..}
instance Property "Key" S3DestinationConfigurationProperty where
  type PropertyType "Key" S3DestinationConfigurationProperty = Value Prelude.Text
  set newValue S3DestinationConfigurationProperty {..}
    = S3DestinationConfigurationProperty {key = newValue, ..}
instance Property "RoleArn" S3DestinationConfigurationProperty where
  type PropertyType "RoleArn" S3DestinationConfigurationProperty = Value Prelude.Text
  set newValue S3DestinationConfigurationProperty {..}
    = S3DestinationConfigurationProperty {roleArn = newValue, ..}