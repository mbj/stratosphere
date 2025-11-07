module Stratosphere.QuickSight.Dashboard.ConditionalFormattingIconDisplayConfigurationProperty (
        ConditionalFormattingIconDisplayConfigurationProperty(..),
        mkConditionalFormattingIconDisplayConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConditionalFormattingIconDisplayConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-conditionalformattingicondisplayconfiguration.html>
    ConditionalFormattingIconDisplayConfigurationProperty {haddock_workaround_ :: (),
                                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-conditionalformattingicondisplayconfiguration.html#cfn-quicksight-dashboard-conditionalformattingicondisplayconfiguration-icondisplayoption>
                                                           iconDisplayOption :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConditionalFormattingIconDisplayConfigurationProperty ::
  ConditionalFormattingIconDisplayConfigurationProperty
mkConditionalFormattingIconDisplayConfigurationProperty
  = ConditionalFormattingIconDisplayConfigurationProperty
      {haddock_workaround_ = (), iconDisplayOption = Prelude.Nothing}
instance ToResourceProperties ConditionalFormattingIconDisplayConfigurationProperty where
  toResourceProperties
    ConditionalFormattingIconDisplayConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ConditionalFormattingIconDisplayConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IconDisplayOption" Prelude.<$> iconDisplayOption])}
instance JSON.ToJSON ConditionalFormattingIconDisplayConfigurationProperty where
  toJSON ConditionalFormattingIconDisplayConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IconDisplayOption" Prelude.<$> iconDisplayOption]))
instance Property "IconDisplayOption" ConditionalFormattingIconDisplayConfigurationProperty where
  type PropertyType "IconDisplayOption" ConditionalFormattingIconDisplayConfigurationProperty = Value Prelude.Text
  set
    newValue
    ConditionalFormattingIconDisplayConfigurationProperty {..}
    = ConditionalFormattingIconDisplayConfigurationProperty
        {iconDisplayOption = Prelude.pure newValue, ..}