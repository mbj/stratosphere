module Stratosphere.Pinpoint.Campaign.DefaultButtonConfigurationProperty (
        DefaultButtonConfigurationProperty(..),
        mkDefaultButtonConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DefaultButtonConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-defaultbuttonconfiguration.html>
    DefaultButtonConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-defaultbuttonconfiguration.html#cfn-pinpoint-campaign-defaultbuttonconfiguration-backgroundcolor>
                                        backgroundColor :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-defaultbuttonconfiguration.html#cfn-pinpoint-campaign-defaultbuttonconfiguration-borderradius>
                                        borderRadius :: (Prelude.Maybe (Value Prelude.Integer)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-defaultbuttonconfiguration.html#cfn-pinpoint-campaign-defaultbuttonconfiguration-buttonaction>
                                        buttonAction :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-defaultbuttonconfiguration.html#cfn-pinpoint-campaign-defaultbuttonconfiguration-link>
                                        link :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-defaultbuttonconfiguration.html#cfn-pinpoint-campaign-defaultbuttonconfiguration-text>
                                        text :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-defaultbuttonconfiguration.html#cfn-pinpoint-campaign-defaultbuttonconfiguration-textcolor>
                                        textColor :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultButtonConfigurationProperty ::
  DefaultButtonConfigurationProperty
mkDefaultButtonConfigurationProperty
  = DefaultButtonConfigurationProperty
      {haddock_workaround_ = (), backgroundColor = Prelude.Nothing,
       borderRadius = Prelude.Nothing, buttonAction = Prelude.Nothing,
       link = Prelude.Nothing, text = Prelude.Nothing,
       textColor = Prelude.Nothing}
instance ToResourceProperties DefaultButtonConfigurationProperty where
  toResourceProperties DefaultButtonConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Campaign.DefaultButtonConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BackgroundColor" Prelude.<$> backgroundColor,
                            (JSON..=) "BorderRadius" Prelude.<$> borderRadius,
                            (JSON..=) "ButtonAction" Prelude.<$> buttonAction,
                            (JSON..=) "Link" Prelude.<$> link,
                            (JSON..=) "Text" Prelude.<$> text,
                            (JSON..=) "TextColor" Prelude.<$> textColor])}
instance JSON.ToJSON DefaultButtonConfigurationProperty where
  toJSON DefaultButtonConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BackgroundColor" Prelude.<$> backgroundColor,
               (JSON..=) "BorderRadius" Prelude.<$> borderRadius,
               (JSON..=) "ButtonAction" Prelude.<$> buttonAction,
               (JSON..=) "Link" Prelude.<$> link,
               (JSON..=) "Text" Prelude.<$> text,
               (JSON..=) "TextColor" Prelude.<$> textColor]))
instance Property "BackgroundColor" DefaultButtonConfigurationProperty where
  type PropertyType "BackgroundColor" DefaultButtonConfigurationProperty = Value Prelude.Text
  set newValue DefaultButtonConfigurationProperty {..}
    = DefaultButtonConfigurationProperty
        {backgroundColor = Prelude.pure newValue, ..}
instance Property "BorderRadius" DefaultButtonConfigurationProperty where
  type PropertyType "BorderRadius" DefaultButtonConfigurationProperty = Value Prelude.Integer
  set newValue DefaultButtonConfigurationProperty {..}
    = DefaultButtonConfigurationProperty
        {borderRadius = Prelude.pure newValue, ..}
instance Property "ButtonAction" DefaultButtonConfigurationProperty where
  type PropertyType "ButtonAction" DefaultButtonConfigurationProperty = Value Prelude.Text
  set newValue DefaultButtonConfigurationProperty {..}
    = DefaultButtonConfigurationProperty
        {buttonAction = Prelude.pure newValue, ..}
instance Property "Link" DefaultButtonConfigurationProperty where
  type PropertyType "Link" DefaultButtonConfigurationProperty = Value Prelude.Text
  set newValue DefaultButtonConfigurationProperty {..}
    = DefaultButtonConfigurationProperty
        {link = Prelude.pure newValue, ..}
instance Property "Text" DefaultButtonConfigurationProperty where
  type PropertyType "Text" DefaultButtonConfigurationProperty = Value Prelude.Text
  set newValue DefaultButtonConfigurationProperty {..}
    = DefaultButtonConfigurationProperty
        {text = Prelude.pure newValue, ..}
instance Property "TextColor" DefaultButtonConfigurationProperty where
  type PropertyType "TextColor" DefaultButtonConfigurationProperty = Value Prelude.Text
  set newValue DefaultButtonConfigurationProperty {..}
    = DefaultButtonConfigurationProperty
        {textColor = Prelude.pure newValue, ..}