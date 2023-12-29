module Stratosphere.Timestream.Table.MagneticStoreRejectedDataLocationProperty (
        module Exports, MagneticStoreRejectedDataLocationProperty(..),
        mkMagneticStoreRejectedDataLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Timestream.Table.S3ConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data MagneticStoreRejectedDataLocationProperty
  = MagneticStoreRejectedDataLocationProperty {s3Configuration :: (Prelude.Maybe S3ConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMagneticStoreRejectedDataLocationProperty ::
  MagneticStoreRejectedDataLocationProperty
mkMagneticStoreRejectedDataLocationProperty
  = MagneticStoreRejectedDataLocationProperty
      {s3Configuration = Prelude.Nothing}
instance ToResourceProperties MagneticStoreRejectedDataLocationProperty where
  toResourceProperties MagneticStoreRejectedDataLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Timestream::Table.MagneticStoreRejectedDataLocation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "S3Configuration" Prelude.<$> s3Configuration])}
instance JSON.ToJSON MagneticStoreRejectedDataLocationProperty where
  toJSON MagneticStoreRejectedDataLocationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "S3Configuration" Prelude.<$> s3Configuration]))
instance Property "S3Configuration" MagneticStoreRejectedDataLocationProperty where
  type PropertyType "S3Configuration" MagneticStoreRejectedDataLocationProperty = S3ConfigurationProperty
  set newValue MagneticStoreRejectedDataLocationProperty {}
    = MagneticStoreRejectedDataLocationProperty
        {s3Configuration = Prelude.pure newValue, ..}