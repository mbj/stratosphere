module Stratosphere.MediaLive.Channel.HlsCdnSettingsProperty (
        module Exports, HlsCdnSettingsProperty(..),
        mkHlsCdnSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.HlsAkamaiSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.HlsBasicPutSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.HlsMediaStoreSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.HlsS3SettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.HlsWebdavSettingsProperty as Exports
import Stratosphere.ResourceProperties
data HlsCdnSettingsProperty
  = HlsCdnSettingsProperty {hlsAkamaiSettings :: (Prelude.Maybe HlsAkamaiSettingsProperty),
                            hlsBasicPutSettings :: (Prelude.Maybe HlsBasicPutSettingsProperty),
                            hlsMediaStoreSettings :: (Prelude.Maybe HlsMediaStoreSettingsProperty),
                            hlsS3Settings :: (Prelude.Maybe HlsS3SettingsProperty),
                            hlsWebdavSettings :: (Prelude.Maybe HlsWebdavSettingsProperty)}
mkHlsCdnSettingsProperty :: HlsCdnSettingsProperty
mkHlsCdnSettingsProperty
  = HlsCdnSettingsProperty
      {hlsAkamaiSettings = Prelude.Nothing,
       hlsBasicPutSettings = Prelude.Nothing,
       hlsMediaStoreSettings = Prelude.Nothing,
       hlsS3Settings = Prelude.Nothing,
       hlsWebdavSettings = Prelude.Nothing}
instance ToResourceProperties HlsCdnSettingsProperty where
  toResourceProperties HlsCdnSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.HlsCdnSettings",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HlsAkamaiSettings" Prelude.<$> hlsAkamaiSettings,
                            (JSON..=) "HlsBasicPutSettings" Prelude.<$> hlsBasicPutSettings,
                            (JSON..=) "HlsMediaStoreSettings"
                              Prelude.<$> hlsMediaStoreSettings,
                            (JSON..=) "HlsS3Settings" Prelude.<$> hlsS3Settings,
                            (JSON..=) "HlsWebdavSettings" Prelude.<$> hlsWebdavSettings])}
instance JSON.ToJSON HlsCdnSettingsProperty where
  toJSON HlsCdnSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HlsAkamaiSettings" Prelude.<$> hlsAkamaiSettings,
               (JSON..=) "HlsBasicPutSettings" Prelude.<$> hlsBasicPutSettings,
               (JSON..=) "HlsMediaStoreSettings"
                 Prelude.<$> hlsMediaStoreSettings,
               (JSON..=) "HlsS3Settings" Prelude.<$> hlsS3Settings,
               (JSON..=) "HlsWebdavSettings" Prelude.<$> hlsWebdavSettings]))
instance Property "HlsAkamaiSettings" HlsCdnSettingsProperty where
  type PropertyType "HlsAkamaiSettings" HlsCdnSettingsProperty = HlsAkamaiSettingsProperty
  set newValue HlsCdnSettingsProperty {..}
    = HlsCdnSettingsProperty
        {hlsAkamaiSettings = Prelude.pure newValue, ..}
instance Property "HlsBasicPutSettings" HlsCdnSettingsProperty where
  type PropertyType "HlsBasicPutSettings" HlsCdnSettingsProperty = HlsBasicPutSettingsProperty
  set newValue HlsCdnSettingsProperty {..}
    = HlsCdnSettingsProperty
        {hlsBasicPutSettings = Prelude.pure newValue, ..}
instance Property "HlsMediaStoreSettings" HlsCdnSettingsProperty where
  type PropertyType "HlsMediaStoreSettings" HlsCdnSettingsProperty = HlsMediaStoreSettingsProperty
  set newValue HlsCdnSettingsProperty {..}
    = HlsCdnSettingsProperty
        {hlsMediaStoreSettings = Prelude.pure newValue, ..}
instance Property "HlsS3Settings" HlsCdnSettingsProperty where
  type PropertyType "HlsS3Settings" HlsCdnSettingsProperty = HlsS3SettingsProperty
  set newValue HlsCdnSettingsProperty {..}
    = HlsCdnSettingsProperty
        {hlsS3Settings = Prelude.pure newValue, ..}
instance Property "HlsWebdavSettings" HlsCdnSettingsProperty where
  type PropertyType "HlsWebdavSettings" HlsCdnSettingsProperty = HlsWebdavSettingsProperty
  set newValue HlsCdnSettingsProperty {..}
    = HlsCdnSettingsProperty
        {hlsWebdavSettings = Prelude.pure newValue, ..}