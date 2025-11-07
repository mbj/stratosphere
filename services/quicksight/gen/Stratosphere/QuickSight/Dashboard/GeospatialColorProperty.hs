module Stratosphere.QuickSight.Dashboard.GeospatialColorProperty (
        module Exports, GeospatialColorProperty(..),
        mkGeospatialColorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.GeospatialCategoricalColorProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.GeospatialGradientColorProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.GeospatialSolidColorProperty as Exports
import Stratosphere.ResourceProperties
data GeospatialColorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialcolor.html>
    GeospatialColorProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialcolor.html#cfn-quicksight-dashboard-geospatialcolor-categorical>
                             categorical :: (Prelude.Maybe GeospatialCategoricalColorProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialcolor.html#cfn-quicksight-dashboard-geospatialcolor-gradient>
                             gradient :: (Prelude.Maybe GeospatialGradientColorProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialcolor.html#cfn-quicksight-dashboard-geospatialcolor-solid>
                             solid :: (Prelude.Maybe GeospatialSolidColorProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialColorProperty :: GeospatialColorProperty
mkGeospatialColorProperty
  = GeospatialColorProperty
      {haddock_workaround_ = (), categorical = Prelude.Nothing,
       gradient = Prelude.Nothing, solid = Prelude.Nothing}
instance ToResourceProperties GeospatialColorProperty where
  toResourceProperties GeospatialColorProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.GeospatialColor",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Categorical" Prelude.<$> categorical,
                            (JSON..=) "Gradient" Prelude.<$> gradient,
                            (JSON..=) "Solid" Prelude.<$> solid])}
instance JSON.ToJSON GeospatialColorProperty where
  toJSON GeospatialColorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Categorical" Prelude.<$> categorical,
               (JSON..=) "Gradient" Prelude.<$> gradient,
               (JSON..=) "Solid" Prelude.<$> solid]))
instance Property "Categorical" GeospatialColorProperty where
  type PropertyType "Categorical" GeospatialColorProperty = GeospatialCategoricalColorProperty
  set newValue GeospatialColorProperty {..}
    = GeospatialColorProperty {categorical = Prelude.pure newValue, ..}
instance Property "Gradient" GeospatialColorProperty where
  type PropertyType "Gradient" GeospatialColorProperty = GeospatialGradientColorProperty
  set newValue GeospatialColorProperty {..}
    = GeospatialColorProperty {gradient = Prelude.pure newValue, ..}
instance Property "Solid" GeospatialColorProperty where
  type PropertyType "Solid" GeospatialColorProperty = GeospatialSolidColorProperty
  set newValue GeospatialColorProperty {..}
    = GeospatialColorProperty {solid = Prelude.pure newValue, ..}