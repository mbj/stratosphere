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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-livesource.html>
    LiveSource {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-livesource.html#cfn-mediatailor-livesource-httppackageconfigurations>
                httpPackageConfigurations :: [HttpPackageConfigurationProperty],
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-livesource.html#cfn-mediatailor-livesource-livesourcename>
                liveSourceName :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-livesource.html#cfn-mediatailor-livesource-sourcelocationname>
                sourceLocationName :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-livesource.html#cfn-mediatailor-livesource-tags>
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
      {haddock_workaround_ = (),
       httpPackageConfigurations = httpPackageConfigurations,
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