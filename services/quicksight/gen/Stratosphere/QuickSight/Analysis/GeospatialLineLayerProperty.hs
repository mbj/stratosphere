module Stratosphere.QuickSight.Analysis.GeospatialLineLayerProperty (
        module Exports, GeospatialLineLayerProperty(..),
        mkGeospatialLineLayerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GeospatialLineStyleProperty as Exports
import Stratosphere.ResourceProperties
data GeospatialLineLayerProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallinelayer.html>
    GeospatialLineLayerProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallinelayer.html#cfn-quicksight-analysis-geospatiallinelayer-style>
                                 style :: GeospatialLineStyleProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialLineLayerProperty ::
  GeospatialLineStyleProperty -> GeospatialLineLayerProperty
mkGeospatialLineLayerProperty style
  = GeospatialLineLayerProperty
      {haddock_workaround_ = (), style = style}
instance ToResourceProperties GeospatialLineLayerProperty where
  toResourceProperties GeospatialLineLayerProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GeospatialLineLayer",
         supportsTags = Prelude.False, properties = ["Style" JSON..= style]}
instance JSON.ToJSON GeospatialLineLayerProperty where
  toJSON GeospatialLineLayerProperty {..}
    = JSON.object ["Style" JSON..= style]
instance Property "Style" GeospatialLineLayerProperty where
  type PropertyType "Style" GeospatialLineLayerProperty = GeospatialLineStyleProperty
  set newValue GeospatialLineLayerProperty {..}
    = GeospatialLineLayerProperty {style = newValue, ..}