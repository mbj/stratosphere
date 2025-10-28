module Stratosphere.Kendra.DataSource.OneDriveUsersProperty (
        module Exports, OneDriveUsersProperty(..), mkOneDriveUsersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.S3PathProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OneDriveUsersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-onedriveusers.html>
    OneDriveUsersProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-onedriveusers.html#cfn-kendra-datasource-onedriveusers-onedriveuserlist>
                           oneDriveUserList :: (Prelude.Maybe (ValueList Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-onedriveusers.html#cfn-kendra-datasource-onedriveusers-onedriveusers3path>
                           oneDriveUserS3Path :: (Prelude.Maybe S3PathProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOneDriveUsersProperty :: OneDriveUsersProperty
mkOneDriveUsersProperty
  = OneDriveUsersProperty
      {haddock_workaround_ = (), oneDriveUserList = Prelude.Nothing,
       oneDriveUserS3Path = Prelude.Nothing}
instance ToResourceProperties OneDriveUsersProperty where
  toResourceProperties OneDriveUsersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.OneDriveUsers",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OneDriveUserList" Prelude.<$> oneDriveUserList,
                            (JSON..=) "OneDriveUserS3Path" Prelude.<$> oneDriveUserS3Path])}
instance JSON.ToJSON OneDriveUsersProperty where
  toJSON OneDriveUsersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OneDriveUserList" Prelude.<$> oneDriveUserList,
               (JSON..=) "OneDriveUserS3Path" Prelude.<$> oneDriveUserS3Path]))
instance Property "OneDriveUserList" OneDriveUsersProperty where
  type PropertyType "OneDriveUserList" OneDriveUsersProperty = ValueList Prelude.Text
  set newValue OneDriveUsersProperty {..}
    = OneDriveUsersProperty
        {oneDriveUserList = Prelude.pure newValue, ..}
instance Property "OneDriveUserS3Path" OneDriveUsersProperty where
  type PropertyType "OneDriveUserS3Path" OneDriveUsersProperty = S3PathProperty
  set newValue OneDriveUsersProperty {..}
    = OneDriveUsersProperty
        {oneDriveUserS3Path = Prelude.pure newValue, ..}