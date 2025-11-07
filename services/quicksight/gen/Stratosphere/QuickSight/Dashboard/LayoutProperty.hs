module Stratosphere.QuickSight.Dashboard.LayoutProperty (
        module Exports, LayoutProperty(..), mkLayoutProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.LayoutConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data LayoutProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-layout.html>
    LayoutProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-layout.html#cfn-quicksight-dashboard-layout-configuration>
                    configuration :: LayoutConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLayoutProperty :: LayoutConfigurationProperty -> LayoutProperty
mkLayoutProperty configuration
  = LayoutProperty
      {haddock_workaround_ = (), configuration = configuration}
instance ToResourceProperties LayoutProperty where
  toResourceProperties LayoutProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.Layout",
         supportsTags = Prelude.False,
         properties = ["Configuration" JSON..= configuration]}
instance JSON.ToJSON LayoutProperty where
  toJSON LayoutProperty {..}
    = JSON.object ["Configuration" JSON..= configuration]
instance Property "Configuration" LayoutProperty where
  type PropertyType "Configuration" LayoutProperty = LayoutConfigurationProperty
  set newValue LayoutProperty {..}
    = LayoutProperty {configuration = newValue, ..}