module Stratosphere.FSx.DataRepositoryAssociation.S3Property (
        module Exports, S3Property(..), mkS3Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FSx.DataRepositoryAssociation.AutoExportPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.FSx.DataRepositoryAssociation.AutoImportPolicyProperty as Exports
import Stratosphere.ResourceProperties
data S3Property
  = S3Property {autoExportPolicy :: (Prelude.Maybe AutoExportPolicyProperty),
                autoImportPolicy :: (Prelude.Maybe AutoImportPolicyProperty)}
mkS3Property :: S3Property
mkS3Property
  = S3Property
      {autoExportPolicy = Prelude.Nothing,
       autoImportPolicy = Prelude.Nothing}
instance ToResourceProperties S3Property where
  toResourceProperties S3Property {..}
    = ResourceProperties
        {awsType = "AWS::FSx::DataRepositoryAssociation.S3",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutoExportPolicy" Prelude.<$> autoExportPolicy,
                            (JSON..=) "AutoImportPolicy" Prelude.<$> autoImportPolicy])}
instance JSON.ToJSON S3Property where
  toJSON S3Property {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutoExportPolicy" Prelude.<$> autoExportPolicy,
               (JSON..=) "AutoImportPolicy" Prelude.<$> autoImportPolicy]))
instance Property "AutoExportPolicy" S3Property where
  type PropertyType "AutoExportPolicy" S3Property = AutoExportPolicyProperty
  set newValue S3Property {..}
    = S3Property {autoExportPolicy = Prelude.pure newValue, ..}
instance Property "AutoImportPolicy" S3Property where
  type PropertyType "AutoImportPolicy" S3Property = AutoImportPolicyProperty
  set newValue S3Property {..}
    = S3Property {autoImportPolicy = Prelude.pure newValue, ..}