module Stratosphere.QuickSight.Dashboard.SpatialStaticFileProperty (
        module Exports, SpatialStaticFileProperty(..),
        mkSpatialStaticFileProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.StaticFileSourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SpatialStaticFileProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-spatialstaticfile.html>
    SpatialStaticFileProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-spatialstaticfile.html#cfn-quicksight-dashboard-spatialstaticfile-source>
                               source :: (Prelude.Maybe StaticFileSourceProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-spatialstaticfile.html#cfn-quicksight-dashboard-spatialstaticfile-staticfileid>
                               staticFileId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpatialStaticFileProperty ::
  Value Prelude.Text -> SpatialStaticFileProperty
mkSpatialStaticFileProperty staticFileId
  = SpatialStaticFileProperty
      {haddock_workaround_ = (), staticFileId = staticFileId,
       source = Prelude.Nothing}
instance ToResourceProperties SpatialStaticFileProperty where
  toResourceProperties SpatialStaticFileProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.SpatialStaticFile",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StaticFileId" JSON..= staticFileId]
                           (Prelude.catMaybes [(JSON..=) "Source" Prelude.<$> source]))}
instance JSON.ToJSON SpatialStaticFileProperty where
  toJSON SpatialStaticFileProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StaticFileId" JSON..= staticFileId]
              (Prelude.catMaybes [(JSON..=) "Source" Prelude.<$> source])))
instance Property "Source" SpatialStaticFileProperty where
  type PropertyType "Source" SpatialStaticFileProperty = StaticFileSourceProperty
  set newValue SpatialStaticFileProperty {..}
    = SpatialStaticFileProperty {source = Prelude.pure newValue, ..}
instance Property "StaticFileId" SpatialStaticFileProperty where
  type PropertyType "StaticFileId" SpatialStaticFileProperty = Value Prelude.Text
  set newValue SpatialStaticFileProperty {..}
    = SpatialStaticFileProperty {staticFileId = newValue, ..}