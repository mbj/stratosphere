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
  = DefaultButtonConfigurationProperty {backgroundColor :: (Prelude.Maybe (Value Prelude.Text)),
                                        borderRadius :: (Prelude.Maybe (Value Prelude.Integer)),
                                        buttonAction :: (Prelude.Maybe (Value Prelude.Text)),
                                        link :: (Prelude.Maybe (Value Prelude.Text)),
                                        text :: (Prelude.Maybe (Value Prelude.Text)),
                                        textColor :: (Prelude.Maybe (Value Prelude.Text))}
mkDefaultButtonConfigurationProperty ::
  DefaultButtonConfigurationProperty
mkDefaultButtonConfigurationProperty
  = DefaultButtonConfigurationProperty
      {backgroundColor = Prelude.Nothing, borderRadius = Prelude.Nothing,
       buttonAction = Prelude.Nothing, link = Prelude.Nothing,
       text = Prelude.Nothing, textColor = Prelude.Nothing}
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