module Stratosphere.MediaTailor.LiveSource (
        module Exports, LiveSource(..), mkLiveSource
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaTailor.LiveSource.HttpPackageConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LiveSource
  = LiveSource {httpPackageConfigurations :: [HttpPackageConfigurationProperty],
                liveSourceName :: (Value Prelude.Text),
                sourceLocationName :: (Value Prelude.Text),
                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLiveSource ::
  [HttpPackageConfigurationProperty]
  -> Value Prelude.Text -> Value Prelude.Text -> LiveSource
mkLiveSource
  httpPackageConfigurations
  liveSourceName
  sourceLocationName
  = LiveSource
      {httpPackageConfigurations = httpPackageConfigurations,
       liveSourceName = liveSourceName,
       sourceLocationName = sourceLocationName, tags = Prelude.Nothing}
instance ToResourceProperties LiveSource where
  toResourceProperties LiveSource {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::LiveSource",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["HttpPackageConfigurations" JSON..= httpPackageConfigurations,
                            "LiveSourceName" JSON..= liveSourceName,
                            "SourceLocationName" JSON..= sourceLocationName]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON LiveSource where
  toJSON LiveSource {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["HttpPackageConfigurations" JSON..= httpPackageConfigurations,
               "LiveSourceName" JSON..= liveSourceName,
               "SourceLocationName" JSON..= sourceLocationName]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "HttpPackageConfigurations" LiveSource where
  type PropertyType "HttpPackageConfigurations" LiveSource = [HttpPackageConfigurationProperty]
  set newValue LiveSource {..}
    = LiveSource {httpPackageConfigurations = newValue, ..}
instance Property "LiveSourceName" LiveSource where
  type PropertyType "LiveSourceName" LiveSource = Value Prelude.Text
  set newValue LiveSource {..}
    = LiveSource {liveSourceName = newValue, ..}
instance Property "SourceLocationName" LiveSource where
  type PropertyType "SourceLocationName" LiveSource = Value Prelude.Text
  set newValue LiveSource {..}
    = LiveSource {sourceLocationName = newValue, ..}
instance Property "Tags" LiveSource where
  type PropertyType "Tags" LiveSource = [Tag]
  set newValue LiveSource {..}
    = LiveSource {tags = Prelude.pure newValue, ..}