module Stratosphere.CustomerProfiles.Domain.ExportingConfigProperty (
        module Exports, ExportingConfigProperty(..),
        mkExportingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.Domain.S3ExportingConfigProperty as Exports
import Stratosphere.ResourceProperties
data ExportingConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-exportingconfig.html>
    ExportingConfigProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-exportingconfig.html#cfn-customerprofiles-domain-exportingconfig-s3exporting>
                             s3Exporting :: (Prelude.Maybe S3ExportingConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExportingConfigProperty :: ExportingConfigProperty
mkExportingConfigProperty
  = ExportingConfigProperty
      {haddock_workaround_ = (), s3Exporting = Prelude.Nothing}
instance ToResourceProperties ExportingConfigProperty where
  toResourceProperties ExportingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Domain.ExportingConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "S3Exporting" Prelude.<$> s3Exporting])}
instance JSON.ToJSON ExportingConfigProperty where
  toJSON ExportingConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "S3Exporting" Prelude.<$> s3Exporting]))
instance Property "S3Exporting" ExportingConfigProperty where
  type PropertyType "S3Exporting" ExportingConfigProperty = S3ExportingConfigProperty
  set newValue ExportingConfigProperty {..}
    = ExportingConfigProperty {s3Exporting = Prelude.pure newValue, ..}