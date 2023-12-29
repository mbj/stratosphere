module Stratosphere.QuickSight.Analysis.GeospatialCoordinateBoundsProperty (
        GeospatialCoordinateBoundsProperty(..),
        mkGeospatialCoordinateBoundsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeospatialCoordinateBoundsProperty
  = GeospatialCoordinateBoundsProperty {east :: (Value Prelude.Double),
                                        north :: (Value Prelude.Double),
                                        south :: (Value Prelude.Double),
                                        west :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialCoordinateBoundsProperty ::
  Value Prelude.Double
  -> Value Prelude.Double
     -> Value Prelude.Double
        -> Value Prelude.Double -> GeospatialCoordinateBoundsProperty
mkGeospatialCoordinateBoundsProperty east north south west
  = GeospatialCoordinateBoundsProperty
      {east = east, north = north, south = south, west = west}
instance ToResourceProperties GeospatialCoordinateBoundsProperty where
  toResourceProperties GeospatialCoordinateBoundsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GeospatialCoordinateBounds",
         supportsTags = Prelude.False,
         properties = ["East" JSON..= east, "North" JSON..= north,
                       "South" JSON..= south, "West" JSON..= west]}
instance JSON.ToJSON GeospatialCoordinateBoundsProperty where
  toJSON GeospatialCoordinateBoundsProperty {..}
    = JSON.object
        ["East" JSON..= east, "North" JSON..= north, "South" JSON..= south,
         "West" JSON..= west]
instance Property "East" GeospatialCoordinateBoundsProperty where
  type PropertyType "East" GeospatialCoordinateBoundsProperty = Value Prelude.Double
  set newValue GeospatialCoordinateBoundsProperty {..}
    = GeospatialCoordinateBoundsProperty {east = newValue, ..}
instance Property "North" GeospatialCoordinateBoundsProperty where
  type PropertyType "North" GeospatialCoordinateBoundsProperty = Value Prelude.Double
  set newValue GeospatialCoordinateBoundsProperty {..}
    = GeospatialCoordinateBoundsProperty {north = newValue, ..}
instance Property "South" GeospatialCoordinateBoundsProperty where
  type PropertyType "South" GeospatialCoordinateBoundsProperty = Value Prelude.Double
  set newValue GeospatialCoordinateBoundsProperty {..}
    = GeospatialCoordinateBoundsProperty {south = newValue, ..}
instance Property "West" GeospatialCoordinateBoundsProperty where
  type PropertyType "West" GeospatialCoordinateBoundsProperty = Value Prelude.Double
  set newValue GeospatialCoordinateBoundsProperty {..}
    = GeospatialCoordinateBoundsProperty {west = newValue, ..}