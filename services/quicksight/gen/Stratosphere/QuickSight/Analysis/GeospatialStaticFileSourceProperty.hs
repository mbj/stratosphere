module Stratosphere.QuickSight.Analysis.GeospatialStaticFileSourceProperty (
        GeospatialStaticFileSourceProperty(..),
        mkGeospatialStaticFileSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeospatialStaticFileSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialstaticfilesource.html>
    GeospatialStaticFileSourceProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialstaticfilesource.html#cfn-quicksight-analysis-geospatialstaticfilesource-staticfileid>
                                        staticFileId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialStaticFileSourceProperty ::
  Value Prelude.Text -> GeospatialStaticFileSourceProperty
mkGeospatialStaticFileSourceProperty staticFileId
  = GeospatialStaticFileSourceProperty
      {haddock_workaround_ = (), staticFileId = staticFileId}
instance ToResourceProperties GeospatialStaticFileSourceProperty where
  toResourceProperties GeospatialStaticFileSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GeospatialStaticFileSource",
         supportsTags = Prelude.False,
         properties = ["StaticFileId" JSON..= staticFileId]}
instance JSON.ToJSON GeospatialStaticFileSourceProperty where
  toJSON GeospatialStaticFileSourceProperty {..}
    = JSON.object ["StaticFileId" JSON..= staticFileId]
instance Property "StaticFileId" GeospatialStaticFileSourceProperty where
  type PropertyType "StaticFileId" GeospatialStaticFileSourceProperty = Value Prelude.Text
  set newValue GeospatialStaticFileSourceProperty {..}
    = GeospatialStaticFileSourceProperty {staticFileId = newValue, ..}