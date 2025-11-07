module Stratosphere.QuickSight.Template.ReferenceLineLabelConfigurationProperty (
        module Exports, ReferenceLineLabelConfigurationProperty(..),
        mkReferenceLineLabelConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FontConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ReferenceLineCustomLabelConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ReferenceLineValueLabelConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReferenceLineLabelConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-referencelinelabelconfiguration.html>
    ReferenceLineLabelConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-referencelinelabelconfiguration.html#cfn-quicksight-template-referencelinelabelconfiguration-customlabelconfiguration>
                                             customLabelConfiguration :: (Prelude.Maybe ReferenceLineCustomLabelConfigurationProperty),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-referencelinelabelconfiguration.html#cfn-quicksight-template-referencelinelabelconfiguration-fontcolor>
                                             fontColor :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-referencelinelabelconfiguration.html#cfn-quicksight-template-referencelinelabelconfiguration-fontconfiguration>
                                             fontConfiguration :: (Prelude.Maybe FontConfigurationProperty),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-referencelinelabelconfiguration.html#cfn-quicksight-template-referencelinelabelconfiguration-horizontalposition>
                                             horizontalPosition :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-referencelinelabelconfiguration.html#cfn-quicksight-template-referencelinelabelconfiguration-valuelabelconfiguration>
                                             valueLabelConfiguration :: (Prelude.Maybe ReferenceLineValueLabelConfigurationProperty),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-referencelinelabelconfiguration.html#cfn-quicksight-template-referencelinelabelconfiguration-verticalposition>
                                             verticalPosition :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReferenceLineLabelConfigurationProperty ::
  ReferenceLineLabelConfigurationProperty
mkReferenceLineLabelConfigurationProperty
  = ReferenceLineLabelConfigurationProperty
      {haddock_workaround_ = (),
       customLabelConfiguration = Prelude.Nothing,
       fontColor = Prelude.Nothing, fontConfiguration = Prelude.Nothing,
       horizontalPosition = Prelude.Nothing,
       valueLabelConfiguration = Prelude.Nothing,
       verticalPosition = Prelude.Nothing}
instance ToResourceProperties ReferenceLineLabelConfigurationProperty where
  toResourceProperties ReferenceLineLabelConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ReferenceLineLabelConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomLabelConfiguration"
                              Prelude.<$> customLabelConfiguration,
                            (JSON..=) "FontColor" Prelude.<$> fontColor,
                            (JSON..=) "FontConfiguration" Prelude.<$> fontConfiguration,
                            (JSON..=) "HorizontalPosition" Prelude.<$> horizontalPosition,
                            (JSON..=) "ValueLabelConfiguration"
                              Prelude.<$> valueLabelConfiguration,
                            (JSON..=) "VerticalPosition" Prelude.<$> verticalPosition])}
instance JSON.ToJSON ReferenceLineLabelConfigurationProperty where
  toJSON ReferenceLineLabelConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomLabelConfiguration"
                 Prelude.<$> customLabelConfiguration,
               (JSON..=) "FontColor" Prelude.<$> fontColor,
               (JSON..=) "FontConfiguration" Prelude.<$> fontConfiguration,
               (JSON..=) "HorizontalPosition" Prelude.<$> horizontalPosition,
               (JSON..=) "ValueLabelConfiguration"
                 Prelude.<$> valueLabelConfiguration,
               (JSON..=) "VerticalPosition" Prelude.<$> verticalPosition]))
instance Property "CustomLabelConfiguration" ReferenceLineLabelConfigurationProperty where
  type PropertyType "CustomLabelConfiguration" ReferenceLineLabelConfigurationProperty = ReferenceLineCustomLabelConfigurationProperty
  set newValue ReferenceLineLabelConfigurationProperty {..}
    = ReferenceLineLabelConfigurationProperty
        {customLabelConfiguration = Prelude.pure newValue, ..}
instance Property "FontColor" ReferenceLineLabelConfigurationProperty where
  type PropertyType "FontColor" ReferenceLineLabelConfigurationProperty = Value Prelude.Text
  set newValue ReferenceLineLabelConfigurationProperty {..}
    = ReferenceLineLabelConfigurationProperty
        {fontColor = Prelude.pure newValue, ..}
instance Property "FontConfiguration" ReferenceLineLabelConfigurationProperty where
  type PropertyType "FontConfiguration" ReferenceLineLabelConfigurationProperty = FontConfigurationProperty
  set newValue ReferenceLineLabelConfigurationProperty {..}
    = ReferenceLineLabelConfigurationProperty
        {fontConfiguration = Prelude.pure newValue, ..}
instance Property "HorizontalPosition" ReferenceLineLabelConfigurationProperty where
  type PropertyType "HorizontalPosition" ReferenceLineLabelConfigurationProperty = Value Prelude.Text
  set newValue ReferenceLineLabelConfigurationProperty {..}
    = ReferenceLineLabelConfigurationProperty
        {horizontalPosition = Prelude.pure newValue, ..}
instance Property "ValueLabelConfiguration" ReferenceLineLabelConfigurationProperty where
  type PropertyType "ValueLabelConfiguration" ReferenceLineLabelConfigurationProperty = ReferenceLineValueLabelConfigurationProperty
  set newValue ReferenceLineLabelConfigurationProperty {..}
    = ReferenceLineLabelConfigurationProperty
        {valueLabelConfiguration = Prelude.pure newValue, ..}
instance Property "VerticalPosition" ReferenceLineLabelConfigurationProperty where
  type PropertyType "VerticalPosition" ReferenceLineLabelConfigurationProperty = Value Prelude.Text
  set newValue ReferenceLineLabelConfigurationProperty {..}
    = ReferenceLineLabelConfigurationProperty
        {verticalPosition = Prelude.pure newValue, ..}