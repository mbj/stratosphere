module Stratosphere.MediaTailor.VodSource (
        module Exports, VodSource(..), mkVodSource
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaTailor.VodSource.HttpPackageConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data VodSource
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-vodsource.html>
    VodSource {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-vodsource.html#cfn-mediatailor-vodsource-httppackageconfigurations>
               httpPackageConfigurations :: [HttpPackageConfigurationProperty],
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-vodsource.html#cfn-mediatailor-vodsource-sourcelocationname>
               sourceLocationName :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-vodsource.html#cfn-mediatailor-vodsource-tags>
               tags :: (Prelude.Maybe [Tag]),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-vodsource.html#cfn-mediatailor-vodsource-vodsourcename>
               vodSourceName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVodSource ::
  [HttpPackageConfigurationProperty]
  -> Value Prelude.Text -> Value Prelude.Text -> VodSource
mkVodSource
  httpPackageConfigurations
  sourceLocationName
  vodSourceName
  = VodSource
      {haddock_workaround_ = (),
       httpPackageConfigurations = httpPackageConfigurations,
       sourceLocationName = sourceLocationName,
       vodSourceName = vodSourceName, tags = Prelude.Nothing}
instance ToResourceProperties VodSource where
  toResourceProperties VodSource {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::VodSource",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["HttpPackageConfigurations" JSON..= httpPackageConfigurations,
                            "SourceLocationName" JSON..= sourceLocationName,
                            "VodSourceName" JSON..= vodSourceName]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON VodSource where
  toJSON VodSource {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["HttpPackageConfigurations" JSON..= httpPackageConfigurations,
               "SourceLocationName" JSON..= sourceLocationName,
               "VodSourceName" JSON..= vodSourceName]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "HttpPackageConfigurations" VodSource where
  type PropertyType "HttpPackageConfigurations" VodSource = [HttpPackageConfigurationProperty]
  set newValue VodSource {..}
    = VodSource {httpPackageConfigurations = newValue, ..}
instance Property "SourceLocationName" VodSource where
  type PropertyType "SourceLocationName" VodSource = Value Prelude.Text
  set newValue VodSource {..}
    = VodSource {sourceLocationName = newValue, ..}
instance Property "Tags" VodSource where
  type PropertyType "Tags" VodSource = [Tag]
  set newValue VodSource {..}
    = VodSource {tags = Prelude.pure newValue, ..}
instance Property "VodSourceName" VodSource where
  type PropertyType "VodSourceName" VodSource = Value Prelude.Text
  set newValue VodSource {..}
    = VodSource {vodSourceName = newValue, ..}