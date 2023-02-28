module Stratosphere.NimbleStudio.Studio (
        module Exports, Studio(..), mkStudio
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NimbleStudio.Studio.StudioEncryptionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Studio
  = Studio {adminRoleArn :: (Value Prelude.Text),
            displayName :: (Value Prelude.Text),
            studioEncryptionConfiguration :: (Prelude.Maybe StudioEncryptionConfigurationProperty),
            studioName :: (Value Prelude.Text),
            tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
            userRoleArn :: (Value Prelude.Text)}
mkStudio ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> Studio
mkStudio adminRoleArn displayName studioName userRoleArn
  = Studio
      {adminRoleArn = adminRoleArn, displayName = displayName,
       studioName = studioName, userRoleArn = userRoleArn,
       studioEncryptionConfiguration = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Studio where
  toResourceProperties Studio {..}
    = ResourceProperties
        {awsType = "AWS::NimbleStudio::Studio",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AdminRoleArn" JSON..= adminRoleArn,
                            "DisplayName" JSON..= displayName, "StudioName" JSON..= studioName,
                            "UserRoleArn" JSON..= userRoleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "StudioEncryptionConfiguration"
                                 Prelude.<$> studioEncryptionConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Studio where
  toJSON Studio {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AdminRoleArn" JSON..= adminRoleArn,
               "DisplayName" JSON..= displayName, "StudioName" JSON..= studioName,
               "UserRoleArn" JSON..= userRoleArn]
              (Prelude.catMaybes
                 [(JSON..=) "StudioEncryptionConfiguration"
                    Prelude.<$> studioEncryptionConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AdminRoleArn" Studio where
  type PropertyType "AdminRoleArn" Studio = Value Prelude.Text
  set newValue Studio {..} = Studio {adminRoleArn = newValue, ..}
instance Property "DisplayName" Studio where
  type PropertyType "DisplayName" Studio = Value Prelude.Text
  set newValue Studio {..} = Studio {displayName = newValue, ..}
instance Property "StudioEncryptionConfiguration" Studio where
  type PropertyType "StudioEncryptionConfiguration" Studio = StudioEncryptionConfigurationProperty
  set newValue Studio {..}
    = Studio
        {studioEncryptionConfiguration = Prelude.pure newValue, ..}
instance Property "StudioName" Studio where
  type PropertyType "StudioName" Studio = Value Prelude.Text
  set newValue Studio {..} = Studio {studioName = newValue, ..}
instance Property "Tags" Studio where
  type PropertyType "Tags" Studio = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Studio {..}
    = Studio {tags = Prelude.pure newValue, ..}
instance Property "UserRoleArn" Studio where
  type PropertyType "UserRoleArn" Studio = Value Prelude.Text
  set newValue Studio {..} = Studio {userRoleArn = newValue, ..}