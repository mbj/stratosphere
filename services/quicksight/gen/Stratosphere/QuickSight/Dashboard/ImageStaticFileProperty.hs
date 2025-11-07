module Stratosphere.QuickSight.Dashboard.ImageStaticFileProperty (
        module Exports, ImageStaticFileProperty(..),
        mkImageStaticFileProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.StaticFileSourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImageStaticFileProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-imagestaticfile.html>
    ImageStaticFileProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-imagestaticfile.html#cfn-quicksight-dashboard-imagestaticfile-source>
                             source :: (Prelude.Maybe StaticFileSourceProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-imagestaticfile.html#cfn-quicksight-dashboard-imagestaticfile-staticfileid>
                             staticFileId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImageStaticFileProperty ::
  Value Prelude.Text -> ImageStaticFileProperty
mkImageStaticFileProperty staticFileId
  = ImageStaticFileProperty
      {haddock_workaround_ = (), staticFileId = staticFileId,
       source = Prelude.Nothing}
instance ToResourceProperties ImageStaticFileProperty where
  toResourceProperties ImageStaticFileProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ImageStaticFile",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StaticFileId" JSON..= staticFileId]
                           (Prelude.catMaybes [(JSON..=) "Source" Prelude.<$> source]))}
instance JSON.ToJSON ImageStaticFileProperty where
  toJSON ImageStaticFileProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StaticFileId" JSON..= staticFileId]
              (Prelude.catMaybes [(JSON..=) "Source" Prelude.<$> source])))
instance Property "Source" ImageStaticFileProperty where
  type PropertyType "Source" ImageStaticFileProperty = StaticFileSourceProperty
  set newValue ImageStaticFileProperty {..}
    = ImageStaticFileProperty {source = Prelude.pure newValue, ..}
instance Property "StaticFileId" ImageStaticFileProperty where
  type PropertyType "StaticFileId" ImageStaticFileProperty = Value Prelude.Text
  set newValue ImageStaticFileProperty {..}
    = ImageStaticFileProperty {staticFileId = newValue, ..}