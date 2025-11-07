module Stratosphere.QuickSight.Analysis.GeospatialPointLayerProperty (
        module Exports, GeospatialPointLayerProperty(..),
        mkGeospatialPointLayerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GeospatialPointStyleProperty as Exports
import Stratosphere.ResourceProperties
data GeospatialPointLayerProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialpointlayer.html>
    GeospatialPointLayerProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialpointlayer.html#cfn-quicksight-analysis-geospatialpointlayer-style>
                                  style :: GeospatialPointStyleProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialPointLayerProperty ::
  GeospatialPointStyleProperty -> GeospatialPointLayerProperty
mkGeospatialPointLayerProperty style
  = GeospatialPointLayerProperty
      {haddock_workaround_ = (), style = style}
instance ToResourceProperties GeospatialPointLayerProperty where
  toResourceProperties GeospatialPointLayerProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GeospatialPointLayer",
         supportsTags = Prelude.False, properties = ["Style" JSON..= style]}
instance JSON.ToJSON GeospatialPointLayerProperty where
  toJSON GeospatialPointLayerProperty {..}
    = JSON.object ["Style" JSON..= style]
instance Property "Style" GeospatialPointLayerProperty where
  type PropertyType "Style" GeospatialPointLayerProperty = GeospatialPointStyleProperty
  set newValue GeospatialPointLayerProperty {..}
    = GeospatialPointLayerProperty {style = newValue, ..}