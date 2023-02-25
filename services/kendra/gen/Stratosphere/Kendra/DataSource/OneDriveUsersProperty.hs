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
  = OneDriveUsersProperty {oneDriveUserList :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                           oneDriveUserS3Path :: (Prelude.Maybe S3PathProperty)}
mkOneDriveUsersProperty :: OneDriveUsersProperty
mkOneDriveUsersProperty
  = OneDriveUsersProperty
      {oneDriveUserList = Prelude.Nothing,
       oneDriveUserS3Path = Prelude.Nothing}
instance ToResourceProperties OneDriveUsersProperty where
  toResourceProperties OneDriveUsersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.OneDriveUsers",
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
  type PropertyType "OneDriveUserList" OneDriveUsersProperty = ValueList (Value Prelude.Text)
  set newValue OneDriveUsersProperty {..}
    = OneDriveUsersProperty
        {oneDriveUserList = Prelude.pure newValue, ..}
instance Property "OneDriveUserS3Path" OneDriveUsersProperty where
  type PropertyType "OneDriveUserS3Path" OneDriveUsersProperty = S3PathProperty
  set newValue OneDriveUsersProperty {..}
    = OneDriveUsersProperty
        {oneDriveUserS3Path = Prelude.pure newValue, ..}