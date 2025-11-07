module Stratosphere.QuickSight.Dashboard.PanelConfigurationProperty (
        module Exports, PanelConfigurationProperty(..),
        mkPanelConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.PanelTitleOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PanelConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-panelconfiguration.html>
    PanelConfigurationProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-panelconfiguration.html#cfn-quicksight-dashboard-panelconfiguration-backgroundcolor>
                                backgroundColor :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-panelconfiguration.html#cfn-quicksight-dashboard-panelconfiguration-backgroundvisibility>
                                backgroundVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-panelconfiguration.html#cfn-quicksight-dashboard-panelconfiguration-bordercolor>
                                borderColor :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-panelconfiguration.html#cfn-quicksight-dashboard-panelconfiguration-borderstyle>
                                borderStyle :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-panelconfiguration.html#cfn-quicksight-dashboard-panelconfiguration-borderthickness>
                                borderThickness :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-panelconfiguration.html#cfn-quicksight-dashboard-panelconfiguration-bordervisibility>
                                borderVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-panelconfiguration.html#cfn-quicksight-dashboard-panelconfiguration-gutterspacing>
                                gutterSpacing :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-panelconfiguration.html#cfn-quicksight-dashboard-panelconfiguration-guttervisibility>
                                gutterVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-panelconfiguration.html#cfn-quicksight-dashboard-panelconfiguration-title>
                                title :: (Prelude.Maybe PanelTitleOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPanelConfigurationProperty :: PanelConfigurationProperty
mkPanelConfigurationProperty
  = PanelConfigurationProperty
      {haddock_workaround_ = (), backgroundColor = Prelude.Nothing,
       backgroundVisibility = Prelude.Nothing,
       borderColor = Prelude.Nothing, borderStyle = Prelude.Nothing,
       borderThickness = Prelude.Nothing,
       borderVisibility = Prelude.Nothing,
       gutterSpacing = Prelude.Nothing,
       gutterVisibility = Prelude.Nothing, title = Prelude.Nothing}
instance ToResourceProperties PanelConfigurationProperty where
  toResourceProperties PanelConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.PanelConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BackgroundColor" Prelude.<$> backgroundColor,
                            (JSON..=) "BackgroundVisibility" Prelude.<$> backgroundVisibility,
                            (JSON..=) "BorderColor" Prelude.<$> borderColor,
                            (JSON..=) "BorderStyle" Prelude.<$> borderStyle,
                            (JSON..=) "BorderThickness" Prelude.<$> borderThickness,
                            (JSON..=) "BorderVisibility" Prelude.<$> borderVisibility,
                            (JSON..=) "GutterSpacing" Prelude.<$> gutterSpacing,
                            (JSON..=) "GutterVisibility" Prelude.<$> gutterVisibility,
                            (JSON..=) "Title" Prelude.<$> title])}
instance JSON.ToJSON PanelConfigurationProperty where
  toJSON PanelConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BackgroundColor" Prelude.<$> backgroundColor,
               (JSON..=) "BackgroundVisibility" Prelude.<$> backgroundVisibility,
               (JSON..=) "BorderColor" Prelude.<$> borderColor,
               (JSON..=) "BorderStyle" Prelude.<$> borderStyle,
               (JSON..=) "BorderThickness" Prelude.<$> borderThickness,
               (JSON..=) "BorderVisibility" Prelude.<$> borderVisibility,
               (JSON..=) "GutterSpacing" Prelude.<$> gutterSpacing,
               (JSON..=) "GutterVisibility" Prelude.<$> gutterVisibility,
               (JSON..=) "Title" Prelude.<$> title]))
instance Property "BackgroundColor" PanelConfigurationProperty where
  type PropertyType "BackgroundColor" PanelConfigurationProperty = Value Prelude.Text
  set newValue PanelConfigurationProperty {..}
    = PanelConfigurationProperty
        {backgroundColor = Prelude.pure newValue, ..}
instance Property "BackgroundVisibility" PanelConfigurationProperty where
  type PropertyType "BackgroundVisibility" PanelConfigurationProperty = Value Prelude.Text
  set newValue PanelConfigurationProperty {..}
    = PanelConfigurationProperty
        {backgroundVisibility = Prelude.pure newValue, ..}
instance Property "BorderColor" PanelConfigurationProperty where
  type PropertyType "BorderColor" PanelConfigurationProperty = Value Prelude.Text
  set newValue PanelConfigurationProperty {..}
    = PanelConfigurationProperty
        {borderColor = Prelude.pure newValue, ..}
instance Property "BorderStyle" PanelConfigurationProperty where
  type PropertyType "BorderStyle" PanelConfigurationProperty = Value Prelude.Text
  set newValue PanelConfigurationProperty {..}
    = PanelConfigurationProperty
        {borderStyle = Prelude.pure newValue, ..}
instance Property "BorderThickness" PanelConfigurationProperty where
  type PropertyType "BorderThickness" PanelConfigurationProperty = Value Prelude.Text
  set newValue PanelConfigurationProperty {..}
    = PanelConfigurationProperty
        {borderThickness = Prelude.pure newValue, ..}
instance Property "BorderVisibility" PanelConfigurationProperty where
  type PropertyType "BorderVisibility" PanelConfigurationProperty = Value Prelude.Text
  set newValue PanelConfigurationProperty {..}
    = PanelConfigurationProperty
        {borderVisibility = Prelude.pure newValue, ..}
instance Property "GutterSpacing" PanelConfigurationProperty where
  type PropertyType "GutterSpacing" PanelConfigurationProperty = Value Prelude.Text
  set newValue PanelConfigurationProperty {..}
    = PanelConfigurationProperty
        {gutterSpacing = Prelude.pure newValue, ..}
instance Property "GutterVisibility" PanelConfigurationProperty where
  type PropertyType "GutterVisibility" PanelConfigurationProperty = Value Prelude.Text
  set newValue PanelConfigurationProperty {..}
    = PanelConfigurationProperty
        {gutterVisibility = Prelude.pure newValue, ..}
instance Property "Title" PanelConfigurationProperty where
  type PropertyType "Title" PanelConfigurationProperty = PanelTitleOptionsProperty
  set newValue PanelConfigurationProperty {..}
    = PanelConfigurationProperty {title = Prelude.pure newValue, ..}