module Stratosphere.QuickSight.Theme.UIColorPaletteProperty (
        UIColorPaletteProperty(..), mkUIColorPaletteProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UIColorPaletteProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-uicolorpalette.html>
    UIColorPaletteProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-uicolorpalette.html#cfn-quicksight-theme-uicolorpalette-accent>
                            accent :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-uicolorpalette.html#cfn-quicksight-theme-uicolorpalette-accentforeground>
                            accentForeground :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-uicolorpalette.html#cfn-quicksight-theme-uicolorpalette-danger>
                            danger :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-uicolorpalette.html#cfn-quicksight-theme-uicolorpalette-dangerforeground>
                            dangerForeground :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-uicolorpalette.html#cfn-quicksight-theme-uicolorpalette-dimension>
                            dimension :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-uicolorpalette.html#cfn-quicksight-theme-uicolorpalette-dimensionforeground>
                            dimensionForeground :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-uicolorpalette.html#cfn-quicksight-theme-uicolorpalette-measure>
                            measure :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-uicolorpalette.html#cfn-quicksight-theme-uicolorpalette-measureforeground>
                            measureForeground :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-uicolorpalette.html#cfn-quicksight-theme-uicolorpalette-primarybackground>
                            primaryBackground :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-uicolorpalette.html#cfn-quicksight-theme-uicolorpalette-primaryforeground>
                            primaryForeground :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-uicolorpalette.html#cfn-quicksight-theme-uicolorpalette-secondarybackground>
                            secondaryBackground :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-uicolorpalette.html#cfn-quicksight-theme-uicolorpalette-secondaryforeground>
                            secondaryForeground :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-uicolorpalette.html#cfn-quicksight-theme-uicolorpalette-success>
                            success :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-uicolorpalette.html#cfn-quicksight-theme-uicolorpalette-successforeground>
                            successForeground :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-uicolorpalette.html#cfn-quicksight-theme-uicolorpalette-warning>
                            warning :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-uicolorpalette.html#cfn-quicksight-theme-uicolorpalette-warningforeground>
                            warningForeground :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUIColorPaletteProperty :: UIColorPaletteProperty
mkUIColorPaletteProperty
  = UIColorPaletteProperty
      {haddock_workaround_ = (), accent = Prelude.Nothing,
       accentForeground = Prelude.Nothing, danger = Prelude.Nothing,
       dangerForeground = Prelude.Nothing, dimension = Prelude.Nothing,
       dimensionForeground = Prelude.Nothing, measure = Prelude.Nothing,
       measureForeground = Prelude.Nothing,
       primaryBackground = Prelude.Nothing,
       primaryForeground = Prelude.Nothing,
       secondaryBackground = Prelude.Nothing,
       secondaryForeground = Prelude.Nothing, success = Prelude.Nothing,
       successForeground = Prelude.Nothing, warning = Prelude.Nothing,
       warningForeground = Prelude.Nothing}
instance ToResourceProperties UIColorPaletteProperty where
  toResourceProperties UIColorPaletteProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Theme.UIColorPalette",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Accent" Prelude.<$> accent,
                            (JSON..=) "AccentForeground" Prelude.<$> accentForeground,
                            (JSON..=) "Danger" Prelude.<$> danger,
                            (JSON..=) "DangerForeground" Prelude.<$> dangerForeground,
                            (JSON..=) "Dimension" Prelude.<$> dimension,
                            (JSON..=) "DimensionForeground" Prelude.<$> dimensionForeground,
                            (JSON..=) "Measure" Prelude.<$> measure,
                            (JSON..=) "MeasureForeground" Prelude.<$> measureForeground,
                            (JSON..=) "PrimaryBackground" Prelude.<$> primaryBackground,
                            (JSON..=) "PrimaryForeground" Prelude.<$> primaryForeground,
                            (JSON..=) "SecondaryBackground" Prelude.<$> secondaryBackground,
                            (JSON..=) "SecondaryForeground" Prelude.<$> secondaryForeground,
                            (JSON..=) "Success" Prelude.<$> success,
                            (JSON..=) "SuccessForeground" Prelude.<$> successForeground,
                            (JSON..=) "Warning" Prelude.<$> warning,
                            (JSON..=) "WarningForeground" Prelude.<$> warningForeground])}
instance JSON.ToJSON UIColorPaletteProperty where
  toJSON UIColorPaletteProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Accent" Prelude.<$> accent,
               (JSON..=) "AccentForeground" Prelude.<$> accentForeground,
               (JSON..=) "Danger" Prelude.<$> danger,
               (JSON..=) "DangerForeground" Prelude.<$> dangerForeground,
               (JSON..=) "Dimension" Prelude.<$> dimension,
               (JSON..=) "DimensionForeground" Prelude.<$> dimensionForeground,
               (JSON..=) "Measure" Prelude.<$> measure,
               (JSON..=) "MeasureForeground" Prelude.<$> measureForeground,
               (JSON..=) "PrimaryBackground" Prelude.<$> primaryBackground,
               (JSON..=) "PrimaryForeground" Prelude.<$> primaryForeground,
               (JSON..=) "SecondaryBackground" Prelude.<$> secondaryBackground,
               (JSON..=) "SecondaryForeground" Prelude.<$> secondaryForeground,
               (JSON..=) "Success" Prelude.<$> success,
               (JSON..=) "SuccessForeground" Prelude.<$> successForeground,
               (JSON..=) "Warning" Prelude.<$> warning,
               (JSON..=) "WarningForeground" Prelude.<$> warningForeground]))
instance Property "Accent" UIColorPaletteProperty where
  type PropertyType "Accent" UIColorPaletteProperty = Value Prelude.Text
  set newValue UIColorPaletteProperty {..}
    = UIColorPaletteProperty {accent = Prelude.pure newValue, ..}
instance Property "AccentForeground" UIColorPaletteProperty where
  type PropertyType "AccentForeground" UIColorPaletteProperty = Value Prelude.Text
  set newValue UIColorPaletteProperty {..}
    = UIColorPaletteProperty
        {accentForeground = Prelude.pure newValue, ..}
instance Property "Danger" UIColorPaletteProperty where
  type PropertyType "Danger" UIColorPaletteProperty = Value Prelude.Text
  set newValue UIColorPaletteProperty {..}
    = UIColorPaletteProperty {danger = Prelude.pure newValue, ..}
instance Property "DangerForeground" UIColorPaletteProperty where
  type PropertyType "DangerForeground" UIColorPaletteProperty = Value Prelude.Text
  set newValue UIColorPaletteProperty {..}
    = UIColorPaletteProperty
        {dangerForeground = Prelude.pure newValue, ..}
instance Property "Dimension" UIColorPaletteProperty where
  type PropertyType "Dimension" UIColorPaletteProperty = Value Prelude.Text
  set newValue UIColorPaletteProperty {..}
    = UIColorPaletteProperty {dimension = Prelude.pure newValue, ..}
instance Property "DimensionForeground" UIColorPaletteProperty where
  type PropertyType "DimensionForeground" UIColorPaletteProperty = Value Prelude.Text
  set newValue UIColorPaletteProperty {..}
    = UIColorPaletteProperty
        {dimensionForeground = Prelude.pure newValue, ..}
instance Property "Measure" UIColorPaletteProperty where
  type PropertyType "Measure" UIColorPaletteProperty = Value Prelude.Text
  set newValue UIColorPaletteProperty {..}
    = UIColorPaletteProperty {measure = Prelude.pure newValue, ..}
instance Property "MeasureForeground" UIColorPaletteProperty where
  type PropertyType "MeasureForeground" UIColorPaletteProperty = Value Prelude.Text
  set newValue UIColorPaletteProperty {..}
    = UIColorPaletteProperty
        {measureForeground = Prelude.pure newValue, ..}
instance Property "PrimaryBackground" UIColorPaletteProperty where
  type PropertyType "PrimaryBackground" UIColorPaletteProperty = Value Prelude.Text
  set newValue UIColorPaletteProperty {..}
    = UIColorPaletteProperty
        {primaryBackground = Prelude.pure newValue, ..}
instance Property "PrimaryForeground" UIColorPaletteProperty where
  type PropertyType "PrimaryForeground" UIColorPaletteProperty = Value Prelude.Text
  set newValue UIColorPaletteProperty {..}
    = UIColorPaletteProperty
        {primaryForeground = Prelude.pure newValue, ..}
instance Property "SecondaryBackground" UIColorPaletteProperty where
  type PropertyType "SecondaryBackground" UIColorPaletteProperty = Value Prelude.Text
  set newValue UIColorPaletteProperty {..}
    = UIColorPaletteProperty
        {secondaryBackground = Prelude.pure newValue, ..}
instance Property "SecondaryForeground" UIColorPaletteProperty where
  type PropertyType "SecondaryForeground" UIColorPaletteProperty = Value Prelude.Text
  set newValue UIColorPaletteProperty {..}
    = UIColorPaletteProperty
        {secondaryForeground = Prelude.pure newValue, ..}
instance Property "Success" UIColorPaletteProperty where
  type PropertyType "Success" UIColorPaletteProperty = Value Prelude.Text
  set newValue UIColorPaletteProperty {..}
    = UIColorPaletteProperty {success = Prelude.pure newValue, ..}
instance Property "SuccessForeground" UIColorPaletteProperty where
  type PropertyType "SuccessForeground" UIColorPaletteProperty = Value Prelude.Text
  set newValue UIColorPaletteProperty {..}
    = UIColorPaletteProperty
        {successForeground = Prelude.pure newValue, ..}
instance Property "Warning" UIColorPaletteProperty where
  type PropertyType "Warning" UIColorPaletteProperty = Value Prelude.Text
  set newValue UIColorPaletteProperty {..}
    = UIColorPaletteProperty {warning = Prelude.pure newValue, ..}
instance Property "WarningForeground" UIColorPaletteProperty where
  type PropertyType "WarningForeground" UIColorPaletteProperty = Value Prelude.Text
  set newValue UIColorPaletteProperty {..}
    = UIColorPaletteProperty
        {warningForeground = Prelude.pure newValue, ..}