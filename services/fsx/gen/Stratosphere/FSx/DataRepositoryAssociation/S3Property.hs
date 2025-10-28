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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-datarepositoryassociation-s3.html>
    S3Property {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-datarepositoryassociation-s3.html#cfn-fsx-datarepositoryassociation-s3-autoexportpolicy>
                autoExportPolicy :: (Prelude.Maybe AutoExportPolicyProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-datarepositoryassociation-s3.html#cfn-fsx-datarepositoryassociation-s3-autoimportpolicy>
                autoImportPolicy :: (Prelude.Maybe AutoImportPolicyProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3Property :: S3Property
mkS3Property
  = S3Property
      {haddock_workaround_ = (), autoExportPolicy = Prelude.Nothing,
       autoImportPolicy = Prelude.Nothing}
instance ToResourceProperties S3Property where
  toResourceProperties S3Property {..}
    = ResourceProperties
        {awsType = "AWS::FSx::DataRepositoryAssociation.S3",
         supportsTags = Prelude.False,
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