module Stratosphere.QuickSight.Dashboard.ColorsConfigurationProperty (
        module Exports, ColorsConfigurationProperty(..),
        mkColorsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.CustomColorProperty as Exports
import Stratosphere.ResourceProperties
data ColorsConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-colorsconfiguration.html>
    ColorsConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-colorsconfiguration.html#cfn-quicksight-dashboard-colorsconfiguration-customcolors>
                                 customColors :: (Prelude.Maybe [CustomColorProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkColorsConfigurationProperty :: ColorsConfigurationProperty
mkColorsConfigurationProperty
  = ColorsConfigurationProperty
      {haddock_workaround_ = (), customColors = Prelude.Nothing}
instance ToResourceProperties ColorsConfigurationProperty where
  toResourceProperties ColorsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ColorsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomColors" Prelude.<$> customColors])}
instance JSON.ToJSON ColorsConfigurationProperty where
  toJSON ColorsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomColors" Prelude.<$> customColors]))
instance Property "CustomColors" ColorsConfigurationProperty where
  type PropertyType "CustomColors" ColorsConfigurationProperty = [CustomColorProperty]
  set newValue ColorsConfigurationProperty {..}
    = ColorsConfigurationProperty
        {customColors = Prelude.pure newValue, ..}