module Stratosphere.QuickSight.Dashboard.CascadingControlConfigurationProperty (
        module Exports, CascadingControlConfigurationProperty(..),
        mkCascadingControlConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.CascadingControlSourceProperty as Exports
import Stratosphere.ResourceProperties
data CascadingControlConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-cascadingcontrolconfiguration.html>
    CascadingControlConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-cascadingcontrolconfiguration.html#cfn-quicksight-dashboard-cascadingcontrolconfiguration-sourcecontrols>
                                           sourceControls :: (Prelude.Maybe [CascadingControlSourceProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCascadingControlConfigurationProperty ::
  CascadingControlConfigurationProperty
mkCascadingControlConfigurationProperty
  = CascadingControlConfigurationProperty
      {haddock_workaround_ = (), sourceControls = Prelude.Nothing}
instance ToResourceProperties CascadingControlConfigurationProperty where
  toResourceProperties CascadingControlConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.CascadingControlConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SourceControls" Prelude.<$> sourceControls])}
instance JSON.ToJSON CascadingControlConfigurationProperty where
  toJSON CascadingControlConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SourceControls" Prelude.<$> sourceControls]))
instance Property "SourceControls" CascadingControlConfigurationProperty where
  type PropertyType "SourceControls" CascadingControlConfigurationProperty = [CascadingControlSourceProperty]
  set newValue CascadingControlConfigurationProperty {..}
    = CascadingControlConfigurationProperty
        {sourceControls = Prelude.pure newValue, ..}