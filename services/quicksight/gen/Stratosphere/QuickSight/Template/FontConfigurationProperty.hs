module Stratosphere.QuickSight.Template.FontConfigurationProperty (
        module Exports, FontConfigurationProperty(..),
        mkFontConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FontSizeProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FontWeightProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FontConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-fontconfiguration.html>
    FontConfigurationProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-fontconfiguration.html#cfn-quicksight-template-fontconfiguration-fontcolor>
                               fontColor :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-fontconfiguration.html#cfn-quicksight-template-fontconfiguration-fontdecoration>
                               fontDecoration :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-fontconfiguration.html#cfn-quicksight-template-fontconfiguration-fontfamily>
                               fontFamily :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-fontconfiguration.html#cfn-quicksight-template-fontconfiguration-fontsize>
                               fontSize :: (Prelude.Maybe FontSizeProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-fontconfiguration.html#cfn-quicksight-template-fontconfiguration-fontstyle>
                               fontStyle :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-fontconfiguration.html#cfn-quicksight-template-fontconfiguration-fontweight>
                               fontWeight :: (Prelude.Maybe FontWeightProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFontConfigurationProperty :: FontConfigurationProperty
mkFontConfigurationProperty
  = FontConfigurationProperty
      {haddock_workaround_ = (), fontColor = Prelude.Nothing,
       fontDecoration = Prelude.Nothing, fontFamily = Prelude.Nothing,
       fontSize = Prelude.Nothing, fontStyle = Prelude.Nothing,
       fontWeight = Prelude.Nothing}
instance ToResourceProperties FontConfigurationProperty where
  toResourceProperties FontConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.FontConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FontColor" Prelude.<$> fontColor,
                            (JSON..=) "FontDecoration" Prelude.<$> fontDecoration,
                            (JSON..=) "FontFamily" Prelude.<$> fontFamily,
                            (JSON..=) "FontSize" Prelude.<$> fontSize,
                            (JSON..=) "FontStyle" Prelude.<$> fontStyle,
                            (JSON..=) "FontWeight" Prelude.<$> fontWeight])}
instance JSON.ToJSON FontConfigurationProperty where
  toJSON FontConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FontColor" Prelude.<$> fontColor,
               (JSON..=) "FontDecoration" Prelude.<$> fontDecoration,
               (JSON..=) "FontFamily" Prelude.<$> fontFamily,
               (JSON..=) "FontSize" Prelude.<$> fontSize,
               (JSON..=) "FontStyle" Prelude.<$> fontStyle,
               (JSON..=) "FontWeight" Prelude.<$> fontWeight]))
instance Property "FontColor" FontConfigurationProperty where
  type PropertyType "FontColor" FontConfigurationProperty = Value Prelude.Text
  set newValue FontConfigurationProperty {..}
    = FontConfigurationProperty {fontColor = Prelude.pure newValue, ..}
instance Property "FontDecoration" FontConfigurationProperty where
  type PropertyType "FontDecoration" FontConfigurationProperty = Value Prelude.Text
  set newValue FontConfigurationProperty {..}
    = FontConfigurationProperty
        {fontDecoration = Prelude.pure newValue, ..}
instance Property "FontFamily" FontConfigurationProperty where
  type PropertyType "FontFamily" FontConfigurationProperty = Value Prelude.Text
  set newValue FontConfigurationProperty {..}
    = FontConfigurationProperty
        {fontFamily = Prelude.pure newValue, ..}
instance Property "FontSize" FontConfigurationProperty where
  type PropertyType "FontSize" FontConfigurationProperty = FontSizeProperty
  set newValue FontConfigurationProperty {..}
    = FontConfigurationProperty {fontSize = Prelude.pure newValue, ..}
instance Property "FontStyle" FontConfigurationProperty where
  type PropertyType "FontStyle" FontConfigurationProperty = Value Prelude.Text
  set newValue FontConfigurationProperty {..}
    = FontConfigurationProperty {fontStyle = Prelude.pure newValue, ..}
instance Property "FontWeight" FontConfigurationProperty where
  type PropertyType "FontWeight" FontConfigurationProperty = FontWeightProperty
  set newValue FontConfigurationProperty {..}
    = FontConfigurationProperty
        {fontWeight = Prelude.pure newValue, ..}